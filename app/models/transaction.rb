require 'active_record'
class Transaction < ActiveRecord::Base
  scope :current_month, -> { where(created_at: Time.now.beginning_of_month..Time.now.end_of_month) }
  scope :previous_month, -> { where(created_at: (Time.now.beginning_of_month - 1.month)..(Time.now.end_of_month - 1.month)) }

  def self.balance
    balance = self.all.reduce(0.0) {|t, q| t + q.amount.to_f }
  end

  def self.total_transactions
    self.count
  end

  def self.current_month_total
    self.current_month.sum(:amount)
  end

  def self.previous_month_total
    self.previous_month.sum(:amount)
  end

  def self.biggest_monthly_expense
    self.current_month.maximum(:amount)
  end

  def self.biggest_expense_ever
    self.maximum(:amount)
  end

  def self.where_most_money_spent
    t = self.select('description, sum(amount) as total_spent').group('description').order('sum(amount) DESC').limit(1)

    t.to_f
  end
end
