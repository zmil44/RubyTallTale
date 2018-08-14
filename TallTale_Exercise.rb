#------------------------------------------
# Script name: TallTale_Exercise.rb
# Versoion: 1.0
# Author: Zachary Miller
# Date: March 30 2018
# Description: This script takes user input and places it into a story
#------------------------------------------

class Screen
	def cls
		puts ("\n"*25)
		puts "\a"
	end
end

class Tale
	attr_accessor :monster, :villain, :object, :place, :location, :person1, :person2, :person3
	attr_accessor :P1, :P2, :P3, :P4, :P5
	
	def tell_Story(paragraph)
		puts paragraph
	end
end

#---------------------------------------------

CScreen = Screen.new

	
loop do
	CScreen.cls
	print "Would you like to hear an interesting story? (y/n)\n\n: "
	$answer = STDIN.gets
	$answer.chomp!

	break if $answer=="y" || $answer == "n"
end
	

if $answer == "n"
	print "Sorry to hear that. Feel free to return when you would like to hear a interesting story."
	
puts "Sorry to hear that. Feel free to return when you would like to hear a interesting story."
else
	Story = Tale.new
	CScreen.cls
	print %Q{Type the name of a scary monster. (press enter)\n\n: }
	monster=STDIN.gets
	monster.chomp!

	CScreen.cls
	print %Q{Who is your favorite athlete. (press enter)\n\n: }
	villain=STDIN.gets
	villain.chomp!
	CScreen.cls

	print %Q{Enter the name of a thing. (press enter)\n\n: }
	object=STDIN.gets
	object.chomp!

	CScreen.cls
	print %Q{Enter the name of a good hiding place. (press enter)\n\n: }
	place=STDIN.gets
	place.chomp!

	CScreen.cls
	print %Q{Enter the name of a popular vacation site. (press enter) \n\n: }
	location=STDIN.gets
	location.chomp!

	CScreen.cls
	print %Q{Enter your name. (press enter) \n\n: }
	person1=STDIN.gets
	person1.chomp!

	CScreen.cls
	print %Q{Enter the name of a sibling or friend. (press enter) \n\n: }
	person2=STDIN.gets
	person2.chomp!

	CScreen.cls
	print %Q{Enter the name of your significant other or crush (if n/a enter name of a friend). (press enter) \n\n: }
	person3=STDIN.gets
	person3.chomp!

	CScreen.cls
	print %Q{All neccesary input has been gathered. Press enter to begin the story!}
	pause = STDIN.gets

	Story.P1 = %Q{Once upon a time in a far away land, just on the outskirts of #{location}, there lived three very brave young children named #{person1}, #{person2}, and #{person3}. 
These children were known far and wide as the heroes who once saved the inhabitants of #{location} from an evil #{monster}. One day, dark clouds descended over #{location}. 
For five nights and five days a great storm raged, flooding all the land in #{location}, driving its inhabitants up into the hills. (Press Enter)
	}
	Story.P2 = %Q{The good people of #{location} were not the only ones driven into the hills. An evil monster named #{villain} was also awoken from a one thousand year slumber and was forced from its lair by the torrential floods that followed the storm into #{location}. 
#{villain}, having been asleep for so long, was now hungry and soon began to prey upon the helpless people. By the time the water began to recede, over half of the inhabitants had become meals for #{villain}. (Press Enter)
	}
	Story.P3 = %Q{Desperate for help, the remaming inhabitants of #{location} send word to #{person1}, #{person2}, and #{person3} that their help was needed once again. The three children soon arrived on the scene only to find that the 
#{villain} had cornered the last of the inhabitants inside a #{place}, and was preparing to eat one last meal before returning to his secret lair in #{location}. (Press Enter)
	}
	Story.P4 = %Q{Immediately, #{person1}, #{person2}, and #{person3} flew into action. #{person1} threw a #{object} and hit #{villain} to get his attention. At the same time #{person2}, and #{person3} crept up behind him. 
#{person2}, then threw a rope around the feet of #{villain}, momentarily tying him up and allowing #{person3} to move in and spray #{villain} with a full can of bug spray, immediately immobilizing and killing #{villain}. 
The remaining inhabitants returned to their homes, and soon everyting was back to normal. #{person1}, #{person2}, and #{person3} returned to their homes, quietly living on the edge of #{location}, waiting until the day they would be needed again. (Press Enter)
	}
	Story.P5 = %Q{This game was brought to you by Zach and he hopes that you enjoyed the story. visit his schools website at www.bellevue.edu (press enter)
	}
	CScreen.cls
	Story.tell_Story Story.P1
	STDIN.gets
	
	CScreen.cls
	Story.tell_Story Story.P2
	STDIN.gets

	CScreen.cls
	Story.tell_Story Story.P3
	STDIN.gets

	CScreen.cls
	Story.tell_Story Story.P4
	STDIN.gets

	CScreen.cls
	Story.tell_Story Story.P5
	STDIN.gets
end
	