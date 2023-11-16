songName = '99 Bottles of Beer'
counter = 99

puts 'Lyrics of the song ' + songName
puts

while counter > 0
    originalUnit = 'bottles'
    if(counter == 1)
        originalUnit = 'bottle'
    end

    puts counter.to_s + ' ' + originalUnit +' of beer on the wall, ' + counter.to_s + ' ' + originalUnit + ' of beer.'
    counter = counter - 1
    text = counter

    newUnit = 'bottles'
    if(counter == 1)
        newUnit = 'bottle'
    end

    if(text == 0)
        text = 'no more'
    end

    puts 'Take one down and pass it around, ' + text.to_s + ' ' + newUnit + ' of beer on the wall.'
    puts
end

puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, ' + songName.downcase + ' on the wall.'
