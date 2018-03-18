class TodoList < ApplicationRecord
  has_many :statuses
  has_many :todos, through: :statuses

  after_create :create_default_statuses

  DEFAULT_STATUSES = ['todo', 'progress', 'done']

  def create_default_statuses
    DEFAULT_STATUSES.each do |status|
      statuses << Status.create(name: status)
    end
  end
end
