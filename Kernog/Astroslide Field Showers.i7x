Version 2 of Astroslide Field Showers by Kernog begins here.

"Adds the Astroslide Field Shower, a room used for events whenever the player enters it."

Section 1 - General

Table of GameRoomIDs (continued)
Object	Name
Astroslide Field Showers	"Astroslide Field Showers"

Astroslide Field Showers is a room.
Astroslide Field Showers is north of Astroslide Field Locker-room.

[Not used as a classic room]
The description of Astroslide Field Showers is "".

instead of going to Astroslide Field Showers:
	if TimekeepingVar is 7 or TimekeepingVar is -1 or TimekeepingVar is 1 or TimekeepingVar is -7 or TimekeepingVar is 0 or TimekeepingVar is -8 or TimekeepingVar is 6 or TimekeepingVar is -2 or TimekeepingVar is 3 or TimekeepingVar is -5:[Shower scenes are available]
		say "[astroslideShowersStart]";
	else: [nobody in the showers]
		say "[astroslideEmptyShowersStart]";


Section 2 - Empty shower scenes

to say astroslideEmptyShowersStart:
		say "     You peer into the showers. The room is as empty as the rest of the building. You could use a moment of relaxation, and the free running water, although [bold type]there is a good chance that the water is infectious.[roman type]";
		say "     [bold type]Do you want to take a shower?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Use an invidual stall.";
		say "     [link]N[as]n[end link] - Renounce to a shower.";
		if player consents:
			LineBreak;
			say " [if player is not naked]You pull off your clothes, and fold them into a small pile, in a dry corner.[end if] You quickly jump into the nearest stall and turn the shower on. You clean and wash yourself, undisturbed. Who knew that taking a warm shower would become such an uncommon leisure? You scrub yourself clean, and take the opportunity of being alone to take a [']quick one['] out.";
			let random be a random number between 1 and 2;
			if ScaleValue of player <= 3 and Shower Rapist is not resolved and random is 1: [The rapist avoids attacking people larger than him]
				resolve Shower Rapist;
			else:
				say "[astroslideShowerResult]";
		else:
			LineBreak;
			say "     As tempting as the showers are, you do not want to risk a nanite infection. You turn around, and return to the locker-room.";

Section 3 - Shower Rapist event

[Fires when the player showers alone. A gorilla attempts to coerce the player into having sex.

Resolutions:
--1 player was coerced into sex
--2 player beat the rapist
--3 player was raped by the rapist
--4 player escaped and denounced the rapist
--5 player escaoed and did not denounce the rapist

Second time with Resolution 1:
	Rapist makes another, more coercise Attempt

Second time with Resolutions 3 or 5:
	Rapist goes straight for the rape
]
Table of GameEventIDs (continued)
Object	Name
Shower Rapist	"Shower Rapist"

Shower Rapist is a situation.
When play begins:
	add "Shower rapist" to the badspots of furry;
	add "Shower rapist" to the badspots of guy;

