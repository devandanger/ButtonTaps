//
//  ReactiveExtensions.swift
//  ButtonTaps
//
//  Created by Evan Anger on 1/9/19.
//  Copyright © 2019 Mighty Strong Software. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

extension Reactive where Base: UIButton {
    public var tap2: ControlEvent<Void> {
        return controlEvent(.touchUpInside)
    }
}
