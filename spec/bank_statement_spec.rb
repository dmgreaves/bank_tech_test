require 'bank_statement'

describe Bank_statement do

let (:statement) {Bank_statement.new}

it 'prints bank account transaction balance history initially with an array with 0 balance' do
  expect(subject.print_statement).to eq [0]
end




end
