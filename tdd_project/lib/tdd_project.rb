def my_uniq(arr)
  new_arr = []
  arr.each do |ele|
    new_arr << ele unless new_arr.include?(ele)
  end
  new_arr
end


def two_sum(arr)
  hash = {}
  pairs = []
  arr.each_with_index do |item, index|
    counterpart = 0 - item 
    if hash.has_key?(counterpart)
      pairs << [hash[counterpart], index]
    else
      hash[item] = index 
    end
  end
  pairs.sort 
end

def my_transpose(arr)
  new_arr = Array.new(arr.length) {Array.new(arr.length)}
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      new_arr[j][i] = arr[i][j]
    end
  end
  new_arr
end

def stock_picker(arr)
  result = [0,0]
  greatest_differential = 0
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      sell_price = arr[j]
      buy_price = arr[i]

      if sell_price - buy_price > greatest_differential
        result = [buy_price, sell_price]
        greatest_differential = sell_price - buy_price 
      end
    end
  end
  result 

end
