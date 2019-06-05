

  class String
    def to_hash(arr_sep=' ')
      array = self.split(arr_sep)
      hash = Hash[array.each_slice(2).to_a]
      return hash
    end
  end





  puts  '/help_page/1 126.318.035.038
/contact 184.123.665.067
/home 184.123.665.067'.to_hash



