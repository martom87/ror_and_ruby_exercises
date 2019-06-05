class Parser

  def initialize (input)
    @input = input
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

    return result

  end


end


input = '/help_page/1 126.318.035.038
/contact 184.123.665.067
/home 184.123.665.067
/about/2 444.701.448.104
/help_page/1 929.398.951.889
/index 444.701.448.104
/help_page/1 722.247.931.582
/about 061.945.150.735
/help_page/1 646.865.545.408
/home 235.313.352.950
/contact 184.123.665.067
/help_page/1 543.910.244.929
/home 316.433.849.805
/about/2 444.701.448.104
/contact 543.910.244.929
/about 126.318.035.038
/about/2 836.973.694.403
/index 316.433.849.805
/index 802.683.925.780
/help_page/1 929.398.951.889
/contact 555.576.836.194
/about/2 184.123.665.067
/home 444.701.448.104
/index 929.398.951.889
/about 235.313.352.950
/contact 200.017.277.774
/about 836.973.694.403
/contact 316.433.849.805
/help_page/1 929.398.951.889
/about/2 382.335.626.855
/home 336.284.013.698
/about 929.398.951.889
/help_page/1 836.973.694.403
/contact 836.973.694.403
/home 444.701.448.104
/about/2 543.910.244.929
/about 715.156.286.412
/contact 184.123.665.067
/home 444.701.448.104
/index 184.123.665.067
/about 336.284.013.698
/home 382.335.626.855
/home 802.683.925.780
/about 715.156.286.412
/about/2 555.576.836.194
/home 451.106.204.921
/about 722.247.931.582
/contact 158.577.775.616
/about 715.156.286.412
/about 897.280.786.156
/home 897.280.786.156
/home 715.156.286.412
/contact 158.577.775.616
/help_page/1 316.433.849.805
/home 836.973.694.403
/contact 836.973.694.403
/help_page/1 184.123.665.067
/home 555.576.836.194
/help_page/1 158.577.775.616
/index 158.577.775.616
/help_page/1 543.910.244.929
/about/2 802.683.925.780
/about/2 200.017.277.774
/about 016.464.657.359
/help_page/1 158.577.775.616
/about 061.945.150.735
/about 802.683.925.780
/about 543.910.244.929
/contact 016.464.657.359
/help_page/1 682.704.613.213
/about 543.910.244.929
/about/2 126.318.035.038
/about/2 451.106.204.921
/help_page/1 929.398.951.889
/contact 682.704.613.213
/help_page/1 217.511.476.080
/about/2 235.313.352.950
/contact 682.704.613.213
/about/2 555.576.836.194
/about 016.464.657.359
/index 897.280.786.156
/about/2 184.123.665.067
/index 555.576.836.194
/home 646.865.545.408
/home 217.511.476.080
/about 316.433.849.805
/about/2 200.017.277.774
/home 715.156.286.412
/index 200.017.277.774
/help_page/1 836.973.694.403
/about/2 836.973.694.403
/about/2 217.511.476.080
/index 158.577.775.616
/home 451.106.204.921
/contact 444.701.448.104
/index 722.247.931.582
/about 235.313.352.950
/home 235.313.352.950
/help_page/1 016.464.657.359
/contact 316.433.849.805
/about 836.973.694.403
/home 235.313.352.950
/help_page/1 451.106.204.921
/index 451.106.204.921
/about 836.973.694.403
/about 451.106.204.921
/about/2 382.335.626.855
/about/2 316.433.849.805
/about 016.464.657.359
/about 555.576.836.194
/about 336.284.013.698
/about/2 184.123.665.067
/contact 802.683.925.780
/index 158.577.775.616
/about/2 061.945.150.735
/contact 682.704.613.213
/home 682.704.613.213
/about/2 715.156.286.412
/help_page/1 897.280.786.156
/about 158.577.775.616
/help_page/1 722.247.931.582
/help_page/1 382.335.626.855
/contact 382.335.626.855
/index 451.106.204.921
/about 061.945.150.735
/about 126.318.035.038
/help_page/1 235.313.352.950
/about/2 543.910.244.929
/about 682.704.613.213
/help_page/1 217.511.476.080
/about/2 184.123.665.067
/index 451.106.204.921
/home 200.017.277.774
/about/2 646.865.545.408
/home 382.335.626.855
/help_page/1 897.280.786.156
/index 217.511.476.080
/contact 184.123.665.067
/about 061.945.150.735
/index 897.280.786.156
/about/2 316.433.849.805
/help_page/1 016.464.657.359
/about 715.156.286.412
/index 929.398.951.889
/home 444.701.448.104
/help_page/1 646.865.545.408
/contact 722.247.931.582
/index 451.106.204.921
/about 722.247.931.582
/help_page/1 184.123.665.067
/about/2 016.464.657.359
/about/2 200.017.277.774
/about/2 543.910.244.929
/help_page/1 444.701.448.104
/index 836.973.694.403
/contact 126.318.035.038
/about/2 444.701.448.104
/contact 336.284.013.698
/help_page/1 722.247.931.582
/contact 722.247.931.582
/home 061.945.150.735
/about/2 016.464.657.359
/contact 382.335.626.855
/contact 451.106.204.921
/home 543.910.244.929
/home 555.576.836.194
/contact 158.577.775.616
/home 722.247.931.582
/contact 158.577.775.616
/help_page/1 451.106.204.921
/index 451.106.204.921
/about/2 016.464.657.359
/home 016.464.657.359
/index 382.335.626.855
/home 897.280.786.156
/about 382.335.626.855
/help_page/1 316.433.849.805
/home 722.247.931.582
/about/2 316.433.849.805
/about/2 897.280.786.156
/about 336.284.013.698
/help_page/1 682.704.613.213
/about/2 682.704.613.213
/contact 158.577.775.616
/index 543.910.244.929
/home 316.433.849.805
/index 158.577.775.616
/index 444.701.448.104
/home 158.577.775.616
/about/2 555.576.836.194
/contact 382.335.626.855
/home 836.973.694.403
/index 126.318.035.038
/home 543.910.244.929
/contact 897.280.786.156
/help_page/1 646.865.545.408
/about 682.704.613.213
/contact 316.433.849.805
/home 451.106.204.921
/about/2 722.247.931.582
/about/2 897.280.786.156
/index 543.910.244.929
/index 722.247.931.582
/about 016.464.657.359
/help_page/1 126.318.035.038
/home 929.398.951.889
/home 382.335.626.855
/home 158.577.775.616
/help_page/1 451.106.204.921
/home 444.701.448.104
/index 929.398.951.889
/index 929.398.951.889
/home 444.701.448.104
/about 897.280.786.156
/about/2 897.280.786.156
/contact 184.123.665.067
/help_page/1 802.683.925.780
/index 126.318.035.038
/about 722.247.931.582
/index 451.106.204.921
/contact 555.576.836.194
/about/2 158.577.775.616
/help_page/1 316.433.849.805
/contact 802.683.925.780
/help_page/1 646.865.545.408
/contact 217.511.476.080
/index 897.280.786.156
/about/2 316.433.849.805
/about/2 016.464.657.359
/help_page/1 382.335.626.855
/home 555.576.836.194
/contact 158.577.775.616
/index 682.704.613.213
/contact 184.123.665.067
/contact 382.335.626.855
/contact 336.284.013.698
/about/2 715.156.286.412
/about 682.704.613.213
/home 336.284.013.698
/index 316.433.849.805
/index 382.335.626.855
/contact 722.247.931.582
/contact 184.123.665.067
/about 836.973.694.403
/contact 061.945.150.735
/about 897.280.786.156
/home 836.973.694.403
/index 126.318.035.038
/contact 543.910.244.929
/home 543.910.244.929
/contact 336.284.013.698
/contact 646.865.545.408
/contact 897.280.786.156
/about/2 061.945.150.735
/about 802.683.925.780
/contact 184.123.665.067
/home 235.313.352.950
/about/2 555.576.836.194
/index 444.701.448.104
/help_page/1 451.106.204.921
/contact 722.247.931.582
/help_page/1 336.284.013.698
/contact 722.247.931.582
/index 444.701.448.104
/about 061.945.150.735
/index 836.973.694.403
/about/2 235.313.352.950
/help_page/1 722.247.931.582
/about/2 184.123.665.067
/index 184.123.665.067
/help_page/1 715.156.286.412
/index 016.464.657.359
/about/2 646.865.545.408
/about 897.280.786.156
/about/2 061.945.150.735
/index 158.577.775.616
/contact 316.433.849.805
/index 158.577.775.616
/about 217.511.476.080
/about 158.577.775.616
/index 158.577.775.616
/help_page/1 555.576.836.194
/home 158.577.775.616
/about 722.247.931.582
/about/2 646.865.545.408
/about 184.123.665.067
/home 235.313.352.950
/home 836.973.694.403
/about 451.106.204.921
/about/2 184.123.665.067
/home 382.335.626.855
/contact 722.247.931.582
/contact 555.576.836.194
/about/2 555.576.836.194
/about/2 200.017.277.774
/help_page/1 158.577.775.616
/contact 316.433.849.805
/contact 722.247.931.582
/contact 451.106.204.921
/contact 235.313.352.950
/about 235.313.352.950
/about 836.973.694.403
/home 444.701.448.104
/contact 184.123.665.067
/about/2 200.017.277.774
/about 646.865.545.408
/about/2 836.973.694.403
/index 543.910.244.929
/index 722.247.931.582
/index 382.335.626.855
/about/2 382.335.626.855
/index 217.511.476.080
/about 682.704.613.213
/index 836.973.694.403
/home 682.704.613.213
/index 235.313.352.950
/about/2 061.945.150.735
/about 543.910.244.929
/contact 158.577.775.616
/about/2 200.017.277.774
/help_page/1 336.284.013.698
/home 200.017.277.774
/home 555.576.836.194
/home 722.247.931.582
/about/2 316.433.849.805
/index 184.123.665.067
/index 200.017.277.774
/about 126.318.035.038
/help_page/1 382.335.626.855
/about/2 646.865.545.408
/index 061.945.150.735
/about/2 217.511.476.080
/about 217.511.476.080
/contact 316.433.849.805
/index 722.247.931.582
/help_page/1 382.335.626.855
/help_page/1 235.313.352.950
/index 836.973.694.403
/home 802.683.925.780
/about/2 158.577.775.616
/about/2 836.973.694.403
/help_page/1 382.335.626.855
/contact 217.511.476.080
/home 235.313.352.950
/about 184.123.665.067
/home 158.577.775.616
/help_page/1 016.464.657.359
/index 336.284.013.698
/index 200.017.277.774
/contact 715.156.286.412
/about 451.106.204.921
/about/2 444.701.448.104
/about 682.704.613.213
/help_page/1 158.577.775.616
/contact 158.577.775.616
/index 897.280.786.156
/about/2 235.313.352.950
/index 451.106.204.921
/help_page/1 158.577.775.616
/contact 715.156.286.412
/contact 802.683.925.780
/contact 646.865.545.408
/about 543.910.244.929
/about/2 715.156.286.412
/index 200.017.277.774
/about/2 184.123.665.067
/index 646.865.545.408
/contact 451.106.204.921
/contact 929.398.951.889
/about/2 382.335.626.855
/help_page/1 682.704.613.213
/about/2 682.704.613.213
/help_page/1 836.973.694.403
/contact 836.973.694.403
/about 235.313.352.950
/about/2 722.247.931.582
/home 126.318.035.038
/contact 382.335.626.855
/contact 158.577.775.616
/contact 126.318.035.038
/index 016.464.657.359
/home 061.945.150.735
/contact 382.335.626.855
/help_page/1 802.683.925.780
/home 682.704.613.213
/about 016.464.657.359
/help_page/1 336.284.013.698
/about 543.910.244.929
/help_page/1 451.106.204.921
/index 897.280.786.156
/index 897.280.786.156
/help_page/1 802.683.925.780
/about/2 646.865.545.408
/index 836.973.694.403
/about/2 061.945.150.735
/index 061.945.150.735
/about/2 382.335.626.855
/help_page/1 682.704.613.213
/about/2 543.910.244.929
/index 016.464.657.359
/about/2 200.017.277.774
/about 451.106.204.921
/about 336.284.013.698
/contact 316.433.849.805
/contact 016.464.657.359
/contact 217.511.476.080
/help_page/1 336.284.013.698
/about 722.247.931.582
/about/2 336.284.013.698
/home 316.433.849.805
/home 316.433.849.805
/home 543.910.244.929
/contact 061.945.150.735
/about/2 200.017.277.774
/about 336.284.013.698
/home 016.464.657.359
/index 682.704.613.213
/contact 543.910.244.929
/about 451.106.204.921
/contact 200.017.277.774
/about/2 555.576.836.194
/index 444.701.448.104
/about 184.123.665.067
/contact 836.973.694.403
/about 316.433.849.805
/contact 382.335.626.855
/help_page/1 061.945.150.735
/home 316.433.849.805
/home 016.464.657.359
/help_page/1 316.433.849.805
/home 126.318.035.038
/contact 722.247.931.582
/help_page/1 158.577.775.616
/index 715.156.286.412
/about/2 184.123.665.067
/about/2 184.123.665.067
/help_page/1 802.683.925.780
/help_page/1 451.106.204.921
/index 451.106.204.921
/about/2 444.701.448.104
/about/2 543.910.244.929
/contact 235.313.352.950
/home 646.865.545.408
/home 382.335.626.855
/index 929.398.951.889
/index 715.156.286.412
/help_page/1 382.335.626.855
/index 444.701.448.104
/help_page/1 543.910.244.929
/home 802.683.925.780
/index 061.945.150.735
/help_page/1 126.318.035.038
/about/2 543.910.244.929
/contact 715.156.286.412
/contact 555.576.836.194
/about/2 217.511.476.080
/help_page/1 016.464.657.359
/about 722.247.931.582
/help_page/1 235.313.352.950
/help_page/1 555.576.836.194
/contact 646.865.545.408
/about 646.865.545.408
/index 200.017.277.774
/home 200.017.277.774
/home 646.865.545.408
/home 722.247.931.582
/about/2 016.464.657.359
/about 184.123.665.067
/about/2 722.247.931.582
/index 126.318.035.038
/about 722.247.931.582
/index 336.284.013.698
/about 682.704.613.213
/index 336.284.013.698
/index 444.701.448.104
/about/2 061.945.150.735
/help_page/1 336.284.013.698
/about 451.106.204.921
/help_page/1 646.865.545.408
/help_page/1 715.156.286.412
/help_page/1 126.318.035.038
/home 217.511.476.080
/help_page/1 543.910.244.929
/about 722.247.931.582
/about 336.284.013.698
/index 451.106.204.921
/contact 802.683.925.780
/help_page/1 802.683.925.780
/about 336.284.013.698
/contact 158.577.775.616
/contact 126.318.035.038
/about 802.683.925.780
/about/2 543.910.244.929
/help_page/1 200.017.277.774
/home 126.318.035.038
/about/2 184.123.665.067
/home 451.106.204.921
/home 200.017.277.774
/about/2 200.017.277.774
/about 543.910.244.929'

parser = Parser.new(input)

p parser.all_views
p parser.unique_views


