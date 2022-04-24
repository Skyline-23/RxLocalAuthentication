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
                    single(Result.failure(error))
                } else {
                    single(Result.success(result))
                }
            }
            return Disposables.create()
        }
    }
    
    public func invalidate() {
        self.context.invalidate()
    }
    
    public func setCredential(_ credential: Data?, type: LACredentialType) -> Bool {
        self.context.setCredential(credential, type: type)
    }
    
    public func isCredentialSet(_ type: LACredentialType) -> Bool {
        self.context.isCredentialSet(type)
    }
    
    public func evaluateAccessControl(_ accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String) -> Single<Bool> {
        Single<Bool>.create { single in
            self.context.evaluateAccessControl(accessControl, operation: operation, localizedReason: localizedReason) { result, error in
                if let error = error {
                    single(Result.failure(error))
                } else {
                    single(Result.success(result))
                }
            }
            return Disposables.create()
        }
    }
    
    public var localizedFallbackTitle: String? {
        get {
            self.context.localizedFallbackTitle
        }
        
        set(value) {
            self.context.localizedFallbackTitle = value
        }
    }
    
    @available(iOS 10.0, *)
    public var localizedCancelTitle: String? {
        get {
            self.context.localizedCancelTitle
        }
        
        set(value) {
            self.context.localizedCancelTitle = value
        }
    }
    
    open var evaluatedPolicyDomainState: Data? {
        get {
            self.context.evaluatedPolicyDomainState
        }
    }
    
    public var touchIDAuthenticationAllowableReuseDuration: TimeInterval {
        get {
            self.context.touchIDAuthenticationAllowableReuseDuration
        }
        
        set(value) {
            self.context.touchIDAuthenticationAllowableReuseDuration = value
        }
    }
    
    @available(iOS 11.0, *)
    public var localizedReason: String {
        get {
            self.context.localizedReason
        }
        
        set(value) {
            self.context.localizedReason = value
        }
    }
    
    @available(iOS 11.0, *)
    public var interactionNotAllowed: Bool {
        get {
            self.context.interactionNotAllowed
        }
        
        set(value) {
            self.context.interactionNotAllowed = value
        }
    }
    
    @available(iOS 11.0, *)
    public var biometryType: LABiometryType {
        get {
            self.context.biometryType
        }
    }

}
