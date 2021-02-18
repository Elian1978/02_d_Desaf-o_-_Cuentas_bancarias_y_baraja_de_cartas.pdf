require_relative 'account'

class User
    attr_accessor

    def initialize(name, accounts)
        @name = name
        @accounts = accounts
    end

    def total_balance
        partial_balances = @accounusets.map { |account| account.balance}
        partial_balances.sum
    end
end