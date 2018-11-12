//
// Created by 张留岗 on 11/12/18.
// Copyright (c) 2018 gugu. All rights reserved.
//

import UIKit

open class NiblessViewController: UIViewController {
    /// - Methods
    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable, message: "Loading this view controller from a nib is unsupported")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @available(*, unavailable, message: "Loading this view controller from a nib is unsupported")
    public required init(coder aDecoder: NSCoder) {
        fatalError("Loading this view controller from a nib is unsupported")
    }
}
