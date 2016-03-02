require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  test "class exists" do
    assert Transaction
  end

  test "get balance" do
    assert_equal -200, Transaction.balance
  end
end
