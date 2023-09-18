//
//  Extentions.swift
//  Contacts
//
//  Created by Apple on 14.09.23.
//

import UIKit

extension Collection {
    subscript (safe i: Index) -> Element? {
        return indices.contains(i) ? self[i] : nil
    }
}

