require 'bank_tech_test'

describe Bank_account do
  it 'Prints the account balance with an initial balance of 0' do
    expect(Bank_account.new.balance).to eq 0
  end
end
