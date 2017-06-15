class Account

attr_accessor :name, :balance

  def initialize(obj)
    @name=obj.name
    @test="variable in class B"
    @owner=obj
    @balance=0
  end

    def deposit(amount)
      @balance+=amount
    end

end


class Person

  attr_accessor :account, :cash, :name

  def initialize
    @name="Jonas"
    @cash = 1000
  end

  def create_account
    @account = Account.new(self)
  end

    def deposit_to_account(amount)
      account.deposit(amount)
      @cash-=amount
    end

end



puts "Create a new person: "
puts test_person = Person.new
puts ""
puts "Person is named " + test_person.name
puts ""
puts "Cash: " + test_person.cash.to_s
puts ""
puts "Person is getting an account: "
puts test_person.create_account
puts ""
puts "Cash: " + test_person.cash.to_s
puts "Account balance: " + test_person.account.balance.to_s
puts ""
puts "Person is deposits 500 to account "
test_person.deposit_to_account(500)
puts ""
puts "Cash: " + test_person.cash.to_s
puts "Account balance: " + test_person.account.balance.to_s
