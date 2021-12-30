//
//  ViewController.swift
//  RxLocalAuthentication
//
//  Created by Skyline-23 on 12/30/2021.
//  Copyright (c) 2021 Skyline-23. All rights reserved.
//

import UIKit
import RxSwift
import RxLocalAuthentication

class ViewController: UIViewController {
    
    let context: RxLAContext = RxLAContext()
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Test")
            .subscribe { result in
                print(result)
            } onFailure: { error in
                print(error)
            } onDisposed: {
                print("disposed")
            }
            .disposed(by: disposeBag)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

