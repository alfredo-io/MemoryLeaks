//
//  Copyright © 2020 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import UIKit

class Child {
    weak var parent: Parent?

    deinit {
        print("Child deinit called")
    }
}

class Parent {
    var child: Child?

    deinit {
        print("Parent denit called")
    }
}

class ViewController: UIViewController {
    var john: Child?
    var mom: Parent?

    override func viewDidLoad() {
        super.viewDidLoad()

        john = Child()
        mom = Parent()

        john?.parent = mom
        mom?.child = john

        john = nil
        mom = nil
    }
}
