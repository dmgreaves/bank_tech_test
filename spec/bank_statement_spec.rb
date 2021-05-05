require 'bank_statement'

describe Bank_statement do

let (:statement) {Bank_statement.new}

it 'prints bank account transaction balance history initially with an array with 0 balance' do
  expect(subject.print_transaction_history).to eq [0]
end

it 'prints bank account last transaction and balance adjustment after deposit of 100' do
  account = Bank_account.new
  account.deposit(100)
  expect(account.transaction_history).to eq [100, 0]
  expect(account.current_balance).to eq 100
end

it 'prints bank account last transaction and balance adjustment after withdrawal of 100' do
  account = Bank_account.new
  account.deposit(500)
  account.withdraw(100)
  expect(account.transaction_history).to eq [-100, 500, 0]
  expect(account.current_balance).to eq 400
end

it 'expects transaction history to display the most recent transaction first' do
  account = Bank_account.new
  account.deposit(1000)
  account.deposit(500)
  account.withdraw(250)
  account.withdraw(750)
  expect(account.transaction_history).to eq [-750, -250, 500, 1000, 0]
end


end
