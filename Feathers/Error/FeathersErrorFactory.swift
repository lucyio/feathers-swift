//
//  FeathersErrorFactory.swift
//  Feathers-iOS
//
//  Created by Ostap Holub on 9/18/19.
//  Copyright © 2019 Swoopy Studios. All rights reserved.
//

import Foundation

public class FeathersErrorFactory {
    
    public class func makeError(failureReason reason: String) -> FeathersError {
        let payload: [String: Any] = ["message": reason,
                                      "name": "validation"]
        return FeathersError(payload: payload)
    }
    
    public class func makeError(fromOther error: Error) -> FeathersError {
        let payload: [String: Any] = ["message": error.localizedDescription]
        return FeathersError(payload: payload)
    }
    
    public class func makeClientTimeoutError() -> FeathersError {
        let payload: [String: Any] = ["message": "No ACK found in response, client side timeout",
                                      "name": "Timeout"]
        return FeathersError(payload: payload)
    }
}
