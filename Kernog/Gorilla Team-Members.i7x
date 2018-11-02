Gorilla Team-Members by Kernog begins here.
[The team-members are considered as one block of players, but three figures frequently come out during non-random discussions and sex scenes:
Josh, an autoritative quarterback, abusing his position for sexy
Zach, a large runnin back; always collected outside of the game; loves his new day-to-day life, but wishes the team would wisen up
Mike, Zach's brother, who joined the team before the Nanite Plague to help assert himself. He is still not really used to all the gay stuff, mostly the bottom stuff, but goes along with the flow

TODO: There must be three variants of conversation:
* Outside of the team, where they simply consider you a sex-hungry fan
* Gorilla morph (pure gorilla): friendly, encourages you to join
* Supportive team member, where most would not give you the time of the day but you are still a "bro"
* Team member, where they consider you a bro, with many signs of affection


]

Section 1 - General

Table of GameCharacterIDs (continued)
object	name
Gorilla Team-Members	"Gorilla Team-Members"

Gorilla Team-Members is a man.
The description of Gorilla Team-Members is "[gorillaTeamMembersDesc]".
The conversation of Gorilla Team-Members is { "Yap!" }.
Gorilla Team-Members is infectious. The infection of Gorilla Team-Members is "Football Gorilla".
Gorilla Team-Members is in Astroslide Field Locker-room.
Gorilla Team-Members has a truth state called namesKnown.
randGorilla is a text that varies.

to say gorillaTeamMembersDesc:
if Gorilla Team-Members is in Astroslide Field Locker-room:
	if TimekeepingVar is 7 pr TimekeepingVar is -1 or TimekeepingVar is 1 or TimekeepingVar is -7 or TimekeepingVar is 0 or TimekeepingVar is -8:[Night]
		say "Around two dozen gorillas are spread inside their team locker-room for the nightly orgy, in all states of dress and undress, as well as sexual arousal. It would be an understatement to say that all these hunky guys are 'just interested' in football - it's more like the whole center of their existence, as you can see from the fact that an adjoining storage room has been totally cleared out to set up numerous bunk beds. It looks like that those who remained in the team are living 24/7 in this place. The gorillas look like jovial bunch, and you can hear almost constant chatting, laughing and more than a few aroused moans from all around you.";
	else:[Briefings]
		say "Around two dozen gorillas are present in their team locker-room, in a compact crowd. Everyone is in their football gear, which in these days are only comprised of a helmet and shoulder pads. It would be an understatement to say that all these hunky guys are 'just interested' in football - it's more like the whole center of their existence, as you can see from the fact that they are listening almost religiously to their coach's briefing.";
else:[They are on the Field]
		if TimekeepingVar is 2 or TimekeepingVar is -6:[Match]
			say "Eleven gorillas are on the field, encouraged by the rest of the team as they try to [one of]push back their opponents from their goal line[or]push and pass their way to the goal line of the opposing team.  Seeing them in action, you notice that despite their common, blocky shapes, each player had a different body type. The ones in the middle were the biggest of the group, while the ones on the side have a leaner profile. They are all butt naked, only wearing a helmet and shoulder pads, and you wonder if it is for their protection or just because they have to look like football players somehow.";
		else:[training]
			say "Around two dozen gorillas are occupying the football field. They are divided in small groups of five, and rotate between the different types of trainings. One group is allowed to rest by the stadium's seats, and use the occasion to chat with the small crowd of fans, and satiate some of their more carnal urges. The gorillas look like jovial bunch, and you can hear almost constant chatting, laughing and more than a few aroused moans from each group.";


