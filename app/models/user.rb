class User < ActiveRecord::Base
  rolify

  default_scope -> { order created_at: :desc }
end
