class DashboardController < ApplicationController
  def show
    @transactions = Transaction.all

    # @balance = Transaction.balance
    # @transactions = Transaction.total_transactions
    # # @current_month_transactions = Transaction.current_month.count
    # @tranceaction = Transaction
  end
end
