
class Account
    attr_accessor :balance
    
    def initialize(bank, number, balance=0)
        @bank_name = bank
        @acoount_number = number
        @balance = balance
        end     

        def transfer(amount, account)
            @balance -=amount
            account.balance += amount
        end
    end