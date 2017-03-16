class Client < ApplicationRecord
  has_many :receipts
  belongs_to :membership
  belongs_to :user
  accepts_nested_attributes_for :receipts
  

  #after_create :save_receipt
  #after_create :send_mail

  def f_pago=(f_pago)
    @f_pago = f_pago
  end
  def societyId=(id)
    @society_id=id
  end
  def valor=(value)
    @valor = value
  end
  def soporte=(support)
    @support = support
  end
  def sed_mail
    @s = Society.find(params[:self.society_id])
    SocietyMailer.new_society(@s).deliver_later
  end
end
