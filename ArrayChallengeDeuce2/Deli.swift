//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        let billy = "Billy Crystal"
        let meg = "Meg Ryan"
        line.append(name)
        if name == billy {
            line.insert(billy, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == meg {
            line.insert(meg, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if name == line[0] {
            return "Welcome \(name), you're first in line!"
        } else {
            return "Welcome \(name) you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let name = line.remove(at: 0)
            return "Now serving \(name)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        guard !line.isEmpty else { return "The line is currently empty."}
        var newLine = "The line is:"
        for (index,name) in line.enumerated() {
            newLine +=  "\n\(index + 1). \(name)"
        }
        return newLine
    }
    
}


