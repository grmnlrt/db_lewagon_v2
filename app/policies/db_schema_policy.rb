class DbSchemaPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    true
  end

  def edit?
    update?
  end
end