[Move rule - Gorillas come to the locker-room after the match (TimekeepingVar = 1, -7) and after training (TimekeepingVar = 3, -5). They come out at the start of training (TimekeepingVar = 5, -3), and when a match occurs (TimekeepingVar = 2, -6)]
[The objects modified by this rule are!:
Gorilla Team-members (person)
Roman (person, Kernog/Ronan.i7x)
The storage room door (Kernog/Astroslide Field Locker-room)]
an everyturn rule:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Players come back from the match]
			move Gorilla Team-Members to Astroslide Field Locker-room;
			if player is in Astroslide Field Locker-room:
				say "     You hear a rumble of footsteps and voices, before a crowd of gorilla footballers barge inside the locker-room. [one of]They seem to be in a pretty good mood. Their fur is ruffled, and mattered with grass and dirt, and their groins cacked with cum. 'Okay, boys!' [if namesKnown of Gorilla Team-Members is false]an assertive ape[else]Josh[end if] shouts. 'Take a shower, and let's get this party starteeed!' The rest of the team answers with a loud combination of 'Ook!' and chest drumming, which make the walls tremor.[or]They seem to be a bad mood. Their fur is ruffled, and mattered with grass and earth, and most of them has cum leaking from their butts and rolling along their thighs. 'Okay, boys,' [if namesKnown of Gorilla Team-Members is false]an assertive ape[else]Josh[end if] says. 'Let's forget what happened and get this after-match party going.' The rest of the team agrees with a collection of dejected yeahs.[at random]Behind you, a couple of team-members talk with the crowd of fans who followed the team, and handpicks a half-dozen of them, calling them 'Tonight's V.I.P.' The fans seem overjoyed. One of the apes look at you. 'You were already there? Not bad-looking... I guess you can spend the night with us.'";
			if player is in Astroslide Football Field:
				say "     You hear the crowd cheer as the match ends. A series of moans erupt from the field. You can't see exactly what's happening, because of the employee blocking your view, but it seems that a lot of sex is happening in the stadium. After everyting quiets down, you see the gorillas leaving as one pack, and head to the locker-room alongside a small array of fans. The gatekeeper yawns and wishes you good night, then moves out of the way, allowing you to head to the locker-room if you want.";
			now storage room door is open; [Locker-room dormitory is available]
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [After training, match prep]
			move Gorilla Team-Members to Astroslide Field Locker-room;
			if player is in Astroslide Field Locker-room:
				say "     You hear a rumble of footsteps and voices, before a crowd of gorilla footballers barge inside the locker-room. They seem to be rather excited, and it is only when their coach enters the room that everyone quiets down, and assembles in front of him. 'Okay, boys, good training,' Ronan says. 'Hit the showers if you need to, and let's get ready for tonight's match.'";
			if player is in Astroslide Football Field:
				say "     Noticing that the sun has started to set down, Roman blows his whistle and puts his hands in front of his mouth to shout. 'End of training, boys! Everyone in the locker-room!' Roman's players jog in direction of the small building, picking up the training tools on the way.";
			now storage room door is closed;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [Leaving for training]
			move Gorilla Team-Members to Astroslide Football Field;
			if player is in Astroslide Field Locker-room:
				say "     Roman turns around and checks the wall clock. 'It's training time, boys. Head to the field and don't forget your gear.' The team follows the orders of its coach in a childish mood, laughing, chatting and slapping each other's butt as they head out.";
			if player is in Astroslide Football Field:
				say "     In a loud buzz of laughter and chatter, the football team exits the locker-room and forms small groups. Each of them take a portion of the big field, and begin warm-up exercises.";
			if Resolution of Coach Roman Secret is 0:[Door open for the quest]
				now storage room door is open;
			else:
				now storage room door is closed;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [Leaving for match]
			move Gorilla Team-Members to Astroslide Football Field;
			if player is in Astroslide Field Locker-room:
				say "     A goblin wearing referee clothes pass his head inside the locker-room. 'Match in 15 minutes, boyos. On the field.' Roman, who just finished his briefing, claps his hands. 'You heard the green guy. Let's get this match rolling. I want these Fourmont Wolves pounded, and in more ways than one!' Chanting and pounding their chests, the football players rush out of the locker-room.";
			if player is in Astroslide Football Field:
				say "     The crowd, who have assembled in the seats for the last hour, erupt in cheers as the Tenvale Gorillas enter the field, followed by the Fourmont Wolves. A small crew of goblins wearing referee clothes reset the clock and the scoreboard, while their leader meet with each team's captain, in order to decide who starts kicking this time.";
			now storage room door is closed;

instead of sniffing Gorilla Team-Members:
	say "     The manly scents of gorillas hang in the air, with slight undertones of furry musk, cum and sweat.";