Instead of resolving Shower Rapist:
	if Resolution of Shower Rapist is 0:
		say "     'Why hello, good looking.' The mocking voice startles you and makes you turn around the opening of the stall. A gorilla is leaning on the doorframe, and openly oogles your body. 'Having a fun time?' Annoyed by the sudden interruption, you hide your exposed genitals the best you can, and ask the ape to fuck off. 'Now, now, that won't do,' the grinning ape says. 'Who authorized you to use these showers?' You coarsely reply that no one is using them at the moment. 'The [bold type]team[roman type] uses them. Do you think running water is a commodity in this city? And hot water, at that? You are in big trouble, [if player is herm or player is neuter]freak[else if player is male]boy[else]girl[end if].' Unnerved, you ask the ape what kind of trouble he is speaking about.";
		if charisma of player < 13:
			say "'You don't know the rules? Misuse of equipment reserved to the team, without a team member's approval, is punished by permanent ban from the entire campus.' You attempt to reply that the rules cannot be that harsh, but the primate cuts you off. 'They're as harsh as needed, considering the context. Do you think this campus is still holding on with goodwill and happy thoughts? But, there's a way to arrange ourselves.' The gorilla leaves his leaning position and blocks the exit of the stall with his massive body. 'After all, I am part of the team, so I [italic type]could[roman type] give my approval... If you give me a little service first, you know what I mean?' He stresses his last words with a slap of his flopping black dick. 'Come on, a little blowjob versus the entire campus closed off to you... [bold type]It's a simple choice for you, right?[roman type]";
		else:
			say "'You don't know the rules? Misuse of equipment reserved to the team, without a team member's approval, is punished by permanent ban from the entire campus.' Half-convinced, you reply that you have never heard such a rule. 'What do you know about the rules? You don't leave here, I'm sure,' the ape replies in a harsh tone  He leaves his leaning posture and blocks with his massive body the exit of the stall. You detect a hint of annoyance in his voice. 'After all, I am part of the team, so I [italic type]could[roman type] give my approval... If you give me a little service first, okay?' He stresses his last words with a slap of his flopping black dick. 'So get on your knees, or else I'll make sure the entire campus is off limits for you! [bold type]You don't want to cross me, do you?[roman type]";
	else if Resolution of Shower Rapist is 1:
		say "     'Hey, if it is not my cock-sucking friend.' The familiar, mocking voice, makes you turn around, and remember harrowing events from the past. The gorilla that coerced you into sucking him in these showers, a little before, blocks your way out of the stall. His predatory eyes are locked on you. 'What did I tell you about using the shower? Plus, if someone knows that you bribed a team-member for that, you'd be a serious shit.' You scream at him that he forced himself upon you, not the other way around. 'I did not force anything. We had a deal, you agreed, and I held my part of the bargain: I let you use the shower afterwards. Beside, who do you think my team-mates would believe: me, or a little [if player is herm or player is neuter]freak[else if player is male]boy[else]girl[end if]-shit like you? [bold type]You know where your best interest is, don't you?[roman type]'";
	if Resolution of Shower Rapist is 0 or Resolution of Shower Rapist is 1:
		say "     [link]Y[as]y[end link] - Agree reluctantly.";
		say "     [link]N[as]n[end link] - 'Choke on your own dick, pig.'";
		if player consents:
			say "     'Yes, you know what's good for you,' the ape says with a toothy grin. 'On your knees, then.' You obey reluctantly. Your first leg has barely touched the ground that the gorilla is already on you. His large belly traps you between his fat dick and the wall. 'Come on, get to work,' he says, slapping his shaft against your cheek. 'And do a good job, or you're out!' You glare at him, and slip the tip of his cock into your mouth. Being forced to suck a dirty cock right after cleaning yourself is not what you could say a pleasant moment. 'Stop wussing out. It's not even hard yet' the ape says as he forces you to take the rest of his flaccid cock. It slowly engorges with blood and starts blocking the back of your mouth. You groan to signal the ape to pull out, but he just chuckles. 'Not yet. Work for it.' Deciding that you have enough, you pull your head back. The hands of the primate catch you fast and pin you against the wall and squishes your [face of player] with his hips. His big cock crams inside your throat, and you start gagging. 'You pull out when I allow you to, bitch.' Only after humping against your face a few more times does he relent to pull out his cock. It rest in front of your mouth, rock hard and dripping with saliva. 'See bitch? Good job.' the ape sneers while you cough and gasp violently.";
			say "     Barely giving you the time to catch your breath, the gorilla plunges his cock in your mouth and uses your mouth like an inanimate sex toy. 'Mmm... You make the cutest noises, bitch, you know that?' Ten inches of ape cock buried into your throat prevent you from answering. 'I'm sure you must be all bothered down there, don't you?' he asks, before landing a kick in your privates. You gasp and gag in pain, to your molester's utmost joy. 'Oh, that felt awesome. Keep whining around my dick, bitch.' [italic type]Slap! Slap![roman type]";
			say "     Endless minutes pass. The lack of air turns your struggles into pathetic squirms from the ape's weight pressing you against the stall. 'Almost there, bitch. Almost... Ah...' You feel the gorilla's cock tremble inside you. 'Aaah fff!' One spurt. Two spurts. Three. Cum rains down your throat, until a violent gag makes it flow back into your mouth and your nostrils. The ape pulls your ape back and finishes himself on your face. 'Phew!' He throws your head away, letting you slump down on the floor. He smirks, then turns the water on to wash his crotch from your saliva and his cum. Without giving you even a single look, he walks away. '[if Resolution of Shower Rapist is 0]'Oh, by the way, you can use the shower. You'll need it. Ha ha ha ha![else]Enjoy your hard-earned shower. See you around, bitch. Ha ha ha![end if]' Groaning, you get back on your knees, and spit as much of the ape's cum as you can. You spend some time alone in the shower, trying to recover from what just happened, then hurries out. You'd rather forget everything.";
			infect "Football Gorilla";
			now Resolution of Shower Rapist is 1;
		else:
			say "     Roaring in anger, the gorilla beats his fist on his chest. 'You little shit! I''ll make you eat these words'.' He lunges at you, intent on subduing you as quickly as possible.";
			say "[showerRapistFight]";
	else if Resolution of Shower Rapist is 3:[straight up fight]
			say "     'I'm surprised to see you again here, bitch. Was my cock so good for you?' The familiar, mocking voice freezes you in place. You turn around to see the gorilla who molested you last time, standing barely a meter away from you, a glint of lust in his eyes. 'But I can tell you, [if player is herm or player is neuter]freak[else if player is male]boy[else]girl[end if], my cock can't get enough of your sweet little ass. Come over here!' Screaming, you push the ape away from you. The cocky smile turns into a frown, and the gorilla lunges at you. 'Don't fight it, slut. You're mine!'";
			say "[showerRapistFight]";
	else if Resolution of Shower Rapist is 5:
			say "     'Well, well. We meet again, [if player is herm or player is neuter]freak[else if player is male]boy[else]girl[end if].' The familiar voice freezes you in place. You turn around and gaze at the gorilla who almost molested you last time, and stood barely a meter away from you. His face has lost all hint of smugness or affability. 'Do you know how much trouble you gave me after your little stunt, bitch?' He gives the wall a strong punch, making it rumble. 'A fucking lot! So turn around a show me your ass, or better, try to put up a fight and let me ruin your ugly [face of player] face.'";


