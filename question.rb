class Question

  def question
    num1 = rand(1...20)
    num2 = rand(1...20)
    puts "What does #{num1} plus #{num2} equal?"

    print "> "
    answer = $stdin.gets.chomp

    if answer == "#{num1 + num2}"
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
    end

  end

end