[TODO: Locker-room part]
instead of conversing the Gorilla Team-Members:
	if TimekeepingVar is 2 or TimekeepingVar is -6:
		say "     You shout encouragements to the Tenvale Gorillas. You are not sure that they hear you, but it's the thought that counts, right?";
	else if  TimekeepingVar is 6 or TimekeepingVar is -2 or TimekeepingVar is 3 or TimekeepingVar is -5:
		say "     You attempt to start a conversation, but one of the apes hush you down. 'Not now. We're listening to Coach Roman's brief.'";
	else if Gorilla Team-Members are in Astroslide Football Field: [training conversation]
		if player is pure and bodyname of player is "Football Gorilla":
			say "     'Hey, what's up,[if player is male]dude[else]girl[end if]?' the gorillas greet you, as you insert among the small party of fans chatting with them. You find yourself embroiled in a discussion about new strategies on the field. Despite them having a lot more experience in those matters, your attempts to contribute something worthwhile are readily accepted, making you feel welcomed and almost as part of the team. 'You should consider joining us,' one of the apes tell you.[if player is male]You've got the perfect body for it[else]You lack something between the legs, but we could fix that for you, if you know what I mean[end if]. You should talk to Coach about it.'";
		else if Gorilla Fan-club is resolved:
			say "     As soon as you approach, the gorillas greet you warmly. 'Hey, look who came to see us? How are you, [nameOrDefault]?' You insert among the small party of fans chatting with them. You join the gorilla team-members in their reveling, and you find yourself embroiled ina group of the guys retelling raunchy stories about past conquests. This escalates after a short while, then a gorilla draws an eager fan-[one of]girl[or]boy[at random] to his chest from the crowd and proceeds to demonstrate his technique, filling the others and yourself with envy.";
		else:
			say "     'And who are you, chump?' one of the primates grunt at you, as you attempt to strike a conversation. You feel yourself the target of appraising looks from the other gorillas, and possessive stares from their fans. 'You're rather good-looking. Wanna join our groupies?'[line break]'It'd be a pleasure to get to [']know['] you better,' his friend adds.[line break]'If you are interested, come to the locker-room, after the match tonight. We'll talk about your sign up.'";
	else:[locker-room party conversation]
	if player is pure and bodyname of player is "Football Gorilla":
		say "     'Hey, [if player is male]bro[else]sis[end if], nice to see you.' You are heartwarmingly greeted by the gorillas who are not partying all around the place, although a couple of them keep fondling their fan while they chat with you. You join the gorilla team-members in their reveling, and you find yourself embroiled in a discussion about new strategies on the field. Despite them having a lot more experience in those matters, your attempts to contribute something worthwhile are readily accepted, making you feel welcomed and almost as part of the team. 'You should consider joining us,' one of the apes tell you.[if player is male]You've got the perfect body for it[else]You lack something between the legs, but we could fix that for you, if you know what I mean[end if]. You should talk to Coach about it.'";
	else if Gorilla Fan-club is resolved:
		say "     As soon as you approach, the gorillas greet you warmly. 'Yooo, what's up, [nameOrDefault]?' Several apes surround you and you start chatting about today's match and the latest news about the team. The topic of conversation barely deviates about football, sometimes digressing about the campus and the rival team. In return, you give them news about what happens outside in the city. Surprisingly, some of the players express concern about some of your stories, and tell you that you are free to spend your days here while waiting for the hypothetical rescue.";
	else:
		resolve Gorilla Fan-club;

[TODO: Sex scenes
- Not a fan: launches the Gorilla Fan Club scene
- Fan: cum bath receiving, and a scene with some of the Players
- Player: cum bath giving, and a scene with some of the Fans
Scenes: three short skit with different characters]