to say showerRapistFight:
		now inasituation is true;
		challenge "Football Gorilla";
		now inasituation is false;
		if fightoutcome >= 10 and fightoutcome <= 19: [Victory]
			say "     You manage to knock back your wannabe rapist, who crashes on the wall behind him, cracking the tiles from the impact. While the brute slowly slumps down, several gorillas arrive in the shower. 'Brock? What the fuck happened here?' You quickly explain what happened, showing the bruises of your fight as proof. The other apes look at you, then at their knocked down comrade, then back at you. For a moment, you fear that they take the side of your attacker, but then one of them punch the wall next to him and swears. 'I fucking knew it!'";
			say "Roman is called on, while two members of the team guard Brock's unconscious body, and another helps you wind down from what happened. The security of the campus arrives shortly after, and takes charge of the rapist. 'Don't worry,' one of the guards reassure you. 'We repurposed part of the security office to lock in this kind of scum. He won't be a problem anymore, and if we can we'll hand him over to a justice court.' You are escorted back to the locker-room. The rest of the team is nothing but supportive. They tell you that this Brock person has been fired from the team a week ago due to misconduct, and that there were nasty rumors surrounding him, and that if you come again, you could use the shower anytime.";
			now Shower Rapist is resolved;
			now Resolution of Shower Rapist is 2;
		if fightoutcome >= 20 and fightoutcome <= 29:[Loss]
			say "     The gorilla sneers, as he picks up your body and press it against the stall's wall. 'There. You see, you made this harder for yourself. Not that I complain, heh heh.' You feel the ape's growing cock slap your lower back, the zone of impact growing with each slap. 'Feel that, bitch? That's going into your ass, whether you want it or not.[bold type]You do not feel so good... Do you try to struggle?[roman type]";
			say "     [link]Y[as]y[end link] - Struggle.";
			say "     [link]N[as]n[end link] - Faint (skip the scene).";
			if player consents:
				Line break;
				say "     A couple of nasty spanks stops your squirming. 'Say still, bitch. This is happening.' You feel the tip of his cock press against your butthole. 'Hope you didn't expect me to go slow on you,' he says, before ramming his entire cock inside of you. You howl, as you feel your body bulge to accomodate his size, and your nanites working in a frenzy to fix you. Using the tight walls of the stall as support, the gorilla piledrives into you again and again, roaring in joy. 'Fuck yeah! I fucking love, ha, this body, hun! It's the beeest!'";
				say "     He fucks you again and again, holding you when you start to fall over and mocking your tears and your whines of discomfort. 'Not enjoying yourself, huh? Too bad, fucker, 'cause now's all about me.' He punches the shower button and lifts your head up, so that you receive a faceful of water. 'You look ugly when you cry, you know? Have some water. Wash your face.' The ape suddenly buries back all of his cock and keeps humping your ass, as he suddenly reaches his climax. 'Oh fuck, here it comes! Here it... Nnrrr!' The gorilla stays immobile and fully hilted into you for a moment, while hot cum travels in your intestines and reach your stomach. Eventually, satisfied, he lets you go and pull out. With nothing to hold your extenuated body, you slump down on the wet floor. The gorilla gives a last slap to your gaping, abused ass expelling the overflow of his orgasm, and walks away, leaving you alone. 'Best ass I had in years. I love this apocalypse. Hehehahaha!'";
			else:
				Line Break;
			say "     You regain consciousness some time later, slumped over the tiled floor of the shower stall. You turn on your back with great effort, as you try to recollect what happened. Your ass feels itchy. When you pass your hand over it, your palm is splattered with cum. Your realize that your ass is gaping and leaking cum. Having put two and two together, you lift your beaten, raped body and walk out of the stall. Without a word, you get your stuff back and return to the locker-room.";
			now Resolution of Shower Rapist is 3;
		if fightoutcome >= 30: [Flight]
			say "Noticing an opening, you slide between your attacker's legs, and make a run for the locker room. You can hear him shout behind you. 'Come back here, you little fucktoy!'[line break]'What's happening here?' You almost fall on the floor as another gorilla appears at the entrance of the showers, blocking your only escape path. He looks at you, then at the primate behind you. 'What's happening here, Brock? What is all that shouting about?' The new gorilla gives you a stern look, waiting for Brock's answer, but also yours. Could he help you if you told what happened, or are these two gorillas accomplices? [bold type]Should you say anything?[roman type]'";
			say "     [link]Y[as]y[end link] - Ask for help.";
			say "     [link]N[as]n[end link] - Say nothing.";
			if player consents:
				LineBreak;
				say "     You accuse [']Brock['] of attempted rape, showing the bruises from your fight as a proof. 'You fucking liar!' your attacker cries out.[line break]'Is that true?' the other gorilla asks.[line break]'Don't believe a word [subjpro_cap] says! [subjpro_cap]'s just trying to walk out on...'[line break]'Brock, if you know what you've put yourself into, you'll shut your fucking mouth right now.' The gorilla shakes his head. 'We had suspicions, you know. But most of us did not want to believe this. That you were just a jerk like Josh.'[line break]'Wait, let me expl...'[line break]'I'll get security on your ass.'";
				say "Hearing the word [']security['], Brock's body jerked to life and started running towards the exit. If eyes could kill, the glare that the ape gives you as he passes by you would have reduced you to paste. Even his former comrade seems to have been taken by surprise, as your would-be rapist pushes him out of the way and sprints away as fast as he can. 'Hey, come back here!' your helper shouts, as he starts running after the other gorilla. Left alone, you slowly pick up your stuff, trying to forget that unpleasant moment from your memory, and make your way to the exit, hoping to never hear about the gorilla again.";
				now Resolution of Shower Rapist is 4;
				now Shower Rapist is resolved;
			else:
				LineBreak;
				say "     'Ah, uh, don't worry,' your attacker says, breaking the silence and taking advantage of the ambiguous situation. 'I heard someone using the shower and I scared the [if player is male]boy[else]girl[end if] off. [subjpro_cap]'s not causing any trouble.'[line break]'Are you sure?' The second gorilla looks back at you. You cannot help but think that this question was mainly for you, but by the time you are about to say something, [']Brock['] is right next to you, an arm unpleasantly wrapped around your shoulder.[line break]'Yeah, don't worry. Case closed,' he says in a cold tone. The other gorilla sighs. 'Coach and the rest of us are really tired of your shit, Brock. You've already been expelled from the team, so stop causing trouble.'[line break]'Yeah, yeah...' The strong arm leaves your neck, and the gorilla leaves you, escorted by his brethren, with ominous words. 'See you again, [if player is herm or player is neuter]freak[else if player is male]boy[else]girl[end if].'";
				now Resolution of Shower Rapist is 5;



