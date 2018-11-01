Version 2 of Astroslide Field Locker-room by Kernog begins here.

"Adds the Astroslide Field Locker-room, where players can have sex with gorilla footballmen, become part of the team, and conduct business related to them."

[Version 2 - complete lore and organisation refactoring
This extension contains the Football Field Locker-room, and events related to it.

This extension works along with Kernog/Roman and Kernog/Tenvale Gorillas Football Team.
Loading these extensions in a block is required for the various properties and checks.

Please follow the following schedule when adding scenes to the locker-room:
Night (TimekeepingVars: 7/-1 1/-7 0/-8): the locker-room is filled with an ongoing orgy, that the player and other NPCs can join.
Early morning (6/-2): The footballers go to a briefing in the locker-room. They can be talked to, but no sex is going on except in the showers.
Day (5/-3 4/-4): training takes place. The locker-room is empty, but can be visited by stalking fans and gorillas skipping training
Evening (3/-5): the footballers clean the field and go back to the lockers, to prepare themselves for the match. Same thing than early morning
Early night (2/-6): a daily football match is taking place. The locker-room is completely empty, as everyone is focused on the match

TODO: add Roman quest modifications for the second visit descriptions

TODO: Add a storage room to the west, containing "Bed bunks" object that the player can use to rest. It cannot be carried, and the rest is hazardous as a gorilla spoons with you. Lucky: full rest. Unlucky: libido takes over: half-rest, but libido gets to zero. Libido influences the result of the random test. The room is only open during the night.
Plan: leave the room open during training/match if roman's quest is not resolved
]

Section 2 - General

Table of GameRoomIDs (continued)
Object	Name
Astroslide Field Locker-room	"Astroslide Field Locker-room"
Astroslide Field Storage Room "Astroslide Field Storage Room"

Astroslide Field Locker-room is a room.
[E leads to Astroslide Football Field.
N leads to Showers
W leads to storage room]

The description of Astroslide Field Locker-room is "[FootFieldLockerdesc]".

