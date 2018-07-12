

class BeerSong

	def verse(number)
		if number != 0	
			if number != 1
				r1 = 's'
				r2 = (number -1).to_s 
				r4 = 'one' 
			else 
				r2 = 'no more'
				r4 = 'it'
			end
			if  number != 2 
				r3	= 's'
			end
			"#{number} bottle#{r1} of beer on the wall, #{number} bottle#{r1} of beer.\nTake #{r4} down and pass it around, " + r2+ " bottle#{r3} of beer on the wall.\n"
		else 
			"No more bottles of beer on the wall, no more bottles of beer.\n" + "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
	    end
	end

	def verses (n1, n2)
		(n2..n1).map{|n| verse(n)}.reverse.join("\n")

	end

	def lyrics
		verses 99, 0
	end

end

module BookKeeping
	VERSION = 2
end
