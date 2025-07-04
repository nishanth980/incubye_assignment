class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    # Check if custom delimiter is specified
    if numbers.start_with?("//")
      # Get the delimiter character (it's the 3rd character)
      delimiter = numbers[2]
      
      # Get the numbers part (everything after the first newline)
      numbers_part = numbers.split("\n")[1]
      
      # Replace custom delimiter with comma
      numbers = numbers_part.gsub(delimiter, ",")
    end
    
    # Replace newlines with commas, then split on commas
    numbers = numbers.gsub("\n", ",")
    numbers.split(',').map(&:to_i).sum
  end
end 