class Address < ApplicationRecord
  validates :street_num, presence: true
  validates :street, presence: true
  validates :suburb, presence: true
  validates :postcode, presence: true
  has_one :event, dependent: :destroy

  def full_name
    # 123 Street Road, Brisbane 4000
    return "#{street_num} #{street}, #{suburb} #{postcode}"
  end

  # validate :check_date_is_not_before

  # def check_date_is_not_before
  #   # return false if :date < Date.now
  # end

end
