require 'bank_tech_test'

describe Bank_account do
  it 'Returns the new account balance with an initial balance of 0' do
    expect(Bank_account.new.balance).to eq 0
  end

  it 'accepts deposits and adds the deposit to the account balance' do
    account = Bank_account.new
    account.add(100)
    expect(account.balance).to eq 100
  end
end
