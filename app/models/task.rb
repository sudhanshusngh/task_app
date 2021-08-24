class Task < ApplicationRecord

  USER = []
  @users = User.all
  @users.each do |user|
    USER.push(user.email)
  end

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'complete']
  ]
end