to say astroslideShowersStart:
	say "     You peer into the showers. The room is filled with water vapor, and the laughter and moans of footballers and fans alike. You could use a moment of relaxation, although [bold type]there is a good chance that the water is infectious[roman type]. There are several stalls and spaces to choose.";
	LineBreak;
	say "     [bold type]Do you want to take a shower, and if so where?[roman type][line break]";
	say "     [link](1)[as]1[end link] - In one of the unoccupied stalls.";
	say "     [link](2)[as]2[end link] - In the group shower.";
	say "     [link](3)[as]3[end link] - Join someone in an occupied stall.";
	say "     [link](4)[as]4[end link] - Renounce to a shower.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to shower in one of the unoccupied stalls, [link]2[end link] to shower in the group shower, [link]3[end link] to join someone in one of the stalls, or [link]4[end link] to renounce using the showers.";
	if calcnumber is 1:
		LineBreak;
		say "[astroslideShowers1]";
		WaitLineBreak;
		say "[astroslideShowerResult]";
	else if calcnumber is 2:
		LineBreak;
		say "[astroslideShowers2]";
		WaitLineBreak;
		say "[astroslideShowerResult]";
	else if calcnumber is 3:
		LineBreak;
		say "[astroslideShowers3]";
		WaitLineBreak;
		say "[astroslideShowerResult]";
	else:
		say "     As tempting as the showers are, you do not want to risk a nanite infection. You turn around, and return to the locker-room.";
	WaitLineBreak;