instead of fucking the Gorilla Team-Members:
	if Furry is banned:
		say "     Too much fur for your taste.";
	else if TimekeepingVar is 2 or TimekeepingVar is -6 or TimekeepingVar is 6 or TimekeepingVar is -2 or TimekeepingVar is 3 or TimekeepingVar is -5:
		say "     The Gorillas are busy at the moment. They do not have the time to respond to your advances.";
	else if Gorilla Fan-club is not resolved:
			resolve Gorilla Fan-club;
	else:
		if player is in Astroslide Football Field:
			if player is pure and bodyname of player is "Football Gorilla":
				let fanGender be a random number between 1 and 2;
				say "     'Want to have some fun with us, cousin?' one of the gorillas asks, after you mention the topic of sex. His friends chuckle. The ape leans towards you and whispers, out of earshot of the fans. 'You're not part of the team yet, are you? I don't think anyone'll mind, and certainly not them.' At his invitation, you lean on the barrier separating the seats from the field. The fans oogle you like a piece of candy, until one of them approaches you and offers to give you some [']relaxation[']. [if fanGender is 1]He[else]She[end if] kneels in front of you, and slowly [stripCrotch]. Your ape neighbor looks at the scene with curiosity.";
				if player is not male:
					say "     The fan does not mind your absence of cock one bit. [if fanGender is 1]He[else]She[end if] eagerly buries [if fanGender is 1]his[else]her[end if] face between your thighs and starts kissing your [cunt size desc] pussy. The noises that the fan makes smooching and licking your clit barely distract the rest of the group, although you feel amused looks focused on you. Considering that you are not the only gorilla being serviced in this fashion, you are far from being the center of attention. The other gorillas actually ask you questions, now and then, and you need great efforts to take your attention away from the relentless mouth latched on your cunt, in order to answer.";
					say "     Your orgasm arrives just as you are in the middle of trying to answer a question about [one of]your favorite NFL team[or]your life outside of the Campus[or]the latest match against the Fourmont Wolves[end if]. Your sudden shrill of pleasure earns you a hearty laugh from your interlocutor, and a couple of cat calls, while you grind your crotch against the servicing fan's face.";
				else if player is herm:
					say "The fan expertly grabs your cock and starts stroking. Once you are at an enjoyable size, [if fanGender is 1]he[else]she[end if] does not waste time and wraps [if fanGender is 1]his[else]her[end if] lips around your [cock of player] member. The fan's fingers find your herm pussy while playing with your balls, and you quickly feel a pair of fingers grind the inside of your vagina. The noisy slurps and your groans barely distract the rest of the group, although you feel amused looks focused on you. Considering that you are not the only gorilla being serviced in this fashion, you are far from being the center of attention. The other gorillas actually ask you questions, now and then, and you need great efforts to take your attention away from the relentless mouth latched on your [cock size desc] cock, in order to answer.";
					say "     Your orgasm arrives just as you are in the middle of trying to answer a question about [one of]your favorite NFL team[or]your life outside of the Campus[or]the latest match against the Fourmont Wolves[end if]. Your sudden shrill of pleasure earns you a hearty laugh from your interlocutor, and a couple of cat calls, while you grind your crotch against the servicing fan's face, while [if fanGender is 1]he[else]she[end if] handles your [cum load size of player] discharge.";
				else:
					say "The fan expertly grabs your cock and starts stroking. Once you are at an enjoyable size, [if fanGender is 1]he[else]she[end if] does not waste time and wraps [if fanGender is 1]his[else]her[end if] lips around your [cock of player] member. The fan's hand keeps playing with your balls, kneading and squeezing them to stimulate them. The noisy slurps and your groans barely distract the rest of the group, although you feel amused looks focused on you. Considering that you are not the only gorilla being serviced in this fashion, you are far from being the center of attention. The other gorillas actually ask you questions, now and then, and you need great efforts to take your attention away from the relentless mouth latched on your [cock size desc] cock, in order to answer.";
					say "     Your orgasm arrives just as you are in the middle of trying to answer a question about [one of]your favorite NFL team[or]your life outside of the Campus[or]the latest match against the Fourmont Wolves[end if]. Your sudden shrill of pleasure earns you a hearty laugh from your interlocutor, and a couple of cat calls, while you grind your crotch against the servicing fan's face, while [if fanGender is 1]he[else]she[end if] handles your [cum load size of player] discharge.";
				say "     The fan gets back on [if fanGender is 1]his[else]her[end if] feet, licking [if fanGender is 1]his[else]her[end if] chops in satisfaction. You thank [if fanGender is 1]his[else]her[end if] as you [selfDressCrotch].";
			else:
				say "     'Good timing. I was looking for someone to help blow off some steam.', one of the apes say. 'Of course, [italic type]you[roman]'re gonna do the blowing.' The primate points to a spot in front of him, and leans against the barrier separating the seats from the field. By the time you are on your knees and ready, the gorilla is already stroking his half-hard, and nudging you to relay his hand. You eagerly oblige, and wrap your lips around the big black cock. You suck on it like with gutso, eliciting grunts of approval from the gorilla. Now and then, he lifts his head to chat with one of his teammates, or with another fan, and it quickly becomes a game for you to call him back to attention, by a gentle tug on his balls, or a willingly loud suck on his veiny shaft. Each time you feel the gorilla about to explode, he makes you pause, wanting to savor your expertful sucking as long as he can. You can feel several looks upon you, either amused or envious, and although you are not the only one working on a football player, some of the apes go out of their way to pet your head or stroke your back to encourage you.";
				say "     'Oh shit, it's about time we go back,' the ape says after a moment. He guides your hand between his buttcheeks and says: 'Put a finger in and make me finish. Come on.' You slide a finger in, while you intensify your bobbings on his cock. The gorilla almost jumps up instantly. 'Oh fuck, that's the shit! Oooh...' The player's big hands grab you, while his hips perform the final humps into your mouth. You are rewarded by the ape's cock pulsating in your mouth and releasing several ropes of cum down your throat. You slowly slide your mouth up his trembling rod, milking every last drop, until its glans pops out of your lips, almost as clean as it was when you started. Catching your breath, you notice that a small group has formed in the meantime, comprised of the players coming back from their training exercise, and the ones waiting for your partner to finish, and everyone is watching you. Several cheers and catcalls congratulate you on what certainly looked like a spectacular finish. Your gorilla partner pulls you back on his feet and gives you a kiss. 'You're the best, [nameOrDefault]. You should visit us at the locker-room tonight, if you have some spare time.'";
				say "     Then, he leaves to resume his training session, leaving you with the new group taking their pause. Your arousing show inspired some fans to do the same to the newly arrived players, and you quickly cease to become the topic of discussion for the time being.";
		else:
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			if player is male and player is pure and bodyname of player is "Football Gorilla":
				choose a blank row in table of fucking options;
				now title entry is "Join an initiation";
				now sortorder entry is 1;
				now description entry is "[']Assist['] the gorillas hazing a new fan.";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Join the fun";
			now sortorder entry is 2;
			now description entry is "Join the orgy.";
			[]
			sort the table of fucking options in sortorder order;
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - Nevermind[as]0[end link][line break]";
			while sextablerun is 0:
				say "Pick the corresponding number> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					now current menu selection is calcnumber;
					choose row calcnumber in table of fucking options;
					say "[title entry]: [description entry]?";
					if player consents:
						let nam be title entry;
						clear the screen and hyperlink list;
						now sextablerun is 1;
						if nam is "Join an initiation":
							say "[GorillaTeamSexInitiation]";
						if nam is "Join the fun":
							say "[GorillaTeamSexOrgy]";
						wait for any key;
				else if calcnumber is 0:
					now sextablerun is 1;
					say "     You step back from the gorilla you almost asked to have sex with, shaking your head slightly as he gives a questioning look.";
					wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;


