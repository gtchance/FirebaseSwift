//
//  HTTPMethod+justRequest
//  FirebaseSwift
//
//  Created by Graham Chance on 9/24/17.
//

import Foundation
import Just


extension HTTPMethod {

    /// The function in the Just library that corresponds to the http method
    var justRequest: JustSendRequestType {
        switch self {
        case .delete:
            return Just.delete
        case .get:
            return Just.get
        case .patch:
            return Just.patch
        case .post:
            return Just.post
        case .put:
            return Just.put
        case .head:
            return Just.head
        case .options:
            return Just.options
        }
    }
}

// The type of all the Just package's methods (get, post, delete,...)
typealias JustSendRequestType =
    (URLComponentsConvertible, [String: Any], [String: Any],
    Any?, [String: String], [String: HTTPFile], (String, String)?,
    [String: String], Bool, Double?, String?, Data?,
    (TaskProgressHandler)?, ((HTTPResult) -> Void)?) -> HTTPResult
