puts 'This is a happy birthday program that will celebrate all of your birthdays!'
puts 'Enter your birth year:'
year = gets
puts 'Enter your birth month:'
month = gets
puts 'Enter your birth day:'
day = gets
birthTime = Time.new(year, month, day)
currentCelebrate = Time.new(birthTime.year + 1, birthTime.month, birthTime.day)
currentTime = Time.new
old = 1

def calculateDayPassed(year)
    normalDays = 365
    leapDays = normalDays + 1
    if(year % 400 == 0)
        return leapDays
    elsif(year % 100 == 0)
        return normalDays
    elsif(year % 4 == 0)
        return leapDays
    else
        return normalDays
    end
end

while(currentCelebrate < currentTime)
    puts 'SPANK! You are ' + old.to_s + ' years old! ' + currentCelebrate.to_s

    dayPassed = calculateDayPassed(currentCelebrate.year)
    secondPassed = dayPassed * 24 * 60 * 60
    currentCelebrate = currentCelebrate + secondPassed
    old = old + 1
end
