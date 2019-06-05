require 'csv'
class Parser

  def initialize (path)
    @input = CSV.read(path).to_s
  end


  def all_views
    array = @input.split(' ')
    urls = Hash[array.each_slice(2).to_a]
    urls_array = []

    urls.each do |key, value|
      urls_array << key
      value
    end

    pairs = array.each_slice(2).to_a
    # unique_pairs = pairs.uniq
    joint_pairs = pairs.flatten

    urls_multiplicates = joint_pairs.select {|x| joint_pairs.index(x) % 2 == 0}

    counts = Hash.new(0)
    urls_multiplicates.each {|url| counts[url] += 1}

    sorted_counts = counts.sort_by {|key, value| -value}

    output_arr = []

    sorted_counts.each do |key, value|
      output_arr << "#{key} #{value}  views"
    end


    result = output_arr.join(' ')

    return result

  end

  def unique_views

    array = @input.split(' ')
    urls = Hash[array.each_slice(2).to_a]
    urls_array = []

    urls.each do |key, value|
      urls_array << key
      value
    end

    pairs = array.each_slice(2).to_a
    unique_pairs = pairs.uniq
    joint_pairs = unique_pairs.flatten

    urls_multiplicates = joint_pairs.select {|x| joint_pairs.index(x) % 2 == 0}

    counts = Hash.new(0)
    urls_multiplicates.each {|url| counts[url] += 1}

    sorted_counts = counts.sort_by {|key, value| -value}


    output_arr = []

    sorted_counts.each do |key, value|
      output_arr << "#{key} #{value} unique views"
    end

    result = output_arr.join(' ')





    return    result.gsub("[", "")

  end


end


parser = Parser.new("log")

p parser.all_views
p parser.unique_views


