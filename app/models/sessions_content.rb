class SessionsContent < ApplicationRecord
  belongs_to :content
  belongs_to :session
end
