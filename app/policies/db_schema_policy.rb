class DbSchemaPolicy < ApplicationPolicy
  def show?
    current_user_is_owner? || current_user_is_collaborator
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

  def current_user_is_collaborator
    record.sharings.map(&:user).include?(user)
  end
end