to say FootFieldLockerdesc:
	if TimekeepingVar is 7 or TimekeepingVar is -1 or TimekeepingVar is 1 or TimekeepingVar is -7 or TimekeepingVar is 0 or TimekeepingVar is -8: [Night: ongoing orgy]
		say "     You are standing in the high-standard locker-room of the Tenvale Gorillas team, with most of the team and their hardcore fans all around you. The gorilla strain seems to have spread very easily among the athletically minded students of this college[if "Football Gorilla" is listed in EncounteredEnemies of player], and probably beyond since you encountered some of them around the campus[end if]. In retrospect, it was a good thing that this place was built so generously sized, as most of the entire team who is around twenty-people strong, supportive staff included, can fit in there with the handful of admirers spending the night with them, and the storage rooms are large enough to be turned into a small dormitory, complete with bed bunks.";
		say "     The team-members who are not resting in their beds, which means mostly everyone, are in the middle of an after-match orgy with a small party of fans. The lube sponsoring the football team is put to good use as various species and genders mingle around the players, and most of the latter are not asked twice in having noisy, messy sex on the benches and on the tiled floor. From the sound of running water and laughing voices, you suspect that the same kind of activity takes place in the showers. It seems that the apes do not need much sleep, as there is an hourly ballet of primates leaving and joining back the orgy.";
	else if TimekeepingVar is 6 or TimekeepingVar is -2:[Early morning: training briefing]
		say "     You are standing in the high-standard locker-room of the Tenvale Gorillas team, where the whole team hears the briefing of their coach Roman. The gorilla strain seems to have spread very easily among the athletically minded students of this college[if "Football Gorilla" is listed in EncounteredEnemies of player], and probably beyond since you encountered some of them around the campus[end if]. The ape keeping order in the room allows you to stay and listen, but a big sign labelled [italic type]Briefing in progress. Do not disturb[roman type] is placed at the entrance and warns you to leave the team-members undisturbed. Some gorillas come and go between the briefing and the showers, and some stiffled sound tells you that some forbidden activity might be going on there. In retrospect, it was a good thing that this place was built so generously sized, as most of the entire team who is around twenty-people strong, supportive staff included, can fit in there for the briefing, and the storage rooms are large enough to be turned into a small dormitory, complete with bed bunks, which is currently closed for the moment.";
	else if TimekeepingVar is 5 or TimekeepingVar is -3 or TimekeepingVar is 4 or TimekeepingVar is -4:[Training]
		say "     You are standing in the high-standard locker-room of the Tenvale Gorillas team. The big room is empty, as everyone is gone to training. The dirty clothes of the few players who manage (and care) to wear fitting clothes are sprawled on the floor, among those left by the fans who spent the last night with the team. In retrospect, it was a good thing that this place was built so generously sized, as most of the entire team who is around twenty-people strong, supportive staff included, even if it feels rather empty at the moment. Moreover, the storage rooms are large enough to be turned into a small dormitory, complete with bed bunks, which is currently closed for the moment.";
	else if TimekeepingVar is 3 or TimekeepingVar is -5: [End of training]
		say "     You are standing in the high-standard locker-room of the Tenvale Gorillas team, where the whole team hears the briefing of their coach Roman. The gorilla strain seems to have spread very easily among the athletically minded students of this college[if "Football Gorilla" is listed in EncounteredEnemies of player], and probably beyond since you encountered some of them around the campus[end if]. The ape keeping order in the room allows you to stay and listen, but a big sign labelled [italic type]Briefing in progress. Do not disturb[roman type] is placed at the entrance and warns you to leave the team-members undisturbed. Some gorillas come and go between the briefing and the showers, and some stiffled sound tells you that some forbidden activity might be going on there. In retrospect, it was a good thing that this place was built so generously sized, as most of the entire team who is around twenty-people strong, supportive staff included, can fit in there for the briefing, and the storage rooms are large enough to be turned into a small dormitory, complete with bed bunks, which is currently closed for the moment.";
	else if TimekeepingVar is 2 or TimekeepingVar is -6:[Match in progress]
		say "     You are standing in the high-standard locker-room of the Tenvale Gorillas team. The big room is empty, as everyone is gone to the match, whose sound you can hear behind you. The dirty clothes of the few players who manage (and care) to wear fitting clothes are sprawled on the floor, among those left by the fans who spent the last night with the team. In retrospect, it was a good thing that this place was built so generously sized, as most of the entire team who is around twenty-people strong, supportive staff included, even if it feels rather empty at the moment. Moreover, the storage rooms are large enough to be turned into a small dormitory, complete with bed bunks, which is currently closed for the moment.";
	if "Gorilla Locker-room Tape 1" is not listed in tapes of player:
		say "     You spot a cassette tape on one of the benches. Curious what may be on it, you pocket it right away.";
		LineBreak;
		say "[bold type]Locker-room Tape has been added to your tape inventory![roman type][line break]";
		add "Gorilla Locker-room Tape 1" to tapes of player;
	if "rubber sneakers" is listed in the invent of Astroslide Field Locker-room:
		say "     You notice a pair of odd-looking sneakers, in a corner of the room.";


Section 3 - Tape description
[Gorilla Locker-room Tape 1 scene. Should we move it?]
to say FootballTeamSlice1:
	say "     You put the tape that Roman gave you inside the recorder, and press [']play[']. The video starts on a close-up of a Black young man's face. 'How do you... Ah. There we go,' he says, before pulling the camera away from his face. It is a rather good-looking young man, clad in football gear. As he was about to speak, another player tugs him by his braids. 'Hey, Zach, is it rolling?' Chuckling, Zach turns the camera over, showing another, younger Black male. His naked chest still wet from the shower and a towel on his waist. 'You should get some clothes, Mike,' you can hear Zach say.[line break]'Zaaaach,' Mike groans. 'Stop it. I'm already self-conscious enought as it is.'[line break]'There's no sin in showing our lady viewers some eye candy. And our boy viewers too.'[line break]'[italic type]Especially[roman type] the boys, is that right, Z?' Zach's brother asks in a slightly annoyed tone.[line break]'Zach, Mike, what are you doing with the camera?' someone says out of field. The camera turns, showing a strong-looking man in his thirties. 'This camera is for the team's blog. It's not a toy,' he chastised the two young men.[line break]'Sorry, coach Roman,' Zach apologizes. Behind Roman, the locker-room is bristling with activity. Players come and go; some wave to the camera, before the feed stops.[first time] You realize that this is the morning just before the start of the infection, and that there will not be any blog to upload this video to.[only]";

