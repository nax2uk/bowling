def scorer(scoreList)
    total = 0
    scoreList.each_with_index { |roll, index|
        if roll.is_a? Integer
            total += roll
        else
            total = total - scoreList[index - 1] + 10 + scoreList[index + 1]
        end
    }
    total
    #return scoreList.inject(:+)
end

#scorer("X X X X X X X X X X X X")
#scorer("12 12 12 12 12 12 12 12 12 12")
#=> return 300