to say astroslideShowers1:
	say "     You pull off your clothes and place them on a bench, then enter one of the stalls. The water runs on your [bodyname of player] body. You know you will regret it later, but for now, you enjoy the warm shower and the scented soap on your body. You feel something poke your leg. Intrigued, you look down, and see a gorilla cock coming out from a hole in the wall separating your stall from the next. The black dick pokes you once more. It seems someone wants to have some glory hole fun with you.";
	if player is male:
		say "     Having a male equipment yourself, you have the choice between sucking dicks poking in your glory hole, or putting your own cock on display for someone else. [bold type]What do you choose?[roman type][line break]";
		say "     ([link]Suck[as]y[end link]) - Practice fellatio.";
		say "     ([link]Be sucked[as]n[end link]) - Receive fellatio from other people.";
		if player consents:
			LineBreak;
			say "[astroslideShowers1Give]";
		else:
			say "     After some time, the cock pulls away, and the gorilla leaves the shower. You see him pass your stall, barely giving you a glance. It does not matter. Another gorilla fills his place, and you quickly take the opportunity to present [if cocks of player > 1]one of [end if]your [cockname of player] shaft[smn] to the newcomer. After a few seconds, he notices you. 'Hey... Hello, pretty boy,' he says. You hear him get on his knees on the other side, before a pair of lips wraps around your dick. The guy is definitely not to his first glory hole job. Without the ability to see what he is doing, the ape keeps throwing you off, licking and stroking and sucking, and keeping you on your toes. You let out aroused moans, as you grind your hips against the wall.";
			if player is knotted:
				say "     The gorilla toys with you, making pauses each time you warn him that you are close. You do not mind, as you want this perfect moment to last as long as possible. But, in a miscalculated timing, he pushes down to your base just as your knot inflates, trapping your cock into his mouth. The ape lets out a panicked squeal, while you are in heaven. You tell him in no uncertain terms that either he makes you cum, or he chokes on [cockname of player] cock. He gives short bobs and sucks on your knot, in a panic. He holds on rather well, but you eventually hear him gag from being forced to deepthroat your knotted cock.";
				say "     Fortunately, you were very close, and you cum just in time. The ape is forced to drink your load, and you can hear (and feel) him gulp down. He desperately pulls, trying to escape the flow, but each tug on your cock only makes your orgasm more intense. A good effort eventually makes your knot pop out, and you can hear the ape gasp. 'Gah! Fuck! Damn, that was intense,' you can hear him say. The hot water stops running, and you take it as your cue to leave. You notice on your way out that you attracted quite a crowd, and cannot help but have a small smirk on your face.";
			else:
				say "     The gorilla toys with you, making pauses each time you warn him that you are close. You do not mind, as you want this perfect moment to last as long as possible. After having played for what felt like an eternity, your cocksucker decides to push you over the edge. He suddenly goes all the way down your cock and, with long, hard bobs of the head, makes you cum hard. You can hear him drink the first drops, before letting the rest crash into the tiled floor with rapid strokes of his strong hand. He eventually let go of your shaft, and you lean on the other wall, exhausted and content. The ape walks out of the stall and gives you a big smile, as he lewdly licks his fingers, coated in your cum. The hot water stops running, and you take it as your cue to leave. You notice on your way out that you attracted quite a crowd, and cannot help but have a small smirk on your face.";
	else:
		say "[astroslideShowers1Give]";

