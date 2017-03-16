class Receipt < ApplicationRecord
  belongs_to :client
  belongs_to :forma_de_pago
  belongs_to :membership
  belongs_to :user
  has_many :details
  #has_many :details
 # has_attached_file :soporte, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type :soporte, content_type: /\Aimage\/.*\z/

end
