class Question

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def question
    puts "What does #{@num1} plus #{@num2} equal?"

    print "> "
    @answer = $stdin.gets.chomp
  end

  def answer

    if @answer == "#{@num1 + @num2}"
      puts "YES! You are correct."
      @num1 = rand(1...20)
      @num2 = rand(1...20)
      true
    else
      puts "Seriously? No!"
      @num1 = rand(1...20)
      @num2 = rand(1...20)
      false
    end

  end

end