//
//  ViewController.swift
//  DispatchGroupSubclass
//
//  Created by Robert Ryan on 12/8/20.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let group = MyGroup()

        DispatchQueue.main.async(group: group) {
            print("starting")
            Thread.sleep(forTimeInterval: 1)
            print("done")
        }

        group.notify(queue: .main) {
            print("notify")
        }

        group.foo()
    }

}
