//
//  ViewController.swift
//  SystemLogs
//
//  Created by Ben Asher on 10/12/18.
//  Copyright © 2018 Ben Asher. All rights reserved.
//

import CoreTelephony
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Trigger TIC Read Status and [BoringSSL] logs
        let url = URL(string: "https://placekitten.com/200/300")!
        let session = URLSession(configuration: .ephemeral)
        session.dataTask(with: URLRequest(url: url)) { (_, _, _) in

        }.resume()

        // Trigger CoreTelephony XPC logs
        let _ = CTTelephonyNetworkInfo()
    }
}

