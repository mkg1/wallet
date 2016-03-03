require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  test "class exists" do
    assert Transaction
  end

  test "get balance" do
    assert_equal -190, Transaction.balance
  end

  test "get total number of transactions" do
      assert_equal 3, Transaction.total_transactions
  end

  test "get current month total" do
    assert_equal -190, Transaction.current_month_total
  end

  test "get previous month total" do
    assert_equal 0, Transaction.previous_month_total
  end

  test "get biggest monthly expense" do
      assert_equal 20, Transaction.biggest_monthly_expense
  end

  test "get biggest expense ever" do
      assert_equal 20, Transaction.biggest_expense_ever
  end

  test "where most money is spent" do
      assert_equal "MyText2", Transaction.biggest_monthly_expense
  end
end
