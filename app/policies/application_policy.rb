class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    scope.where(id: record.id).exists?
  end

  def create?
    role_in? %w(admin)
  end

  def new?
    create?
  end

  def update?
    role_in? %w(admin)
  end

  def edit?
    update?
  end

  def destroy?
    role_in? %w(admin)
  end



  def scope
    Pundit.policy_scope!(user, record.class)
  end

  def role_in?(roles)
    roles.include? user.role
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end

    def role_in?(roles)
      roles.include? user.role
    end
  end
end