Section 4 - Storage room and bed bunks
Astroslide Field Storage Room is a room.
Astroslide Field Storage Room is west of Astroslide Field Locker-room.
The description of Astroslide Field Storage Room is "You are in the storage room of the football stadium. The balls and football gear has been put away somewhere else, and has been replaced by a half-dozen beds. [if TimekeepingVar is 7 pr TimekeepingVar is -1 or TimekeepingVar is 1 or TimekeepingVar is -7 or TimekeepingVar is 0 or TimekeepingVar is -8]All the beds except one are occupied by gorillas taking either a night of sleep, or a short rest before returning to the party next door.[end if]";

Empty bunk is a thing. Understand "Bunk" as Empty bunk.
Understand "use Empty bunk" or "use bunk" as resting. [Uses resting action in story.ni. Which will then do the check and run the event if needed]
The Empty bunk is in Astroslide Field Storage Room.
The Empty bunk is rooted in place.
The Empty bunk is restful.

to emptyBunkRest: [Modified clone of the rest function in story.ni]
	let num1 be maxHP of the player divided by 4;
	let num2 be ( ( stamina of the player * 3 ) / 2 ) + level of the player;
	let libidoTest be a random number between 20 and 80; [> 80 is autofailure. < 20 is autosuccess]
	if libido of player < 20 or libido of player < libidoTest: [Calm, restful night]
		say "     You resist the temptation to push back against the gorilla's muscular chest, and focus on getting some sleep. After some more shuffling, the ape eventually finds a good position. His arm swoops over your head, and brings you back in a spooning position. You have a hard time deciding whether you are sleeping with the gorilla as a teddy bear, or the other way around. Nonetheless, you feel as secure as you could be, and spend a couple of hours sleeping soundly. You are woken up involuntarily, a few hours later, by the primate rolling out of the bed and walking back to the locker-room. You take the opportunity to get out of the still warm bunk yourself, and go back on your way.";
		if num1 >= num2, increase HP of player by num1; [best value chosen]
		if num2 > num1, increase HP of player by num2;
		if Sleeptimercount >= 10:
			decrease Sleeptimercount by 6;
		else:
			now Sleeptimercount is -2;
			if "Well Rested" is not listed in feats of player:
				FeatGain "Well Rested";
				say "     Well Rested - All stats increased by 2!";
				increase strength of player by 2;
				increase dexterity of player by 2;
				increase stamina of player by 2;
				increase charisma of player by 2;
				increase intelligence of player by 2;
				increase perception of player by 2;
				now WellRestedTimer is 6;
	else: [Restless night, libido loss as a compensation]
		say "     You feel uncomfortable from feeling that big body (and that big cock) grinding against you. So you shuffle yourself, and the gorilla grinds back. The game goes on for a moment. Your moves are involuntary at first, but you and your not-so-sleeping partner start to make a game of grinding against each other, and the ape's pulsating, erect dick is quickly sliding between your thighs. 'Mmm... Okay, you win. Just stay like that,' the ape says as he starts moving his cock back-and-forth between the tight space formed by your [skin of player] tighs. [if player is herm]While the ape's cock keeps grinding against your pussy, his big hand grabs your [cock of player] and beats your meat slowly[else if player is male]While the ape's cock keeps grinding against your balls, his big hand grabs your [cock of player] and beats your meat slowly[else]While the ape's cock keeps grinding against your pussy, his big thumb rolls against your clitoris[end if], in rythmn with his own movements. Both of you try to stiffle your moans the best you can, but just as you get close, someone throws a towel next to you and grumbles: 'Don't stain the sheets, for God's sake. We just washed them.' You hurriedly wrap the towel around the ape's cock, just in time for him to grunt loudly and discharge a sizeable amount of cum. You reach your own climax shortly after, catching its byproduct with the towel as well. You spend the next couple of hours resting from your improvised sex, getting some rest but not as much as you had hoped. At least you were able to release some sexual tension.";
		if num1 <= num2, increase HP of player by num1; [lowest value chosen]
		if num2 < num1, increase HP of player by num2;
		if Sleeptimercount >= 10:
			decrease Sleeptimercount by 3;
		else:
			now Sleeptimercount is -1;
		LibidoLoss 30;
	follow the turnpass rule;
	follow the player injury rule;
	say "You are [descr]([HP of player]/[maxHP of player]).";


