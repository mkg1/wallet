require 'active_record'
class Transaction < ActiveRecord::Base

  def self.balance
    balance = self.all.reduce(0.0) {|t, q| t + q.amount.to_f }

    # array.reduce:+
    # array.reduce(0) {|t, q| t + q}
  end

end
