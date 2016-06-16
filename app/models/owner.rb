class Owner < ActiveRecord::Base
  # TODO: add validations
  validates :first_name, :last_name, :email, presence: true, uniqueness: true, length: {maximum: 255}

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  # , errors.add(:email, "must contain @")
  # before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
