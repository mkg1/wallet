class DashboardController < ApplicationController
  def show
    @balance = Transaction.balance
    @transactions = Transaction.total_transactions
  end
end
