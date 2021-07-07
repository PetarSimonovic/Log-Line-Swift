//
//  BadgeBank.swift
//  Log-Line
//
//  Created by Petar Simonovic on 13/05/2021.
//

import Foundation


var badgeBank = [
    Badge(name: "SciFi", symbol: "\u{e025}"),
    Badge(name: "Comedy", symbol:  "\u{f586}"),
    Badge(name: "Drama", symbol: "\u{f5c2}"),
    Badge(name: "Crime", symbol: "\u{f6cb}"),
    Badge(name: "Horror", symbol: "\u{f70d}"),
    Badge(name: "Thriller", symbol: "\u{f6f5}"),
    Badge(name: "Animation", symbol: "\u{f5ae}"),
    Badge(name: "Book", symbol: "\u{f5db}"),
    Badge(name: "Historical", symbol: "\u{f70f}"),
    Badge(name: "Superhero", symbol: "\u{f0e7}"),
    Badge(name: "Action", symbol:"\u{f48b}"),
    Badge(name: "Adventure", symbol: "\u{f6d9}"),
    Badge(name: "Computer Game", symbol: "\u{f8c5}"),
    Badge(name: "Romance", symbol: "\u{f004}"),
    Badge(name: "Sculpture", symbol: "\u{f546}"),
    Badge(name: "Spy", symbol: "\u{f21b}"),
    Badge(name: "TV", symbol: "\u{f401}"),
    Badge(name: "War", symbol: "\u{f6e4}"),
]


let countBadges = [
    10 : ["Casual Viewer", "\u{f819}", "You’re happy watching a Fast and Furious movie while never remembering which one is which. Beverage, popcorn, feet up = job done."],
    25 : ["Movie Lover", "\u{f3ff}", "Whenever you play Trivial Pursuit, you nail the film questions. You know your Spielbergs and your Scorseses, but do you know your Kieślowskis and your Kurosawas?"],
    50 : [ "Film Addict", "\u{f8a9}", "You’re plugged into the Movie Matrix. You’re the Oracle that despondent Netflix menu surfers seek out when they need that uncut hit of movie knowledge."],
    75 : ["Master Cinephile", "\u{f008}", "You know your Seventh Seals from your Seventh Sons. When cut, you bleed celluloid (unless you’re a Fincher fan, in which case it’s uncompressed RAW files)."],
    100 : ["Movie God", "\u{f683}", "Mark Kermode, Mark Cousins, Roger Ebert and the entire presenting team of the /Filmcast have got nothing on your film knowledge. You could wax lyrical about movies with Quentin Tarantino over some serious gourmet coffee and never miss a beat."]
]