[Door is opened during the night and closed during the day, except during training until Secret of Coach Roman step 1 is resolved (TODO when taking care of Roman)]
[The everyturn rule is placed in Gorilla Team-members, as it follows the movements of the team]
The storage room door is a door.
The storage room door is east of the Astroslide Field Storage Room and west of the Astroslide Field Locker-room.
The storage room door is not openable.
The description of the storage room door is "A strong-looking door separating the main room from the storage, that has been repurposed as a dormitory for the football team. A mat has been nailed to the door, in order to provide some sound insulation for the sleepers. [if storage room door is closed]It is currenly closed and locked[else]It is currently ajar, allowing you access to the next room[end if].";
[TO REINTRODUCE INTO STORAGE ROOM]

[Events]

Table of GameEventIDs (continued)
Object	Name
PeepingRoman	"PeepingRoman"

PeepingRoman is a situation.
The sarea of PeepingRoman is "Nowhere".

instead of going to Astroslide Field Locker-room while (PeepingRoman is active and PeepingRoman is not resolved and Furry is not banned and Furry is not warded and a random chance of 1 in 3 succeeds):
	move player to Astroslide Field Locker-room;
	PeepingRomanEvent;

to PeepingRomanEvent:
	say "     Just as you rest your eyes on the usual mayhem of the locker-room, Roman enters in a hurry, almost bumping into you. 'Sorry, [if player is male]boy[else]girl[end if],' he says. 'One of the other players just spilled some [']juice['] on me while I was supervising an endurance exercise. Damn Thomas still can't hold it under three minutes of ass pounding.' Keeping with his grunts, Roman disappears into a private room, whose door is marked [']Staff only['].";
	say "     A pair of fans, who have witnessed the scene like you, start to gossip.[line break]'Don't you think it's strange that the captain is the only one to have a private changing room?'[line break]'Yes, he never mingles with his players. All he ever does is supervise the trainings, and then he heads straight back hom when he needs a rest.'[line break]'It's a shame. Did you [italic type]see[roman type] this package of his? There must be a monster under these shorts.'";
	say "     The conversation piqued your curiosity. It is at this moment, that you notice that Roman did not close the door properly. It was slightly ajar, giving you the possibility to spy on the gorilla.";
	say "[bold type]Do you keep peeping on Roman?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) There's nothing wrong with indulging in some innocuous peeping.";
	say "     ([link]N[as]n[end link]) Everyone needs a little privacy.";
	if player consents:
		say "     You tiptoe to the door of the private changing room, and take a look inside. You can see Roman. His shorts are already down, exposing his slightly bubbly, furry ass to you. But what interests you is the other side. If only he could rotate just slightly, just enough to see what kind of package he has. Answering your silent prayers, Roman turns to the right in order to fetch a clean pair of shorts. He has... Nothing?";
		say "     You are taken aback. There is no massive maleness, no large ballsack, totally contradicting the permanent bulge his shorts were giving him. Oblivious to your spying, Roman sits on a bench, and spreads his legs. You can see the unmistakable folds of a vagina, and the plump clit just over it. Roman nonchalently pulls a large tuft of cotton from a bag, and packs it into his new shorts without pulling them up. So that's the reason he always wears shorts, and looks hung like a horse.";
		say "     Roman hoists himself up from the bench, making you hurriedly retreat. However, you ponder about confronting Roman about his secret, the next time you will talk to him.";
		now HP of Roman is 1;
		now PeepingRoman is resolved;
		now Resolution of PeepingRoman is 1; [peeped]
	else:
		say "     Privacy is a rare leisure in his city, much more in this place. You decide to give the team captain some much needed privacy. A couple minutes after, he leaves the changing room with a new pair of shorts, just as bulgy as the previous one. As you wonder why he did not choose a bigger size, you notice a tuft of cotton falling from the pair of pants. Weird.";
		now Resolution of PeepingRoman is 2; [didn't peep]




Astroslide Field Locker-room ends here.
