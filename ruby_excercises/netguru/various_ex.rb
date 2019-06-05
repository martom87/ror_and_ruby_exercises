class VariousEx

  def is_palidrome(word)
    if word == word.reverse
      puts 'is palidrome'
    else
      put 'is not'
    end
  end

end



various_ex = VariousEx.new

various_ex.isPalidrome('level')