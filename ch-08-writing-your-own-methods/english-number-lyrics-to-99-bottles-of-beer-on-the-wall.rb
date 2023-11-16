def englishNumber number
    if number < 0 # No negative numbers.
        return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
        return 'zero'
    end

    # No more special cases! No more returns!

    numString = '' # This is the string we will return

    onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    pricePows = [2, 3, 6, 9, 12]
    priceUnits = ['hundred', 'thousand', 'million', 'billion', 'trillion' ]
    index = pricePows.length - 1

    left = number
    pricePows.reverse_each do |pow|
      unit = 10**pow
      write = left/unit
      left = left - write*unit
      if(write > 0)
        unitNumber = englishNumber(write)
        numString = numString + unitNumber + ' ' + priceUnits[index]
        if(left > 0)
          numString = numString + ' and '
        end
      end

      index = index - 1
    end

    write = left/10
    left = left - write*10
    if(write > 0)
        if((write === 1) and (left > 0))
            numString = numString + teenagers[left-1]
            left = 0
        else
            numString = numString + tensPlace[write-1]
        end

        if(left > 0)
          numString = numString + '-'
        end
    end

    write = left
    if(write > 0)
        numString = numString + onesPlace[write-1]
    end

    numString
end




counter = 9999
englishTextNumOfBottls = englishNumber(counter)
songName = englishTextNumOfBottls + ' Bottles of Beer'


puts 'Lyrics of the song ' + songName
puts

while counter > 0
    originalUnit = 'bottles'
    if(counter == 1)
        originalUnit = 'bottle'
    end

    counterText = englishNumber(counter)
    puts counterText.capitalize + ' ' + originalUnit +' of beer on the wall, ' + counterText + ' ' + originalUnit + ' of beer.'
    counter = counter - 1
    counterText = englishNumber(counter)

    newUnit = 'bottles'
    if(counter == 1)
        newUnit = 'bottle'
    end

    if(counter == 0)
        counterText = 'no more'
    end

    puts 'Take one down and pass it around, ' + counterText + ' ' + newUnit + ' of beer on the wall.'
    puts
end

puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, ' + songName.downcase + ' on the wall.'
