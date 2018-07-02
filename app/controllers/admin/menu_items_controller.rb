module Admin
  class MenuItemsController < Admin::ApplicationController
    include ::TheSortableTreeController::Rebuild
  end
end

