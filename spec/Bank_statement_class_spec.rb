require 'Bank_statement_class'

describe Bank_statement do

let (:statement) {Bank_statement.new}

it 'prints bank account transaction history initially with an empty array' do
  expect(subject.print_statement).to eq []
end


end
