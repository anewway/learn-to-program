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



puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 20)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(1000)
puts englishNumber(3211)
puts englishNumber(10000)
puts englishNumber(999999)
puts englishNumber(1000000)
puts englishNumber(1000000000)
puts englishNumber(1234567890)
puts englishNumber(1000000000000)