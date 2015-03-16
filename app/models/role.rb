#  __________         _____________         _________         __________
# |          |       |             |       |         |       |          |
# |   User   |___    | users_roles |    ___|  Role   |_______|  School  |
# |          | 1 |   |             |   | 1 |         | n   1 |          |
# |__________|   |   |_____________|   |   |_________|       |__________|
#                |   |             |   |
#                |   |   role_id   |___|
#                |   |_____________| n
#                |   |             |
#                |___|   user_id   |
#                  n |_____________|
#                       join table
#

class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, join_table: :users_roles
  belongs_to :resource, polymorphic: true

  scopify

  NAMES = %w(head_teacher teacher student driver)
end
