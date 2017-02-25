class Json < ApplicationRecord
  before_create :set_key
  
  private
    def set_key
      self.key = SecureRandom.uuid
    end
end
