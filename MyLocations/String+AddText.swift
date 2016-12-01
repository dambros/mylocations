//
//  String+AddText.swift
//  MyLocations
//
//  Created by Mario D'Ambros Filho on 30/11/16.
//  Copyright © 2016 Dambros apps. All rights reserved.
//

extension String {
    mutating func add(text: String?, separetedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