[Gorilla Fan-club event]
Table of GameEventIDs (continued)
Object	Name
Gorilla Fan-club	"Gorilla Fan-club"

Gorilla Fan-club is a situation.

to resolve Gorilla Fan-club:
	if player is in Astroslide Football Field:
		say "     The gorillas look at each other, grinning. 'You want to have fun with us? We're only obliging fans, but if you want to join the club...' one of them says, poiting at the persons surrounding his teammates, 'join us in the [bold type]locker-room tonight[roman type], and ask again.'";
	else:
		say "     The ape you adressed appraises your body, and smiles back. 'You got a nice body. If you want to party with us, you'll have to join our fan-club first. And joining the club means that we have to initiate you. We can do it right now, if you want...' [bold type]Do you join the Tenvale Gorillas fan-club?[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) Yes.";
		say "     ([link]N[as]n[end link]) No.";
		if player consents:
			LineBreak;[Former bukkake receiving scene]
			say "     A lusty grin appears on the asker's face. 'Good attitude, um... What's your name?' [if player is not defaultnamed]You give the ape your name[else]You meekly refuses to give the ape your real name[end if]. 'Okay, [nameOrDefault]. Get out of these clothes and on your knees, while I'm getting some guys for your initiation.' After giving you a hungry kiss, he goes on his search. You excitedly [selfStripChest] and [selfStripCrotch], then kneel on the tiled floor.";
			say "     The gorilla comes back, accompanied by a handful of comrades. 'Guys, meet our newest friend,' he says. 'A [if player is pure][bodyname of player][else]chimera[end if]? Cool.' One of the others comments. Now that they surround you, you notice that each gorilla is slightly different in size. 'Let's get this initiation going,' another said, in a slightly annoied tone. He places himself in front of you and presents his erect cock to you. 'The name's Josh. I'm the quarterback. Get to work.' Excited, ou lean forward and lick Josh's shaft, then take the cockhead into your mouth and start going down on him. 'Mmm, hungry [if player is male]lad[else]girl[end if]. You'll bend for me when I'll ask to, won't you?'";
			say "     Josh lets you service him for a minute or two, gently pulling on your head to make you go deeper and deeper until you're deep-throating with your nose buried in his bushy pubes, then you can hear him call out, 'Mmm, nice. Next boy!' He suddenly removes himself, and is quickly replaced by a towering giant. 'Name's Zach. I'm the running back. Take your time, [nameOrDefault].' As you slowly slide your lips on and off your gorilla's long pole, playing your tongue over the veins along its length, you become aware of quite a crowd gathering all around you to watch.";
			say "     'Your turn, bro,' Zach eventually says to the smaller of the bunch. Nonetheless, he is no slouch when it comes to the cock department, and his thick black dick easily fills your mouth. 'Hum, I'm Mike,' he says. 'I play wide receiver and I-I'm Zach's brother.' From his reactions, you can tell that he is still unused to have his cock sucked in public, so you have a lot of fun teasing the boy. The rest of the team rotates around you, one after the other. You progressibely get lost in the sex frenzy, as you get to know the Tenvale Gorillas [italic type]very[roman type] personally. It reaches the point where you instantly recognize Zach's veiny cock, or Mike's pre-leaking shaft when they return in your field of vision. You take them all one by one, suckling hard and eagerly to taste their sweet pre-cum. The fapping sound of many hands stroking erect cocks fill the air around you as the horny studs jerk off in anticipation of their turn, with many also taking their teammates['] cocks in hand and giving them some attention too.";
			WaitLineBreak;
			say "     You can't say how long it takes, with all of your attention focused on the current shaft of man-meat in your mouth, but eventually something seems familiar about the hard cock being held out before you. Looking up, you realize that it's the original primate hunk with whom you started. As his strong hands grasp your head and he starts to face-fuck you with eager grunts, the gorilla soon roars, 'Unnngh - getting really close! Guys, let's paint this bitch white, inside and out!' After another handful of frenzied thrusts that make his heavy balls smack your chin, the young man suddenly bellows out loud and you can feel his cock pulse inside your throat as spurt after spurt of his seed is pumped directly into your stomach.";
			say "     Just moment later, the first of the other guys jerking off on you joins him in orgasm, blasting your body with his white, creamy cum. Another follows before that guy's third shot, then another three at the same time, then more or less all the rest, who had joined in-between. You don't think there is any part of you that is not drenched in someone's seed - an amazing feeling that sends your own libido into overdrive. Now that they're no longer busy handling one cock after another, your hands fly to your own crotch, [if player is male]grasping your own manhood and wanking it in a frenzied pace. As wound up as you are, it's only a matter of moments before you reach the point of no return, adding some splashes of your own cum to the large puddle all around you[else if player is female]sinking your fingers into your pussy and rubbing the little nub of your clit in a frenzy. As wound up as you are, it's only a matter of moments before you reach the point of no return, adding some splashes of your own femcum to the large puddle all around you[else]rubbing your genderless, but quite sensitive crotch in a frenzied pace. As wound up as you are, it's only a matter of moments before you reach the point of no return, trembling all over as an orgasm rocks through your body[end if].";
			say "     'Nice job,' a familiar voice tells you, then you feel the soft touch of a towel wiping at your face. Your original gorilla stud uses it to clean you up - but soon the towel is totally drenched and he gives a resigned chuckle before dropping it. 'Let's get you clean in the showers,' he says a moment later, giving you a hand to help you stand up in the slippery state you are in. You are guided into the shower room next and soon find yourself under a warm spray of water, with your gorilla and two others washing you down, all the while giving you some lusty gropes. The warm and wet fun in the shower continues for a while, without going any further than just touching and rubbing, until you eventually leave the gorillas behind, walking out to dry yourself off and put your clothes back on. The gorilla clasps your shoulder and declares proudly: 'Welcome to the fan-club, [nameOrDefault]!'";
			now Gorilla Fan-club is resolved;
			now namesKnown of Gorilla Team-Members is true;
		else:
			LineBreak;
			say "     'Oh well,' the ape answers flatly, as if it had happened several times before. 'I won't be forcing you or anything, if that's not your thing. If you change your mind, talk to me again.'";


