def scorer(scoreList)

    return scoreList.inject(:+)
end

#scorer("X X X X X X X X X X X X")
#scorer("12 12 12 12 12 12 12 12 12 12")
#=> return 300