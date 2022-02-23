//
//  ViewController.swift
//  MinimalBazelFrameworkDemo
//
//  Created by Daohan Chong on 2/22/22.
//

import UIKit
import DemoSwiftFramework

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    view.backgroundColor = .systemBackground

    print("view did load")

    DemoManager().doSomething()

    DemoManager().demoExtensionMethod()
    // BUG Here:
    // Use --sandbox_debug to see verbose messages from the sandbox
    // Undefined symbols for architecture x86_64:
    // "DemoSwiftFramework.DemoManager.demoExtensionMethod() -> ()", referenced from:
    //   MinimalBazelFrameworkDemo_MinimalBazelFrameworkDemoAppLib.ViewController.viewDidLoad() -> () in libMinimalBazelFrameworkDemoAppLib.a(ViewController.swift.o)
    // ld: symbol(s) not found for architecture x86_64
  }


}

