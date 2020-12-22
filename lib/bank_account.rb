class BankAccount
    attr_reader :name #method is unable to be changed
    attr_accessor :balance, :status, :account_hash

    def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    end

    def deposit(deposit_amount)
        @balance += deposit_amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if status == "open" && balance > 0
            true
        else
            false
        end
    end

    def close_account
       @status = "closed"
    end

end
