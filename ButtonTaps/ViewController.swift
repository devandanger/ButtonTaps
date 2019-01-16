//
//  ViewController.swift
//  ButtonTaps
//
//  Created by Evan Anger on 1/9/19.
//  Copyright © 2019 Mighty Strong Software. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    @IBAction func regularButtonAction(_ sender: Any) {
        let dateString = self.dateFormatter.string(from: Date())
        print("Button: \(dateString)")
    }
    
    @IBAction func normalButton(_ sender: Any) {
    }
    @IBOutlet weak var rxButton: UIButton!
    
    lazy var dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "HH:mm:ss"
        return df
    }()
    
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.rxButton.setBackgroundColor(color: UIColor.orange, forState: .selected)
        
        self.rxButton
            .rx.tap
            .subscribe(onNext: {
                let dateString = self.dateFormatter.string(from: Date())
                print("Rx Button: \(dateString)")
            }).disposed(by: self.disposeBag)
        
    }
}

