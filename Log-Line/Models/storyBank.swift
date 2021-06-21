//
//  storyBank.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation
import SwiftUI

var storyBank =  [
    Story(title: "Dracula", logline: "A wise but bumbling professor must destroy an undead count before a virtuous  school teacher becomes a vampire", writer: "Bram Stoker", year: "1897", fact: "The working title of the novel was The Dead Undead", symbol: "\u{f043}", genre: "Horror"),
        Story(title: "The Lord Of The Rings", logline: "A brave but timid gentleman must destroy a magic ring before an evil necromancer takes over a world", writer: "JRR Tolkien", year: "1954", fact: "Tolkien wrote his stories to provide a world for the Elvish languages he created",  symbol: "\u{f70b}", genre: "Book"),
        Story(title: "Toy Story", logline: "A loyal but stubborn cowboy must rescue a brave astronaut before an upset boy leaves a home", writer: "Joss Whedon, Andrew Stanton, Joel Cohen, Alec Sokolow, John Lasseter, Pete Docter, Joe Ranft", year: "1996", fact: "In early drafts, Woody was a ventriloquist’s dummy", symbol: "\u{f8c0}", genre: "Animation"),
        Story(title: "Alien", logline: "A tough but mistrustful warrant officer must escape an exploding spaceship before a ferocious alien eats a cat", writer: "Dan O'Bannon, Ronald Shusett", year: "1979", fact: "The original title was Star Beast", symbol: "\u{e001}", genre: "SciFi"),
        Story(title: "Gladiator", logline: "An honourable but brooding general must avenge a murdered family before a vain emperor wins a contest", writer: "David Franzoni, John Logan, William Nicholson", year: "2000", fact: "Only 21 pages of the script were written when shooting began", symbol: "\u{f3ed}", genre: "Historical"),
        Story(title: "Star Wars", logline: "A courageous but naive farmer must trust a mysterious force before a sinister lord destroys a rebellion", writer: "George Lucas", year: "1977", fact: "George Lucas based the structure of the story on Joseph Campbell’s monomyth theories in The Hero with a Thousand Faces", symbol: "\u{e033}", genre: "SciFi"),
        Story(title: "The Godfather", logline: "A tactical but ruthless son must take over a clandestine dynasty before a rival family wins a war", writer: "Mario Puzo", year: "1969", fact: "In the Godfather films, oranges are used symbolically to foreshadow mortal danger or death", symbol: "\u{f441}", genre: "Crime"),
        Story(title: "Jaws", logline: "A dedicated but insecure outsider must overcome a severe phobia before a massive fish devours a town", writer: "Peter Benchley", year: "1974", fact: "Benchley and his editor Thomas Congdon brainstormed more than 120 ideas for a title, including The Stillness in the Water and Leviathan Rising, before they decided on Jaws - 20 minutes before the book went to print.",  symbol: "\u{f21a}", genre: "Horror"),
        Story(title: "The Matrix", logline: "A powerful but doubtful hacker must comprehend an incredible truth before a ruthless computer crushes a revolution", writer: "Lana Wachowski, Lilly Wachowski", year: "1999", fact: "Jean Baudrillard's ‘Simulacra and Simulation’ was required reading for the cast of the film, who had to be able to understand and explain The Matrix", symbol: "\u{f188}", genre: "SciFi"),
        Story(title: "Halloween", logline: "A kind but terrified babysitter must survive a harrowing night before an insane serial killer murders a suburban estate", writer: "John Carpenter, Debra Hill", year: "1978", fact: "The screenplay, originally titled ‘The Babysitter Murders’, was written in less than two weeks",  symbol: "\u{f6fa}", genre: "Horror"),
        Story(title: "Die Hard", logline: "A formidable but reckless policeman must rescue a kidnapped wife before an unpredictable terrorist ruins Christmas", writer: "Jeb Stuart, Steven E de Souza", year: "1988", fact: "The original script took place over three days but director John McTiernan — inspired by Shakespeare's 'A Midsummer Night's Dream' — decided the events should happen in a single night", symbol: "\u{f1ad}", genre: "Action"),
        Story(title: "Ghostbusters", logline: "A capable but feckless team must eradicate a supernatural plague before a malignant god destroys a city", writer: "Dan Aykroyd, Harold Ramis", year: "1984", fact: "Ackroyd was inspired by an article from the American Society of Psychical Research and his family history: his great-grandfather, Samuel A Aykroyd, was a 19th century psychic investigator", symbol: "\u{f6e2}", genre: "Comedy"),
        Story(title: "Back To The Future", logline: "An easy going but tardy teenager must rekindle a vital relationship before a new past replaces a future", writer: "Robert Zemeckis, Bob Gale", year: "1985", fact: "The script was rejected over 40 times by every major studio and by some more than once, with one studio suggesting that the title should be changed to Space Man From Pluto", symbol: "\u{f2f2}", genre: "SciFi"),
        Story(title: "Hamlet", logline: "A thoughtful but melancholy prince must avenge a noble king before a manipulative usurper dispenses a poison", writer: "William Shakespeare", year: "c1600", fact: "In the first quarto, the play's most famous line is rendered as 'To be or not to be, I there’s the point'", symbol: "\u{f54c}", genre: "Play"),
    Story(title: "Signs", logline: "A family oriented but faithless former priest must investigate a strange occurrence before a nefarious alien civilisation invades a farm", writer: "M Night Shyamalan", year: "2002", fact: "The film was originally to be set entirely on the farm with no incidental music", symbol: "\u{f864}", genre: "SciFi"),
        Story(title: "Take Shelter", logline: "A dedicated but troubled father must build a safe shelter before a supernatural storm obliterates a town", writer: "Jeff Nichols", year: "2011", fact: "For her role in the film, Jessica Chastain was paid just $100 a day", symbol: "\u{f76c}", genre: "Drama"),
        Story(title: "Panic Room", logline: "A wealthy but helpless divorcee must protect a diabetic daughter before a dangerous gang of thugs breaks into a safe room", writer: "David Koepp", year: "2002", fact: "David Koepp wrote his first draft in six days", symbol: "\u{f52b}", genre: "Thriller"),
         Story(title: "The Silence Of The Lambs", logline: "A capable but inexperienced FBI agent must stop a serial killer before a kidnapped daughter becomes a garment", writer: "Ted Tally", year: "1991", fact: "In preparation for the role of Hannibal Lecter, Sir Anthony Hopkins visited murderers in prison and sat in court listening to gruesome cases", symbol: "\u{f711}", genre: "Thriller"),
         Story(title: "Iron Man", logline: "A brilliant but arrogant inventor must create a powerful suit of armour before a megalomaniacal arms dealer takes over a company", writer: "Mark Fergus, Hawk Ostby, Art Marcum, Matt Holloway", year: "2008", fact: "The screenplay was not finished when filming began, so much of the dialogue was adlibbed", symbol: "\u{f5e7}", genre: "Superhero"),
         Story(title: "Tenet", logline: "An expert but unaware protagonist must recover a mysterious device before a vengeful billionaire destroys the world", writer: "Christopher Nolan", year: "2020", fact: "Sir Kenneth Branagh had to learn to speak backwards in a Russian accent", symbol: "\u{f1da}", genre: "SciFi"),
         Story(title: "Indiana Jones and the Kingdom of the Crystal Skull", logline: "A daring but ophidiophobic archaeologist must discover a lost kingdom before an annoying Shia LaBeouf swings with a monkey", writer: "George Lucas, Jeff Nathanson, David Koepp", year: "2008", fact: "Harrison Ford had kept himself in such good shape over the years, his costume measurements were exactly the same as for The Last Crusade", symbol: "\u{f21c}", genre: "Adventure"),
         Story(title: "The Last Of Us", logline: "A tough but emotionally closed-off trafficker must protect a vivacious girl before a vicious infected horde wipes out humanity’s last hope", writer: "Neil Druckmann, Bruce Straley", year: "2013", fact: "Druckmann first had the idea for the game while at university, when he dreamed-up a cross between Fumito Ueda’s ‘Ico’ and ‘Night of the Living Dead’", symbol: "\u{f11b}", genre: "Computer Game"),
         Story(title: "Frozen", logline: "A beautiful but cursed princess must control an amazing power before a treacherous nobleman steals a kingdom", writer: "Jennifer Lee, Chris Buck, Shane Morris", year: "2013", fact: "Hans, Kristoff, Anna and Sven are all references to Hans Christian Andersen", symbol: "\u{f7ad}", genre: "Animation"),
         Story(title: "The Terminator", logline: "A strong-willed but unsuspecting waitress must team with a future soldier before an unstoppable machine terminates a resistance leader", writer: "James Cameron", year: "1984", fact: "Schwarzenegger only has 14 lines in the entire film", symbol: "\u{e045}", genre: "SciFi"),
         Story(title: "Don't Breathe", logline: "A devoted but naïve thief must find a bulging bag of cash before a blind veteran wields a turkey baster", writer: "Fede Alvarez, Rodo Sayagues", year: "2016", fact: "The street where the blind man lives is called ‘Buena Vista’, ironically the Spanish for ‘good view’", symbol: "\u{f29d}", genre: "Thriller"),
        Story(title: "Total Recall", logline: "A devoted but haunted construction worker must visit a colonised Mars before a nefarious businessman reimplants memories", writer: "Ronald Shusett, Dan O’Bannon, Jon Povill, Gary Goldman", year: "1990", fact: "Schwarzenegger was so impressed with Sharon Stone’s preparation for her role, he referred to her as the ‘female terminator’", symbol: "\u{f4fb}", genre: "SciFi"),
         Story(title: "Aliens", logline: "A capable but haunted warrant officer must take charge of a well-trained marine squadron before an infestation of chest-bursting aliens kill everyone", writer: "James Cameron", year: "1986", fact: "Bill Paxton improvised the line, ‘Game over man, game over!’", symbol: "\u{e020}", genre: "SciFi"),
         Story(title: "A Good Year", logline: "A clever but unscrupulous trader must renovate a majestic chateau before an ill-tempered superior takes away a career", writer: "Marc Klein", year: "2006", fact: "All the scenes in France were shot within eight minutes’ drive of Ridley Scott’s own house", symbol: "\u{f72f}", genre: "Comedy"),
         Story(title: "Arrival", logline: "A gifted but haunted translator must communicate with a benevolent alien before an unsettled nation begins a war", writer: "Erik Heisserer", year: "2016", fact: "When Erik Heisserer began developing the script, he created a mood board featuring his dream cast which had Amy Adams in the lead", symbol: "\u{f67b}", genre: "SciFi"),
         Story(title: "The Last Samurai", logline: "A celebrated but alcoholic soldier must join forces with Japanese warriors before an invading force attacks an indigenous people", writer: "John Logan, Edward Zwick, Marshall Herskovitz", year: "2003", fact: "Tom Cruise spent two years in preparation for the movie, learning swordplay and Japanese", symbol: "\u{f6a1}", genre: "Historical"),
         Story (title: "Sicario", logline: "A diligent but ill-informed DEA agent must assist a mysterious government agency before a violent cartel starts a war", writer: "Taylor Sheridan", year: "2015", fact: "While writing the screenplay, Taylor Sheridan’s wife bought a new car without telling him and threw the keys on his writing desk asking him how the script was coming along, making him write faster", symbol: "\u{e051}", genre: "Thriller"),
         Story(title: "District 9", logline: "A capable but bigoted inspector must find a miracle cure before an insidious infection creates an alien", writer: "Neill Blomkamp, Terri Tatchell", year: "2009", fact: "The sounds of the alien language were created by rubbing a pumpkin", symbol: "\u{e04a}", genre: "SciFi"),
         Story(title: "Edge Of Tomorrow", logline: "A famous but sleazy marketer must repeat an intense battle before an invading alien force wipes out humanity", writer: "Christopher McQuarrie, Jez Butterworth, Jon-Henry Butterworth", year: "2014", fact: "The film started shooting while the script was still undergoing multiple revisions", symbol: "\u{f8f6}", genre: "SciFi"),
    Story(title: "The Thinker", logline: "An iconic but crouching figure must ponder a glorious life before a Parisian crowd takes a photograph", writer: "Auguste Rodin", year: "1902", fact: "The statue was originally named ‘The Poet’", symbol: "\u{f808}", genre: "Sculpture"),
    Story(title: "Love and Monsters", logline: "A bold but unprepared survivor must seek out a beautiful former love before mutated beasts eat a dog", writer: "Brian Duffield, Matthew Robinson", year: "2020", fact: "The original title of the film was ‘Monster Problems’", symbol: "\u{f6d3}", genre: "SciFi"),
    Story(title: "Casablanca", logline: "A tough but heartbroken bar owner must help a beautiful former love before corrupt police confiscate letters", writer: "Julius J. Epstein, Philip G. Epstein, Howard Koch", year: "1942", fact: "In 2006, the script was named ‘Best Screenplay of All Time’ by the WGA", symbol: "\u{f5b0}", genre: "Romance"),
    Story(title: "Fargo", logline: "A quirky but pregnant police chief must solve a baffling murder before industrious kidnappers feed a woodchipper", writer: "Ethan Coen, Joel Coen", year: "1996", fact: "The wood chipper used in the movie is now on display at the Fargo-Moorhead Visitors Center", symbol: "\u{f0f2}", genre: "Comedy"),
    Story(title: "Dexter", logline: "A brilliant but mild mannered blood spatter analyst must murder accomplished killers before a mentoring father convinces clemency", writer: "James Manos Jr.", year: "2006", fact: "For the first four seasons, the scripts were followed verbatim, and any possible changes were discussed with James Manos Jr. first", symbol: "\u{f61d}", genre: "TV"),
    Story(title: "Heat", logline: "An experienced but obsessive detective must investigate a successful robbery before a team of expert criminals raid a bank", writer: "Michael Mann", year: "1995", fact: "The film was shot in 65 locations around LA without use of a single soundstage", symbol: "\u{f6ee}", genre: "Crime"),
    Story(title: "Rear Window", logline: "A dedicated but invalided photographer must peer through a large window before an unassuming neighbour gets away with murder", writer: "John Michael Hayes", year: "1954", fact: "All the apartments in Thorwald's building had electricity and running water, and could be lived in", symbol: "\u{f1e5}", genre: "Thriller"),
    Story(title: "Taxi Driver", logline: "A hard-working but mentally unstable taxi driver must liberate an innocent teenage prostitute before abhorrent filth destroys a city", writer: "Paul Schrader", year: "1976", fact: "The story was partially autobiographical for Paul Schrader, who suffered a nervous breakdown while living in Los Angeles", symbol: "\u{f1ba}", genre: "Drama"),
    Story(title: "Saint Maud", logline: "A devoted but mentally unstable end of life carer must save a beautiful soul before a terminally ill artist descends to hell", writer: "Rose Glass", year: "2019", fact: "Maud's eyes are two different colors: one blue/green and one brown even though actress Morfydd Clark only has blue eyes", symbol: "\u{f779}", genre: "Horror"),
    Story(title: "Sound of Metal", logline: "A talented but deluded drummer must learn a new language before an unstoppable disease takes away sound", writer: "Darius Marder, Abraham Marder, Derek Cianfrance", year: "2019", fact: "The scenes of Riz Ahmed playing and teaching drumming with the deaf children were unscripted", symbol: "\u{f569}", genre: "Drama"),
    Story(title: "The Hunger Games", logline: "A young but skilled archer must compete in a diverse arena before a megalomaniacal president punishes a district", writer: "Gary Ross, Suzanne Collins, Billy Ray", year: "2012", fact: "The four-note song of the Mockingjay is the same as the opening four notes of 'Love Theme from Romeo and Juliet (1968): A Time for Us' released in 1968", symbol: "\u{f6b9}", genre: "SciFi"),
    Story(title: "The Shawshank Redemption", logline: "An incarcerated but hopeful prisoner must befriend an indifferent convict before a vindictive warden finds a tunnel", writer: "Frank Darabont", year: "1994", fact: "Frank Darabont watched ‘Goodfellas (1990) every Sunday while shooting this film, and used it as inspiration for the film", symbol: "\u{f439}", genre: "Drama"),
    Story(title: "From Dusk Till Dawn", logline: "A capable but on the run bank robber must hide out in a bar before bloodthirsty vampires kill patrons", writer: "Quentin Tarantino, Robert Kurtzman", year: "1996", fact: "The name of the movie is inspired by the signs found on drive-ins", symbol: "\u{f716}", genre: "Horror"),
    Story(title: "Batman Returns", logline: "A wealthy but idiosyncratic bat must team up with a whip wielding cat before an orphaned penguin blows up a city", writer: "Daniel Waters, Sam Hamm", year: "1992", fact: "The Max Schreck character is a reference to the star of Nosferatu (1922)", symbol: "\u{f7aa}", genre: "Superhero"),
    Story(title: "Once Upon a Time in America", logline: "A former Prohibition-era Jewish gangster must return to smoky Lower East Side Manhattan before haunting memories consume sanity", writer: "Leonardo Benvenuti, Piero De Bernardi, Enrico Medioli, Franco Arcalli, Franco Ferrini, Sergio Leone", year: "1984", fact: "The original script was 317 pages long", symbol: "\u{f7bc}", genre: "Crime"),
    Story(title: "Prisoners", logline: "A dedicated but dominating father must torture a simple-minded kidnap suspect before an obsessive detective discovers the truth", writer: "Aaron Guzikowski", year: "2013", fact: "Detective Loki wears a Freemasons ring on his left hand", symbol: "\u{f6e3}", genre: "Thriller"),
    Story(title: "Memento", logline: "An obsessive but brain-damaged investigator must find a forgotten murderer before a strange narrative structure returns to the beginning", writer: "Christopher Nolan", year: "2000", fact: "The expiration date on Teddy's driver's license is 02/29/01, a day that does not exist in reality, since 2001 is not a leap year", symbol: "\u{f48e}", genre: "Crime"),
    Story(title: "From Russia With Love", logline: "A charming but lethal British secret agent must recover a Russian encryption device before a blonde assassin boards a train", writer: "Richard Maibaum, Johanna Harwood", year: "1963", fact: "The headquarters of criminal spy organisation S.P.E.C.T.R.E. in this movie is actually the main office administration building of Pinewood Studios", symbol: "\u{f238}", genre: "Spy"),
    Story(title: "Dark Star", logline: "A funny but isolated spaceship crew must fix their interstellar ship before a philosophically confused bomb blows up a region of space", writer: "John Carpenter, Dan O’Bannon", year: "1974", fact: "The double rows of large buttons on the bridge consoles are ice cube trays illuminated underneath", symbol: "\u{f1e2}", genre: "SciFi"),
    Story(title: "12 Angry Men", logline: "An empathetic but beleaguered juror must convince an opinionated group of peers before an impoverished youth cooks in an electric chair", writer: "Reginald Rose", year: "1957", fact: "The film was the feature directorial debut of Sidney Lumet", symbol: "\u{f0e3}", genre: "Drama"),
    Story(title: "Le Voyage Dans La Lune", logline: "A brave but dissenting group of astronomers must build a revolutionary rocket before a bemused man in the moon develops an eye infection", writer: "Georges Méliès", year: "1902", fact: "Much of the film was created using the substitution splice technique, in which the camera operator stopped filming long enough for something onscreen to be altered, added, or taken away", symbol: "\u{e027}", genre: "SciFi"),
    Story(title: "Jingle All the Way", logline: "A devoted but disorganised father must hunt down a popular toy before vicious competitors spoil Christmas", writer: "Randy Kornfield", year: "1996", fact: "The story is based on a 1980s shopping frenzy over the Cabbage Patch dolls", symbol: "\u{f7b8}", genre: "Comedy"),
    Story(title: "Rocky", logline: "A sincere but small-time fighter must train an inner tiger before a heavyweight champion boxer wins a bout", writer: "Sylvester Stallone", year: "1976", fact: "Rocky's dog Butkus was Sylvester Stallone's actual dog", symbol: "\u{f438}", genre: "Drama"),
    Story(title: "Coming to America", logline: "An inquisitive but pampered African prince must travel to a big city before an overbearing father forces a marriage", writer: "Eddie Murphy, David Sheffield, Barry W. Blaustein", year: "1988", fact: "Sidney Poitier was initially considered for the role of King Jaffe Joffer", symbol: "\u{f6a5}", genre: "Comedy"),
    Story(title: "The Martian", logline: "An industrious but deserted astronaut must navigate a barren planet before starchy potatoes cause indigestion", writer: "Drew Goddard", year: "2015", fact: "A real potato farm was installed in the studio so it could be used for filming", symbol: "\u{f4d8}", genre: "SciFi"),
    Story(title: "Mank", logline: "A brilliant but alcoholic screenwriter must finish an epic screenplay before an egomaniacal film director shoots a film", writer: "Jack Fincher", year: "2020", fact: "Mank producer Eric Roth reportedly polished the script before filming, with David Fincher saying he felt early drafts were too anti-Orson Welles", symbol: "\u{f7a3}", genre: "Historical"),
    Story(title: "Bound", logline: "A tough but lonely ex-con must steal a bulging suitcase full of money before violent mobsters visit a neighbour", writer: "Lilly Wachowski, Lana Wachowski", year: "1996", fact: "Linda Hamilton was originally targeted for the role of Corky", symbol: "\u{f0f2}", genre: "Crime"),
    Story(title: "One Flew Over the Cuckoo’s Nest", logline: "A zestful but irreverent criminal must gain control of a mental institution before an oppressive nurse performs a procedure", writer: "Lawrence Hauben, Bo Goldman", year: "1975", fact: "Jack Nicholson was disturbed when he arrived on set as the rest of the cast refused to break character when the cameras weren’t rolling", symbol: "\u{f82f}", genre: "Drama"),
    Story(title: "12 Monkeys", logline: "A determined but troubled time travelling convict must investigate a resilient disease before a dangerous group wipes out a population", writer: "David Webb Peoples, Janet Peoples", year: "1995", fact: "Although never referred to in the film, the script reveals that the future scenes take place in the year 2035 (so not far off!)", symbol: "\u{f6fb}", genre: "SciFi"),
    Story(title: "Birdman", logline: "A talented but washed-up superhero actor must revive an influential career before a troubled Broadway musical causes insanity", writer: "Alejandro G. Iñárritu, Nicolás Giacobone, Alexander Dinelaris, Armando Bo", year: "2014", fact: "There are only sixteen noticeable cuts in the entire film", symbol: "\u{f520}", genre: "Drama"),
    Story(title: "Ratatouille", logline: "An industrious but unwanted rat must ally with a young kitchen worker before an unforgiving critic eats a meal", writer: "Brad Bird, Jan Pinkava, Jim Capobianco", year: "2007", fact: "Linguini's apartment is located in the Montmartre section of Paris", symbol: "\u{f86b}", genre: "Animation"),
    Story(title: "A Quiet Place", logline: "A loving but grieving father and mother must quieten young children before bloodthirsty aliens invade a farm", writer: "Bryan Woods, Scott Beck, John Krasinski", year: "2018", fact: "The first voiced dialogue isn't spoken until about 38 minutes into the film", symbol: "\u{f6a9}", genre: "SciFi"),
    Story(title: "Ex Machina", logline: "A clever but naïve programmer must assess a beautiful robot before an alcoholic inventor refuses a drink", writer: "Alex Garland", year: "2014", fact: "When Caleb and Nathan are drinking beer, the label on Nathan's beer says KEIKAKU, the Japanese for ‘plan’", symbol: "\u{fe04b}", genre: "SciFi"),
    Story(title: "Jurassic Park", logline: "An expert but skeptical paleontologist must escape a breathtaking theme park before genetically engineered dinosaurs eat visitors", writer: "Michael Crichton, David Koepp", year: "1993", fact: "James Cameron said that he wanted to make this movie, but the rights were bought ‘a few hours’ before he could bid", symbol: "\u{f471}", genre: "Adventure"),
    Story(title: "Stalker", logline: "A knowledgeable but strict guide must enter a mysterious Zone before depressed visitors enter a room that grants wishes", writer: "Arkadiy Strugatskiy, Boris Strugatskiy", year: "1979", fact: "The film contains 142 shots in 163 minutes", symbol: "\u{f5ec}", genre: "SciFi"),
    Story(title: "A Clockwork Orange ", logline: "A charming but sadistic gang leader must enter a revolutionary conduct-aversion experiment before violent former victims take revenge", writer: "Stanley Kubrick", year: "1971", fact: "The final shot was completed after 74 takes", symbol: "\u{f017}", genre: "SciFi"),
    Story(title: "Training Day", logline: "An ambitious but rookie cop must pass a short evaluation before a crooked narcotics officer steals drug money", writer: "David Ayer", year: "2001", fact: "To give his character a much more authentic aspect, Denzel Washington decided to have the same wardrobe and style as disgraced L.A.P.D. Officer Rafael Perez", symbol: "\u{e02e}", genre: "Thriller"),
    Story(title: "Snatch", logline: "Bold but out of depth boxing promoters must persuade a gypsy boxer before a violent gangster feeds some pigs", writer: "Guy Ritchie", year: "2000", fact: "Almost every death in the film occurs offscreen", symbol: "\u{f3a5}", genre: "Crime"),
    Story(title: "Bridge over the River Kwai", logline: "A dutiful but myopic Colonel must build a sturdy bridge before parachuting army units invade a river", writer: "Cark Foreman, Michael Wilson", year: "1957", fact: "For the scene when Colonel Nicholson emerges from the ‘oven’, Sir Alec Guinness based his faltering walk on that of his son Matthew when he was recovering from polio", symbol: "\u{f557}", genre: "War"),
    Story(title: "Home Alone", logline: "A cunning but troublesome 8-year-old must protect a large house before unscrupulous burglars ruin Christmas", writer: "John Hughes", year: "1990", fact: "The line ‘You guys give up, or are you thirsty for more?’ was improvised", symbol: "\u{f7b2}", genre: "Comedy"),
    Story(title: "The Big Lebowski", logline: "A chilled but slobby dude must avenge a cherished rug before a trophy wife fakes a kidnapping", writer: "Ethan Coen, Joel Coen", year: "1998", fact: "The Dude says ‘man’ 147 times in the movie", symbol: "\u{f436}", genre: "Comedy"),
    Story(title: "The Mask", logline: "A cartoon-loving but insecure bank clerk must rescue a beautiful dancer before a dangerous gangster dons a mask", writer: "Michael Fallon, Mark Verheiden, Mike Werb", year: "1994", fact: "This was Cameron Diaz's first acting role", symbol: "\u{f630}", genre: "Superhero"),
    Story(title: "The Untouchables", logline: "A family oriented but determined federal agent must recruit untouchable law enforcement officers before a ruthless crime boss controls a city", writer: "David Mamet", year: "1987", fact: "Robert De Niro tracked down Al Capone's original tailors and had them make him some identical suits for the movie", symbol: "\u{f432}", genre: "Crime"),
    Story(title: "Rogue One", logline: "An independent but wayward loner must join a rebel alliance before a planet killing director fixes a Death Star", writer: "Chris Weitz, Tony Gilroy, John Knoll, Gary Whitta", year: "2016", fact: "The first theatrical Star Wars film to have dialogue in the closing scene", symbol: "\u{e037}", genre: "SciFi"),
    Story(title: "Frantic", logline: "A devoted but out of depth doctor must find a missing wife before a shady group of agents retrieve a suitcase", writer: "Roman Polanski, Gérard Brach", year: "1988", fact: "Due to studio pressure, 15 minutes were cut from the original runtime and a new ending was shot", symbol: "\u{f5c1}", genre: "Thriller"),
    Story(title: "The Simpsons Movie", logline: "A lazy but caring oaf must diffuse a suspended bomb before a power mad environmentalist destroys a dome", writer: "James L Brooks, Matt Groening, Al Jean, Ian Maxtone-Graham, George Meyer, David Mirkin, Mike Reiss, Mike Scully, Matt Selman, John Swartzwelder, Jon Vitti", year: "2007", fact: "The script was rewritten 153 times by a team of 11 writers", symbol: "\u{f706}", genre: "Animation"),
    Story(title: "Reservoir Dogs", logline: "A professional but hunted gang must uncover a traitorous informant before an armed police unit storms a warehouse", writer: "Quentin Tarantino", year: "1992", fact: "The inspiration for the title has variously been ascribed to a mishearing of Au Revoir les Enfants, French gangster slang for rat and a production company's label for its slush pile of unsolicited screenplays.", symbol: "\u{f508}", genre: "Crime"),
    Story(title: "The Nightmare Before Christmas", logline: "A well-meaning but terrifying skeleton must rekindle a spooky passion before a gambling boogeyman kills Santa", writer: "Tim Burton, Michael McDowell", year: "1993", fact: "Burton was inspired to write the original poem after he saw a store replacing its Halloween display with Christmas products", symbol: "\u{f786}", genre: "Animation"),
    Story(title: "Bill & Ted’s Excellent Adventure", logline: "A humorous but moronic rock band must complete an outstanding odyssey before a strict father exiles a son", writer: "Chris Matheson, Ed Solomon", year: "1989", fact: "The script was written by hand in four days", symbol: "\u{f8be}", genre: "Comedy"),
    Story(title: "Blade Runner", logline: "A skilled but reluctant bounty hunter must retire a human-like crew before a desperate combat model embarrasses a corporation", writer: "Hampton Fancher, David Peoples", year: "1982", fact: "Director Ridley Scott has stated that Deckard is a replicant, while Harrison Ford believes the character he portrayed was human", symbol: "\u{f727}", genre: "SciFi"),
    Story(title: "Frankenstein", logline: "A gifted but unorthodox scientist must create an abominable bride before a shunned monster murders a fiance", writer: "Mary Shelley", year: "1818", fact: "Frankenstein was the winning entry in a ghost story competition between Mary Shelley, Percy Shelley, Lord Byron and John Polidori", symbol: "\u{f0e7}", genre: "Novel"),
    Story(title: "The Master and Margarita", logline: "A devoted but trapped hostess must seal a satanic pact before an incarcerated writer succumbs to despair", writer: "Mikhail Bulgakov", year: "1966-67", fact: "'Manuscripts don’t burn', is a much-quoted line from the novel, suggesting that great art is eternal. Bulgakov burned an earlier draft of this work, which, after his death, became an iconic work of 20th century fiction", symbol: "\u{f6be}", genre: "Novel"),
    Story(title: "Moby Dick", logline: "A deep but monomaniacal captain must search a vast ocean before a monstrous whale smites a ship", writer: "Herman Melville", year: "1851", fact: "The book was not initially a success and Melville became a customs officer in 1863. All of his works were out of print by the time of his death in 1891 but a re-press of Moby Dick in 1919 led to its recognition as an American classic", symbol: "\u{f72c}", genre: "Novel"),
    Story(title: "The Wolf Man", logline: "A conciliatory but cursed son must persuade a disbelieving father before a supernatural monster murders a village", writer: "Curt Siodmak", year: "1941", fact: "’Even a man who is pure at heart and says his prayers by night may become a wolf when the wolfsbane blooms and the autumn moon is bright' is a foreboding omen recited throughout the film. Some film historians have attributed it to German folklore. It was made up by Siodmak", symbol: "\u{f6c2}", genre: "Horror"),
    Story(title: "The Empire Strikes Back", logline: "A loyal but impetuous apprentice must infiltrate a floating city before a dark lord freezes a smuggler", writer: "Leigh Brackett, Lawrence Kasdan, George Lucas", year: "1980", fact: "Darth Vader's famous revelation is often misquoted as 'Luke, I am your father.' He actually says 'No, I am your father'", symbol: "\u{e038}", genre: "SciFi"),
    Story(title: "The Return of the Jedi", logline: "A heroic but outnumbered rebel force must conquer an occupied forest moon before a powerful sorcerer succumbs to a dark force", writer: "Lawrence Kasdan, George Lucas", year: "1983", fact: "The word 'Ewok' is never spoken in the movie", symbol: "\u{e034}", genre: "SciFi"),
    Story(title: "The Dark Knight", logline: "A wealthy but vengeful playboy must follow a sonic map before an insane clown takes over a city", writer: "Christopher Nolan, Jonathan Nolan, David S Goyer", year: "2008", fact: "The writers avoided exploring an origin story for the Joker so that they could portray the character as an 'absolute'", symbol: "\u{f6b5}", genre: "Superhero"),
    Story(title: "Fight Club", logline: "An itinerant but insomniac product recall specialist must defeat a violent soap maker before an underground club destroys a skyscraper", writer: "Jim Uhls", year: "1999", fact: "Author Palahniuk was inspired to write the novel following an altercation during a campong trip. When he returned to work, his co-workers avoided asking him about his bruises", symbol: "\u{e06e}", genre: "Drama"),
    Story(title: "WALL-E", logline: "A tidy but lonely robot must rescue a rare plant before a mutinous autopilot prevents a homecoming", writer: "Andrew Stanton, Jim Reardon, Pete Docter", year: "2008", fact: "The starliner that is home to humanity is called the 'Axiom', reflecting that the humans take their over-indulgent lifestyles for granted", symbol: "\u{f4d8}", genre: "Animation"),
    Story(title: "Palm Springs", logline: "A lovable but capitulating wedding guest must escape a repeating time loop before a self-loathing bride's sister blows up a goat", writer: "Andy Siara, Max Barbakow", year: "2020", fact: "The early scene where Nyles seamlessly moves across the dance floor was captured in five takes", symbol: "\u{f5c5}", genre: "Comedy"),
    Story(title: "Big Trouble in Little China", logline: "A confident but inept truck driver must rescue a beautiful girl with green eyes before an evil magician regains power", writer: "Gary Goldman, David Z. Weinstein, W.D. Richter", year: "1986", fact: "Kurt Russell suffered a bad case of the flu during the scene just after the brothel, so the sweat on his body was a real fever", symbol: "\u{f4dc}", genre: "Comedy"),
    Story(title: "Arachnophobia", logline: " A devoted but arachnophobic doctor must save a small town before deadly spiders bite residents", writer: "Don Jakoby, Wesley Strick, Al Williams", year: "1990", fact: "The small spiders used in the film were Avondale spiders (Delena Cancerides), a harmless species from New Zealand", symbol: "\u{f718}", genre: "Horror"),
    Story(title: "The Way of the Gun", logline: " A bold but unsympathetic pair of drifters must kidnap a strong-willed surrogate mother before a powerful boss dispatches an assassin", writer: "Christopher McQuarrie", year: "2000", fact: "The final shoot-out scene, is the same location used for the final shoot-out in ‘Butch Cassidy and the Sundance Kid’ (1969)", symbol: "\u{f85b}", genre: "Crime"),
    Story(title: "The Shining", logline: "A devoted but recovering alcoholic father must house-sit an isolated hotel before manipulative spirits create madness", writer: "Stanley Kubrick, Diane Johnson", year: "1980", fact: "The idea for Danny Lloyd to move his finger when he was talking as Tony was his own as he did it spontaneously during his first audition.", symbol: "\u{f6b2}", genre: "Horror"),
    Story(title: "The King’s Speech", logline: "A brand new but unprepared King must overcome stammering before embattled England fights a war", writer: "David Seidler", year: "2010", fact: "At 73, David Seidler became the oldest person to win the Best Original Screenplay Academy Award (Oscar) for this film and he didn’t even have a job or an agent at the time", symbol: "\u{f130}", genre: "Historical"),
    Story(title: "The Rock", logline: "A knowledgeable but mild-mannered chemist must infiltrate a fortified island prison before  a renegade general launches a missile", writer: "David Weisberg, Douglas Cook, Mark Rosner", year: "1996", fact: "Quentin Tarantino was an uncredited screenwriter on this movie as was Aaron Sorkin and Jonathan Hensleigh, who wrote the shooting script", symbol: "\u{f0c1}", genre: "Action"),
    Story(title: "Frankenstein", logline: "A gifted but unorthodox scientist must create an abominable bride before a shunned monster murders a fiance", writer: "Mary Shelley", year: "1818", fact: "Frankenstein was the winning entry in a ghost story competition between Mary Shelley, Percy Shelley, Lord Byron and John Polidori", symbol: "\u{f0e7}", genre: "Book"),
    Story(title: "The Master and Margarita", logline: "A devoted but trapped hostess must seal a satanic pact before an incarcerated writer succumbs to despair", writer: "Mikhail Bulgakov", year: "1966-67", fact: "'Manuscripts don’t burn', is a much-quoted line from the novel, suggesting that great art is eternal. Bulgakov burned an earlier draft of this work, which, after his death, became an iconic work of 20th century fiction", symbol: "\u{f6be}", genre: "Book"),
    Story(title: "Moby Dick", logline: "A deep but monomaniacal captain must search a vast ocean before a monstrous whale smites a ship", writer: "Herman Melville", year: "1851", fact: "The book was not initially a success and Melville became a customs officer in 1863. All of his works were out of print by the time of his death in 1891 but a re-press of Moby Dick in 1919 led to its recognition as an American classic", symbol: "\u{f72c}", genre: "Book"),
    Story(title: "Slumdog Millionaire", logline: "An industrious but poor teenager must reflect on a challenging life before a baffled accuser refuses a 20 million rupee prize", writer: "Simon Beaufoy", year: "2008", fact: "The pile of excrement that the young Jamal jumps into was made from a combination of peanut butter and chocolate", symbol: "\u{f156}", genre: "Drama")

]

