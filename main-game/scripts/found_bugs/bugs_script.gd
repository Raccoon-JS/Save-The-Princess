extends Node

var i
var bname = ""

func _ready():
	i = get_parent().get_parent()
	bname = global.interrogating_bug
	match(bname):
		"ANT":
			i.write(bname,"Woah, woah, woah. How did you find me?",false)
			i.write(bname,"I was just smoking joint in my dorm and you burst inside. Are you a cop?",true)
			i.write(bname,"Heh heh. I can tell you about how I dislike my roommate.", false)
			#i.write_responses(bname,1,1,"Police! Get on the ground!","Oh shit, officer, sorry about that. Those are my roommate's joints, not mine.", -1)
			#i.write_responses(bname,1,2,"No I am not.","Please knock on the door, next time. I don't want my roommate to know I am smoking his joints.", 0)
			#i.write_responses(bname,1,3,"Pass me a joint.","Heh heh. I can tell you about how I dislike my roommate.", 1)
			i.write(bname,"Say, I want to share you something. I really detest my roommate. I want him to get out.",false)
			i.write(bname,"I am thinking about frame him for having a meth lab. Will you help me out?",true)
			#i.write_responses(bname,2,1,"No. You shouldn't do that.","Who are you telling me what to do and what not to do?", -1)
			#i.write_responses(bname,2,2,"I don't know much about your roommate.","Oh sweet. Here is something I need to show you.", 0)
			#i.write_responses(bname,2,3,"Yes. I'd like to work with you.","He's a douchebag. He owns me $200 but never give me any cent.", 1)
			i.write(bname,"I can tell you.",false)
			i.write(bname,"The location of his meth lab is hidden inside his chemistry textbook.",false)
			i.write(bname,"Should I lead you to his lab?",true)
			i.write(bname,"Why are you arresting me? Hey!",false)
			#i.write_responses(bname,3,1,"You shouldn't frame someone else for your crime. You are under arrest.","Fuck the arrest. What are you taking me to?", 1)
			#i.write_responses(bname,3,2,"Sure, show me your roommate's farm.","That's more I like it.", 0)
			#i.write_responses(bname,3,3,"I don't like the smell of marijuanna.","Well then get the fuck out of my room!", 1)
		"BEETLE":
			i.write(bname,"Hello, mister. Can I ask you for a help?",false)
			i.write(bname,"You see, I am afraid of a surgery. I have a surgeon's office appointment tomorrow and they are going to disect me up.",true)
			#i.write_responses(bname,1,1,"Because you are a bug?","Of course I am a bug. But bug with made out of ones and zeros!", -1)
			#i.write_responses(bname,1,3,"What are you made of?","Why did you ask? Okay, I am made out of blood, guts, and binaries.", 0)
			#i.write_responses(bname,1,2,"If I were you, I would be afraid.","So you do get it. Thank goodness.", 1)
			i.write(bname,"You know what's more scarier?",false)
			i.write(bname,"They are going to put a syringe into my body and inject a liquid that would freeze me to death.",true)
			#i.write_responses(bname,2,1,"Hold your toes and fingers.","What did you say that?", -1)
			#i.write_responses(bname,2,2,"That liquid is Ice-9, invented by Dr. Kirk Vonnegut, right?","I don't know. How come you know all of this stuff?", 0)
			#i.write_responses(bname,2,3,"Yikes.","I know right? I am shivering everytime I think about it.", 1)
			i.write(bname,"It gives me a shiver just thinking about it.",false)
			i.write(bname,"If I can't move, what will happen to my body?",false)
			i.write(bname,"What if they put inside a grapefruit inside?",true)
			i.write(bname,"Just wish me luck.", false)
			#i.write_responses(bname,3,1,"Grapefruit is good for your body.","Shut the fuck up! I hate grapefruits.", -1)
			#i.write_responses(bname,3,2,"Yum yum.","No it's not! You are not even helping.", -1)
			#i.write_responses(bname,3,3,"Don't worry. That's never gonna happen.","Hopefully. Putting grapefruit inside my body does sounds silly. Thanks for helping me.", 1)
		"CRICKET":
			i.write(bname,"Yo man, I just punched that asshole in the face.",false)
			# first 
			i.write(bname,"That asshole has been yelling about how humanoid raccoons destroying the bug civilization.",true)
			#i.write_responses(bname,1,1,"I don't think punching him would solve anything.","But it did shut him up!", -1)
			#i.write_responses(bname,1,2,"That sounds very annoying for you.","It does. He kept spewing nonsense.", 0)
			#i.write_responses(bname,1,3,"What are the humanoid raccoons?","You never heard about them? They are everywhere listening.", 1)
			i.write(bname,"What a nonsense!",false)
			i.write(bname,"I looked into that asshole's jacket, and he got junks hidden inside.",false)
			i.write(bname,"I guess he on overdose. Then I saw the label on the junk vital and noticed the brand symbol.",false)
			# second
			i.write(bname,"I recognized that symbol, and I am acquiantance with that drug dealer.",true)
			#i.write_responses(bname,2,1,"How did you guys know eachother?","Through mutual friends. He was studying chemistry at the community college nearby.", -1)
			#i.write_responses(bname,2,2,"Are you part of the drug dealing?","I still gotta earn some money, right?", 0)
			#i.write_responses(bname,2,3,"Have you tried this drug before?","Oh it was rad - I mean, they taste like chocolate and I don't like it.", 1)
			i.write(bname,"He was studying chemistry at the community college nearby.",false)
			i.write(bname,"My little friend has to support his family, you know.",false)
			i.write(bname,"I brought many hobos in the city and let them buy and try his drugs.",false)
			i.write(bname,"They are his lab rats that generate little cash.",false)
			# third
			i.write(bname,"He has younger siblings. They look cute and tote adorb. I babysat them everyweek.",true)
			#i.write_responses(bname,3,1,"That seems suspicious.","Why are you looking me like this. Stop looking at me! Why are you arresting me?", 0)
			#i.write_responses(bname,3,2,"I don't think you are doing any good activities with them.","Is THAT what you are thinking of me? You are part of the problem!", -1)
			#i.write_responses(bname,3,3,"Sounds dope.","Yeah I know right? They are so sweet.", 0)
			i.write(bname,"Why are you looking me like this. Stop looking at me! Why are you arresting me?",false)
	pass 
