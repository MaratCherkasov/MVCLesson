//
//  Verb.swift
//  MVCLesson
//
//  Created by Marat Cherkasov on 19.04.2023.
//

import UIKit

struct Verb {
    let infinitive: String
    let pastSimple: String
    let participle: String
    var translation: String {
        NSLocalizedString(self.infinitive, comment: "")
    }
}
