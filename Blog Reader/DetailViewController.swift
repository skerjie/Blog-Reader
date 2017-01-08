//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Andrei Palonski on 08.01.17.
//  Copyright © 2017 Andrei Palonski. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var webView: UIWebView!

  func configureView() {
    // Update the user interface for the detail item.
    
    
    if let detail = self.detailItem {
      self.title = detail.value(forKey: "title") as! String
        if let blogWebView = self.webView {
            blogWebView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.configureView()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  var detailItem: Event? {
    didSet {
        // Update the view.
        self.configureView()
    }
  }


}

