class ChangePhoneNumberDataType < ActiveRecord::Migration[7.0]
  def change
    change_column(:grandparents, :phone_number, :string)
  end
end
