//
//  FeathersError.swift
//  Feathers
//
//  Created by Brendan Conron on 4/16/17.
//  Copyright © 2017 FeathersJS. All rights reserved.
//

import Foundation

public struct FeathersError: Error {

    private let payload: [String: Any]

    public var code: Int {
        return payload["code"] as? Int ?? -1
    }

    public var message: String {
        return payload["message"] as? String ?? "No message found"
    }

    public init(payload: [String: Any]) {
        self.payload = payload
    }
}
