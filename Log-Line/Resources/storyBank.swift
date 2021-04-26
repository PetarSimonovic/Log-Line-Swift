//
//  storyBank.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation
import SwiftUI

let storyBank =  [
    Story(title: "Dracula", logline: "A wise but bumbling professor must destroy an undead count before a virtuous  schoolteacher becomes a vampire", writer: "Bram Stoker", year: "1897", fact: "The working title of the novel was The Dead Undead", symbol: "\u{f043}"),
    Story(title: "The Lord Of The Rings", logline: "A brave but timid gentleman must destroy a magic ring before an evil necromancer takes over a world", writer: "JRR Tolien", year: "1954", fact: "Tolkien wrote his stories to provide a world for the Elvish languages he created",  symbol: "\u{f70b}"),
    Story(title: "Toy Story", logline: "A loyal but stubborn cowboy must rescue a brave astronaut before an upset boy leaves a home", writer: "Joss Whedon, Andrew Stanton, Joel Cohen, Alec Sokolow, John Lasseter, Andrew Stanton, Pete Docter, Joe Ranft", year: "1996", fact: "In early drafts, Woody was a ventriloquist’s dummy", symbol: "\u{f8c0}"),
    Story(title: "Alien", logline: "A tough but mistrustful warrant officer must escape an exploding spaceship before a ferocious alien eats a cat", writer: "Dan O'Bannon, Ronald Shusett", year: "1979", fact: "The original title was Star Beast", symbol: "\u{e001}"),
    Story(title: "Gladiator", logline: "An honourable but brooding general must avenge a murdered family before a vain emperor wins a contest", writer: "David Franzoni, John Loganm, William Nicholson", year: "2000", fact: "Only 21 pages of the script were written when shooting began", symbol: "\u{f6eb}"),
    Story(title: "Star Wars", logline: "A courageous but naive farmer must trust a mysterious force before a sinister lord destroys a rebellion", writer: "George Lucas", year: "1977", fact: "George Lucas based the struture of the story on Joseph Campbell’s monomyth theories in The Hero with a Thousand Faces", symbol: "\u{e033}"),
    Story(title: "The Godfather", logline: "A tactical but ruthless son must take over a clandestine dynasty before a rival family wins a war", writer: "Mario Puzo", year: "1969", fact: "In the Godfather films, oranges are used symbolically to foreshadow mortal danger or death", symbol: "\u{f441}"),
    Story(title: "Jaws", logline: "A dedicated but insecure outsider must overcome a severe phobia before a massive fish devours a town", writer: "Peter Benchley", year: "1974", fact: "Benchley and editor Thomas Congdon brainstormed more than 120 ideas for a title, including The Stillness in the Water and Leviathan Rising, before they decided on Jaws - 20 minutes before the book went to print.",  symbol: "\u{f21a}"),
    Story(title: "The Matrix", logline: "A powerful but doubtful hacker must comprehend an incredible truth before a ruthless computer crushes a revolution", writer: "Lana Wachowski, Lilly Wachowski", year: "1999", fact: "Jean Baudrillard's Simulacra and Simulation was required reading for the cast of the film, who had to be able to understand and explain The Matrix", symbol: "\u{f188}"),
    Story(title: "Halloween", logline: "A kind but terrified babysitter must survive a harrowing night before an insane serial killer murders a suburban estate", writer: "John Carpenter, Debra Hill", year: "1978", fact: "The screenplay, originally titled The Babysitter Murders, was written in less than two weeks",  symbol: "\u{f30e}"),
    Story(title: "Die Hard", logline: "A formidable but reckless policeman must rescue a kidnapped wife before an unpredictable terrorist ruins Christmas", writer: "Jeb Stuart, Steven E de Souza", year: "1988", fact: "The original script took place over three days but director John McTiernan — inspired by Shakespeare's 'A Midsummer Night's Dream' — decided the events should happen in a single night", symbol: "\u{f1ad}"),
    Story(title: "Ghostbusters", logline: "A capable but feckless team must eradicate a supernatural plague before a malignant god destroys a city", writer: "Dan Aykroyd, Harold Ramis", year: "1984", fact: "Ackroyd was inspired by an article from the American Society of Psychical Research and his family history: his great-grandfather, Samuel A Aykroyd, was a 19th century psychic investigator", symbol: "\u{f6e2}"),
    Story(title: "Back To The Future", logline: "An easy going but tardy teenager must rekindle a vital relationship before a new past replaces a future", writer: "Robert Zemeckis, Bob Gale", year: "1985", fact: "'The script was rejected over 40 times by every major studio and by some more than once', Bob Gale said. One studio suggested that the title should be changed to Space Man From Pluto",  symbol: "\u{f8ba}"),
    Story(title: "Hamlet", logline: "A thoughtful but melancholy prince must avenge a noble king before a manipulative usurper dispenses a poison", writer: "William Shakespeare", year: "c1600", fact: "In the first quarto, the play's most famous line is rendered as 'To be or not to be, I there’s the point'", symbol: "\u{f54c}"),
    Story(title: "The Simpsons Movie", logline: "A lazy but caring oaf must diffuse a suspended bomb before a power mad environmentalist destroys a dome", writer: "James L Brooks, Matt Groening, Al Jean, Ian Maxtone-Graham, George Meyer, David Mirkin, Mike Reiss, Mike Scully, Matt Selman, John Swartzwelder, Jon Vitti", year: "2007", fact: "The script was rewritten 153 times by a team of 11 writers. It features 320 cameos from the Simpsons cast.", symbol: "\u{f706}"),
    Story(title: "Reservoir Dogs", logline: "A professional but hunted gang must uncover a traitorous informant before  an armed police unit storms a warehouse", writer: "Quentin Tarantino", year: "1992", fact: "The inspiration for the title has variously been ascribed to a mnishearing of Au Revoir les Enfants, French gangster slang for rat and a production company's label for its slush pile of unsolicited screenplays.", symbol: "\u{f508}"),
//    Story(title: "Signs", logline: "A family oriented but faithless former priest must investigate a strange occurrence before a nefarious alien civilisation invades a farm", symbol: "\u{f54c}"),
//    Story(title: "Take Shelter", logline: "A dedicated but troubled father must build a safe shelter before a supernatural storm obliterates a town", symbol:  "\u{f54c}"),
//    Story(title: "Panic Room", logline: "A wealthy but helpless divorcee must protect her diabetic daughter before a dangerous gang of thugs breaks into a safe room", symbol: "\u{f54c}"),
//     Story(title: "The Silence Of The Lambs", logline: "A capable but inexperienced FBI agent must stop a serial killer before a kidnapped daughter becomes a garment", symbol: "\u{f54c}"),
//     Story(title: "Iron Man", logline: "A brilliant but arrogant inventor must create a powerful suit of armour before a megalomaniacal arms dealer takes over a company", symbol: "\u{f54c}"),
//     Story(title: "Tenet", logline: "An expert but unaware protagonist must recover a mysterious device before a vengeful billionaire destroys the world", symbol: "\u{f54c}"),
//     Story(title: "Indiana Jones and the Kingdom of the Crystal Skull", logline: "A daring but ophidiophobic archaeologist must discover a lost kingdom before an annoying Shia LaBeouf swings with a monkey", symbol: "\u{f54c}"),
//     Story(title: "The Last Of Us", logline: "A tough but emotionally closed-off trafficker must protecta vivacious girl before a vicious infected horde wipes out humanity’s last hope", symbol: "\u{f54c}"),
//     Story(title: "Frozen", logline: "A beautiful but cursed princess must control an amazing power before a treacherous nobleman steals a kingdom", symbol: "\u{f54c}"),
//     Story(title: "The Terminator", logline: "A strong willed but unsuspecting waitress must team with a future soldier before an unstoppable machine terminates a resistance leader", symbol: "\u{f54c}"),
//     Story(title: "Don't Breathe", logline: "A devoted but naïve thief must find a bulging bag of cash before a blind veteran wields a turkey baster", symbol: "\u{f54c}"),
//    Story(title: "Total Recall", logline: "A devoted but haunted construction worker must visit a colonised Mars before a nefarious businessman reimplants memories", symbol: "\u{f54c}"),
//     Story(title: "Aliens", logline: "A capable but haunted warrant officer must take charge of a well-trained marine squadron before a chest-bursting aliens kills everyone", symbol: "\u{f54c}"),
//     Story(title: "A Good Year", logline: "A clever but unscrupulous trader must renovate a majestic chateau before an ill-tempered superior takes away a career", symbol: "\u{f54c}"),
//     Story(title: "Arrival", logline: "A gifted but haunted translator must communicate with a benevolent alien before an unsettled nation begins a war", symbol: "\u{f54c}"),
//     Story(title: "The Last Samurai", logline: "A celebrated but alcoholic soldier must join forces with Japanese warriors before an invading force attacks an indigenous people", symbol: "\u{f54c}"),
//     Story (title: "Sicario", logline: "A diligent but ill-informed DEA agent must assist a mysterious  government agency before a violent cartel starts a war", symbol: "\u{f54c}"),
//     Story(title: "District 9", logline: "A capable but bigoted inspector must find a miracle cure before an insidious infection creates an alien", symbol: "\u{f54c}"),
//     Story(title: "Edge Of Tomorrow", logline: "An accomplished but sleazy marketer must repeat an intense battle before an invading alien force wipes out humanity", symbol: "\u{f54c}"),
//     Story(title: "The Thinker", logline: "An iconic but crouching figure must ponder a glorious life before a Parisian crowd takes a photograph", symbol: "\u{f54c}")


]

