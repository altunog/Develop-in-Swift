//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by OÄuz Kaan Altun on 22.09.2022.
//

import Foundation

struct Emoji: Codable {
    
    static var archiveUrl: URL {
        let documentDirUrls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return documentDirUrls[0].appending(path: "emojis").appendingPathExtension("plist")
    }
    
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    static func saveToFile(emojis: [Emoji]) {
        try? PropertyListEncoder().encode(emojis).write(to: Emoji.archiveUrl, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Emoji] {
        if let emojiData = try? Data(contentsOf: archiveUrl),
           let emojis = try? PropertyListDecoder().decode([Emoji].self, from: emojiData) {
            return emojis
        }
        return [Emoji]()
    }
    
    static func sampleEmojis() -> [Emoji] {
        let sample: [Emoji] = [
            Emoji(symbol: "ð", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),
            Emoji(symbol: "ð", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
            Emoji(symbol: "ð", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
            Emoji(symbol: "ð§âð»", name: "Developer", description: "A person working on a MacBook (probably using Xcode to write iOS apps in Swift).", usage: "apps, software, programming"),
            Emoji(symbol: "ð¢", name: "Turtle", description: "A cute turtle.", usage: "something slow"),
            Emoji(symbol: "ð", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
            Emoji(symbol: "ð", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"),
            Emoji(symbol: "ð²", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
            Emoji(symbol: "âºï¸", name: "Tent", description: "A small tent.", usage: "camping"),
            Emoji(symbol: "ð", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
            Emoji(symbol: "ð", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"),
            Emoji(symbol: "ð¤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
            Emoji(symbol: "ð", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage: "completion")
        ]
        return sample
    }
}
