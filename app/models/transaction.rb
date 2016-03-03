require 'active_record'
class Transaction < ActiveRecord::Base
scope :current_month, -> { where(created_at: Time.now.beginning_of_month..Time.now.end_of_month) }
  def self.balance
    balance = self.all.reduce(0.0) {|t, q| t + q.amount.to_f }
  end

  def self.total_transactions
    self.count
  end
end
