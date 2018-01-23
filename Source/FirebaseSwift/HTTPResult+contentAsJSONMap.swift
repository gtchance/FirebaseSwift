//
//  HTTPResult+contentAsJSONMap.swift
//  FirebaseSwift
//
//  Created by Graham Chance on 10/20/16.
//
//

import Foundation
import Just

extension HTTPResult {

    /// Converts an HTTPResult to json
    ///
    /// - Returns: A json object
    func contentAsJSONMap() -> Any? {
        if let data = content {
            return try? JSONSerialization.jsonObject(with: data, options: [.allowFragments])
        }
        return nil
    }

}
