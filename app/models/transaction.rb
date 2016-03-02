require 'active_record'
class Transaction < ActiveRecord::Base

  def self.balance
    balance = self.all.reduce(0.0) {|t, q| t + q.amount.to_f }
  end

  def self.total_transactions
    self.count
  end
end
