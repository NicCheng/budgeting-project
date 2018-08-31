class Transaction
  attr_reader :created_at, :noticed_at, :occured_at, :amount, :description, :ref

  def initialize(created_at: Time.now, noticed_at:, occured_at: nil, amount:, description:, ref: nil)
    @created_at = created_at
    @noticed_at = noticed_at
    @occured_at = occured_at
    @amount = amount
    @description = description
    @ref = ref
  end
end