to say astroslideShowers1Give:
	say "     You kneel on the tiled floor, while the water keeps flowing on your head, and you get to work on the large humanoid cock in front of you. The gorilla in the other stall obligingly keeps his thick shaft still, letting you go at your rhythm. You take great pleasure in playing with the glans and the foreskin, and alternate licks and nibbles with long swallows inside your cock. You hear the ape groan and moan. [one of]'Oh fuuuck.'[or]'Whoever you are, don't stop.'[or]'Uhhn yeaaah...'[at random] You find this terribly exciting, and you start masturbating yourself at the same time.";
	say "     It becomes a sort of game between you two. You make sure that the owner of the cock you are servicing is as noisy as you can, a very successful mission. You can hear the eyes of onlookers, who get to watch the entire scene thanks to the lack of door on the stalls. You play with your new pal, making sure to keep it on edge every time you hear his breath accelerate. Suddenly, you hear someone else step in the other shower. Looking down, you see another pair of gorilla feet standing behind your partner. Your hear some whispers, then the first ape almost shout. 'Yes, give it to me. He's gonna make me mad.'";
	say "     'Ooooh fuck!' the gorilla howls, shortly followed by a small slap. A large dose of salty precum lands in your mouth. The first slap is quickly followed by a series of uninterrupted sex noises as your partner receives an intense buttfuck. You keep up the assault on your end. He has yet to know what [']mad['] means yet. The footballer does not resist your double-team and slams his hips against the stall's wall as he climaxes hard. 'Oh fuck! Oh fuck! Ooooh! Aaaah!' Ape cum launches into your mouth, then your face as you pull out and stroke the thick cock, making sure to milk every last drop. The ape can only submit and go through your ministrations, pinned against the wall by his other partner.";
	say "     You quickly finish yourself, helped by the noises of the second gorilla finishing himself into the first one. Your cum slowly goes down the drain, alongside his. The hot water stops running, and you take it as your cue to leave. You notice on your way out that you attracted quite a crowd, and cannot help but have a small smirk on your face.";

to say astroslideShowers2:
	say "     The large space is already occupied by several of your teammates. You waste no time joining into the fray, warmly welcomed by the rest of the team. Everyone is having fun covering each other with soap and tending to their bodies. You barely have the time to grab the bottle of soap that a greedy hands grabs your [if player is male]cock[else]pussy[end if] with a foam-covered hand and starts playing with it. Other 'helping hands' press around you. Some give you a well-deserved massage, while others play with your other erogenous spots. The entire group devolves into a sea of ape bodies, with your [bodyname of player] form in the middle. Pressed together and fondling each other.";
	if player is male:
		say "     You eventually find yourself on your back, the warm water running down on the floor next to you, your [cock of player] dick raised in the air. It quickly finds a firm ass to sit on, as one of the other players ride you eagerly. The rest of the group agglutinates around you. A second cock slams inside your partner's ass, which he reacts to with a lewd moan. The thick gorilla dick grinding along your [cockname of player] shaft heightens the pleasure, and makes you lose focus of the world around you. You feel your hands being guided to new cocks to stroke. Another ape jumps on your chest and wraps his legs around your head. Strong prehensile feet clamp on your skull, and keep you steady as the ape pushes his member into your mouth.";
		say "     You lose the sense of time in the ongoing orgy. Soon, much too quickly in your opinion, you and your teammates cum one after the other, covering the shower in a copious quantity of sperm, quickly washed away by the running water. You crawl away from the body pile with great difficulty, just as a fresh batch of newcomers join in.";
	else:
		say "     You eventually find yourself on your back, the warm water running down on the floor next to you, your now accessible pussy is quickly filled by an eager ape, who starts [if cunt length of player < 3]squeezing[else if cunt length of player < 12]grinding[else]poking[end if] into your [cunt size desc of player] cunt. The rest of the group agglutinates around you. A thick cock slams inside your partner's ass, which he reacts to with a lewd moan. It encourages him to pound into you even more, and you begin to lose focus of the world around you. You feel your hands being guided to new cocks to stroke. Another ape jumps on your chest and wraps his legs around your head. Strong prehensile feet clamp on your skull, and keep you steady as the ape pushes his member into your mouth.";
		say "     You lose the sense of time in the ongoing orgy. Soon, much too quickly in your opinion, you and your teammates cum one after the other, covering the shower in a copious quantity of sperm, quickly washed away by the running water. You crawl away from the body pile with great difficulty, just as a fresh batch of newcomers join in.";