to say GorillaTeamSexInitiation: [bukkake (giving)]
	if (Girl is banned or Girl is warded):
		now tempGender is 0;
	else if (Guy is banned or Guy is warded):
		now tempGender is 1;
	else:
		let randomnumber be a random number from 1 to 10;
		if randomnumber <= 5:
			now tempGender is 0;
		else:
			now tempGender is 1;
	say "     Stepping up to a handsome gorilla just sitting on one of the locker-room benches and jerking his own cock, you push down your own pants and bare your already hardening [cock of player] manhood to him. 'Nice equipment you have there,' the hunky primate replies, looking you up and down and then reaching out to stroke his fingers along your shaft. 'Did you just wanna show off or can I help you with anything?' His eyes widen and you think you see his cock getting even harder than it was before as you tell him that if he knew some wannabe fans to haze, you would be glad to assist. He chuckles and says, 'Right on time! We were about to initiate a new fan properly.' The gorilla gives your cock a few quick jerks, then stands up and calls out, 'Hey Guys! Let's give one of the groupies his team shower!'";
	say "     It only takes moments for quite a few male gorillas to gather around the two of you - many already naked, some still in their gear and sweaty from playing and even a few who drip all over the floor after rushing over from the showers. There's aroused grunting between the young men, and more than a bit of posing as they jerk their cocks, and wiggle them at each other to show off, then soon a wide-eyed [one of]horse-hung nerd[or]bunny jock[or]satyr[or]furling[or]feline[at random] is let through to step into the center of the gathered group. Your original gorilla hunk clears his throat and says to the initiate: 'We are assembled here to welcome you into our fan club. And like every new fan, it's time to fully initiate you! Kneel and get ready to receive the essence of the Tenvale Gorillas!'";
	WaitLineBreak;
	say "     Widely grinning and obviously knowing what awaits [if tempGender is 0]him[else]her[end if], the initiate pulls off [if tempGender is 0]his[else]her[end if] shirt and pants without hesitation and throws them aside, then kneels with an eager expression on [if tempGender is 0]his[else]her[end if] face. [if tempGender is 0]His[else]Her[end if] hands fly to his crotch, [if tempGender is 0]jerking his own cock[else]fingering her pussy[end if] a few times until the first of the surrounding gorillas steps up and holds out his manhood. As the newcomer takes it in [if tempGender is 0]his[else]her[end if] mouth and eagerly starts to bob [if tempGender is 0]his[else]her[end if] head, you feel a hand close around your own cock - it's the gorilla next to you, starting to slowly jerk you off and saying, 'We're going clockwise, with everyone having a turn at his mouth, so it'll be a bit. How about we... take care of each other in the meantime?'";
	say "     With him already doing a very nice job of handling your manhood and his other hand running up your side before moving on to stroke over your nipples, you have no intention of saying no to this offer. Reaching out, you take your neighbor's erection in hand and start giving him a slow and long-lasting wank while getting busy feeling up his muscled body. It's quite nice to touch someone and be touched in this way and you close your eyes and moan silently while it lasts - until eventually, you hear your partner say, 'Your turn,' just as he pulls his hand away and the cocksucking newbie's lips close around your cock. It's clear that this [if tempGender is 0]guy[else]girl[end if] has had quite a bit of experience in taking care of male members, as [if tempGender is 0]he[else]she[end if] expertly deep-throats you and plays [if tempGender is 0]his[else]her[end if] tongue over just the right spots of the shaft and cock-head.";
	say "     You can't help but take hold of the gorilla's head and pump in and out of [if tempGender is 0]his[else]her[end if] throat a few times, but eventually let go again and allow the kneeling athlete to move on to your jerking buddy. Your neighbor gives a lusty groan of, 'Oh yeah! [if tempGender is 0]He[else]She[end if]'s a real pro with that sweet mouth of [if tempGender is 0]his[else]hers[end if]! No wonder you took your time,' while at the same time putting a hand on your shoulder to steady himself. Eventually, the kneeling fan moves on to take care of the next guy and you move back to a mutual jerk-off with your buddy, continuing until the cocksucker has done a whole round pleasing everyone waiting for his attention. Then suddenly, the gorilla jerking you off grunts loudly, 'Let's paint him white boys,' and his hand starts to really pump your cock.";
	WaitLineBreak;
	say "     Joining the frantic fapping all around, you have a little bit of a competition with the ape next to you, to see who can get the other off first... and you win. It's a pretty close thing, with just seconds between the grunted bellow signifying his first splash of cum spraying out over the kneeling [if tempGender is 0]man[else]woman[end if]'s arm and your own orgasm, pumping out a long streak of your creamy load to hit the newbie on the shoulder. The gathered simian wankers don't let their target wait long either, and within moments, [if tempGender is 0]he[else]she[end if] is soaked to the bone in warm and sticky cum. After the short while they need to finish coming and catching their breaths, the freshly cum-bathed fan is lifted by many hands, gripping [if tempGender is 0]him[else]her[end if] securely despite [if tempGender is 0]his[else]her[end if] slipperiness, then carried off to the showers with a chant of, 'One of us! One of us!' You glimpse [one of]a trail of black fur starting to grow on his body[or]his body starting to take stockier proportions[or]his face starting to shift into apian traits[at random] under the effect of the nanites.";
	say "     'I love this tradition,' your wanking partner says, then brings his fingers to his mouth to lick off the accumulated cum. 'Have fun with the rest of us,' he adds with a chuckle and gives your bare ass a playful swat before joining the others in the shower.";


