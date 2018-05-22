class Question

  def initialize
    @num_a = rand(1..20)
    @num_b = rand(1..20)
    @total = @num_a + @num_b
  end

  def each_q(player)
    puts "#{player.name}: What does #{@num_a} plus #{@num_b} euqal?"
    ans = gets.chomp
    if ans.to_f == @total
      puts "#{player.name}: That's the correct answer!"
      return true
    else
      puts "#{player.name}: That's incorrect, the answer should be #{@total}"
      return false
    end

  end

end
