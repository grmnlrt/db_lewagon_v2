class DbSchemaPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    record.user == user
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    current_user_is_owner?
  end

  def edit?
    update?
  end

  def destroy?
    current_user_is_owner?
  end

  private

  def current_user_is_owner?
    record.user == user
  end
end