to say GorillaTeamSexOrgy:
	say "     You take a look around the room. You quickly recognize known faces among the apes partying. [bold type]With whom will you have fun tonight?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Random";
	now sortorder entry is 1;
	now description entry is "Walk around the room and let one of the players accost you.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Josh";
	now sortorder entry is 2;
	now description entry is "Josh likes it rough.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Zach";
	now sortorder entry is 3;
	now description entry is "The big Zach is fond of cuddles.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mike";
	now sortorder entry is 4;
	now description entry is "Mike tries to experiment, and needs an encouraging partner.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Charles";
	now sortorder entry is 5;
	now description entry is "You know that Charles loves his new prehensile feet.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Nicholas";
	now sortorder entry is 6;
	now description entry is "There's never enough soft cotton socks for Nicholas.";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Random":
					chooseRandomPlayer;
				if nam is "Josh":
					now randGorilla is "Josh";
				if nam is "Zach":
					now randGorilla is "Zach";
				if nam is "Mike":
					now randGorilla is "Mike";
				if nam is "Charles":
					now randGorilla is "Charles";
				if nam is "Nicholas":
					now randGorilla is "Nicholas";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide to take your time and consider your options again.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
	if randGorilla is "Josh":
		say "[joshOrgyScene]";
	if randGorilla is "Zach":
		say "[zachOrgyScene]";
	if randGorilla is "Mike":
		say "[mikeOrgyScene]";
	if randGorilla is "Charles":
		say "[charlesOrgyScene]";
	if randGorilla is "Nicholas":
		say "[nicolasOrgyScene]";

to chooseRandomPlayer:
	let random be a random number between 1 and 5;
	if randomnumber is:
	-- 1:
		now randGorilla is "Josh"; [Quarterback - strong, assertive, prefers rough sex]
	-- 2:
		now randGorilla is "Zach"; [Running back - largest, gentle, likes cuddles]
	-- 3:
		now randGorilla is "Mike"; [wide receiver - smaller, unsure, always tops]
	-- 4:
		now randGorilla is "Charles";[lineman - dilettante, flirty, foot/sock kink]
	-- 5:
		now randGorilla is "Nicholas";[tackle - party goer, jockstrap/underwear kink]

		[TODO: Josh -> Public rough
		Zach -> worship
		Mike -> Bi-curious/experiment
		Charles-> Footjob
		Nicholas -> Sock pile]
Gorilla Team-Members ends here.
