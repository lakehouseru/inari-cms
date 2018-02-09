module Admin
  class GalleriesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    def index
      super
      resource = GalleryAttachment.order(:sort).all
    end
 
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Gallery.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information

    

    def create 
      resource = resource_class.new(resource_params)
      

      if params[:gallery]['image'].nil?

        redirect_to :back , notice: "Нельзя опубликовать галерею без фото! Добавьте фото"
        return
        
      end
      

      if resource.save
      
          params[:gallery]['image'].each do |a|
            @gallery_attachments = resource.gallery_attachments.create!(:image => a)
          end

        redirect_to(
          [namespace, resource],
          notice: translate_with_resource("create.success"),
        )
      else
        render :new, locals: {
          page: Administrate::Page::Form.new(dashboard, resource),
        }
      end
       
    end

     def update
     unless params[:gallery]['image'].nil?
        params[:gallery]['image'].each do |a|
          @gallery_attachments = requested_resource.gallery_attachments.create!(:image => a)
        end
      end
      if requested_resource.update(resource_params)
       
        redirect_to(
          [namespace, requested_resource],
          notice: translate_with_resource("update.success"),
        )
      else
        render :edit, locals: {
          page: Administrate::Page::Form.new(dashboard, requested_resource),
        }
      end
    end

    def destroy_attachment
       if GalleryAttachment.find(params[:id]).destroy 
        redirect_back fallback_location: '/admin/galleries' , notice: "Изображение успешно удалено"
      else
        redirect_back fallback_location: '/admin/galleries' , notice: "Ошибка при удалении изображения"
      end
    end

    private

    

    

  end
end
