//
//  RxLocalAuthentication.swift
//  RxLocalAuthentication
//
//  Created by Skyline-23 on 12/30/2021.
//  Copyright (c) 2021 Skyline-23. All rights reserved.
//

import Foundation
import LocalAuthentication
import RxSwift

public class RxLAContext {

    private let context: LAContext = LAContext()
    
    public init() {
        
    }
    
    public func canEvaluatePolicy(_ policy: LAPolicy, error: NSErrorPointer) -> Bool {
        return context.canEvaluatePolicy(policy, error: error)
    }

    public func evaluatePolicy(_ policy: LAPolicy, localizedReason: String) -> Single<Bool> {
        Single<Bool>.create { single in
            self.context.evaluatePolicy(policy, localizedReason: localizedReason) { result, error in
                if let error = error {
                    single(.failure(error))
                } else {
                    single(.success(result))
                }
            }
            return Disposables.create()
        }
    }
}