to say astroslideShowers3:
	say "     You spot a gorilla leisurely taking his shower in one of the stalls. You approach him, and give his firm butt a squeeze. 'Hmm, I'm sure there's plenty of other stalls,' the ape says, as he turns around. You reply that you want to use this specific stall, and the male grins. 'And why's that? Did you see something you like?'";
	if player is male:
		say "     You give the ape's butt another squeeze. 'You have a point. You won't find any cuter butt in the whole room.' The both of you squeeze together inside the stall, as you make out passionately. The sound of the water running on your shoulders covers your voices, but the stall has no door, and everyone can see you. This adds to the excitement, and the both of you start to stroke each other's cock[smn] in no time. At this moment, the shower stops. 'Great timing,' the ape says. He turns around, and presents his butt to you. 'Ready it for me, would you?' You pour a copious amount of soap on your hands and press a finger inside the gorilla's ass. The easiness of the penetration told you it was definitely not his first time, nor his second. 'C-Come on, don't be shy. Put more of them.'";
		say "     You comply, and press a second digit. A third finger quickly joins the fray, to the footballer's great pleasure. You were about to use your fourth finger when he stops you. 'Wait. I want the real thing.' You do not lose any time lining up your [cockname of player] shaft with his hole, and push. ";
		if cock length of player < 6:
			say "Your [cock of player] cock has no problem slipping all the way in. 'Mmm... That kind of size feels nice too,' your partner comments. 'Come on, get crazy, I can take it.' [if cocks of player > 1]A little vexed, you decide to oblige him. You bring your [cocks of player] dicks together, and push all of them in, stretching him even more. 'Oooh, that's new. Huhnn...' the ape sighs. You cannot help but shudder, as having your shafts squeezed together in one hole brings a whole set of inhabitual sensations.[else]A little vexed, you decide to oblige him, and hump his ass with large, powerful thrusts. 'Yeah, like that... Hmmm.' The ape squeezes his ass around your length, making sure you enjoy it as much as he does.[end if]";
		else if cock length of player <= 12:
			say "Your [cock of player] cock goes in, bit by bit. 'Mmm... Yeah, keep going,' your partner comments. 'Come on, get crazy, I can take it.' [if cocks of player > 1]Suddenly inspired, you pull out and get back to the charge, this time with your [cocks of player] dicks together, and push all of them in, stretching him even more. 'Oh fuuuuck. H-How many of you are in there? Hnnnf!' the ape gasps. You cannot help but shudder, as having your shafts squeezed together in one hole brings a whole set of inhabitual sensations.[else]You eagerly oblige him, and hump his ass with large, powerful thrusts. 'Nice and hard. Yeah...' The ape squeezes his ass around your length, making sure you enjoy it as much as he does.[end if]";
		else:
			say "Your [cock of player] cock goes in, but your progress is slow. 'Ah, fuuuuck. So big,' your partner comments, as your head just popped in. 'G-Give it to me, I can take it.' You pump your hips back and forth, until the ape is filled to max capacity. Then, you grab his hips and give his ass short, quick thrusts which make water and soap fly all around you[if cocks of player > 1]. Your other shafts rest lazily on the fur of his back, mixing precum to the foam[end if].";
		say "     You eventually reach your limit and, with loud grunts, you make a few final thrusts into your partner, before emptying your balls inside his innards. He finishes quickly after you, as he reached for his cock with one hand and masturbated furiously, pouring his own load down the shower drain. The both of you, spent, remain in this position for a moment. Eventually, you pull out of the ape, and you enjoy the rest of the shower with him, while you clean the remnant of your mutual mess. The shower stops once more, and you come out together of the shower, under the pleased eye of the few onlookers who watched the show you just gave.";
	else:
		if anallevel is 3:
			say "You cop a feel of the ape's cock. 'Oh, I see. Finest cock in the room, I can't hold it against you. The both of you squeeze together inside the stall, as you make out passionately. The sound of the water running on your shoulders covers your voices, but the stall has no door, and everyone can see you. This adds to the excitement, and you do not care much as you grope and fondle each other. His hands seem peculiarly fond of your [breasts of player] [breast size desc of player] breasts. At this moment, the shower stops. 'Great timing,' the ape says. He turns you around, and makes you present your butt to him. 'Keep it like this, would you?' He reaches for the soap dispenser, and coats his fingers in a good amount of it. Then, he slowly slips one of them into your ass. His dexterity betrays his experience, as he fingers you slowly, waiting for you to be used to his size to add a second, then a third finger.";
			say "     Once he deems you ready, the ape lets his cock slide down against your butt. He covers it in soap too, and press it against your anus. 'Here we... go.' You feel his large cock pop inside of you. He did a great job getting you ready, as you barely feel any inconvenience at all. Once he is all the way in, your partner turns on the shower. As the steamy water runs down your back, the ape fucks you with smooth, quick thrusts. Your hands pressed on the shower's wall for support, you enjoy the tremors running through your spine, which make the water dance on your [skinname of player] skin.";
			say "     The gorilla ends up cumming inside of you, and you follow not long after, milking his cock during your orgasm. The both of you, spent, remain in this position for a moment. Eventually, the ape pulls out, and you enjoy the rest of the shower with him, while you clean the remnant of your mutual mess. The shower stops once more, and you come out together of the shower, under the pleased eye of the few onlookers who watched the show you just gave.";
		else:
			say "You cop a feel of the ape's cock. 'Oh, I see. Finest cock in the room, I can't hold it against you. The both of you squeeze together inside the stall, as you make out passionately. The sound of the water running on your shoulders covers your voices, but the stall has no door, and everyone can see you. This adds to the excitement, and you do not care much as you grope and fondle each other. His hands seem peculiarly fond of your [breasts of player] [breast size desc of player] breasts. At this moment, the shower stops. 'Great timing,' the ape says. He turns you around, and makes you present your crotch to him. 'Keep it like this, would you?' His fingers run along your pussy, playing around and stroking until you get wet inside. Then, he slowly slips one finger inside of you. His dexterity betrays his experience, as he fingers you slowly, waiting for you to be used to his size to add a second, then a third finger.";
			say "     Once he deems you ready, the ape lets his cock slide down against your labia. He covers it in soap too, and press it against your lower hole. 'Here we... go.' You feel his large cock pop inside of you. He did a great job getting you ready, as you barely feel any inconvenience at all. Once he is all the way in, your partner turns on the shower. As the steamy water runs down your back, the ape fucks you with smooth, quick thrusts. Your hands pressed on the shower's wall for support, you enjoy the tremors running through your spine, which make the water dance on your [skinname of player] skin.";
			say "     The gorilla ends up cumming inside of you, and you follow not long after, milking his cock during your orgasm. The both of you, spent, remain in this position for a moment. Eventually, the ape pulls out, and you enjoy the rest of the shower with him, while you clean the remnant of your mutual mess. The shower stops once more, and you come out together of the shower, under the pleased eye of the few onlookers who watched the show you just gave.";
			impregchance;

to say astroslideShowerResult:
	say "The shower refreshed you. [bold type]Your HP, your libido and your thirst recover[roman type]. However, [bold type]the water propagates the nanites in your body, [bold type]infecting you with the Football Gorilla strain[roman type].";
	PlayerHealed 20;
	LibidoLoss 40;
	PlayerDrink 25;
	infect "Football Gorilla";

Astroslide Field Showers ends here.
