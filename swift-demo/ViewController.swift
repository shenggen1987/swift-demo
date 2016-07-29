//
//  ViewController.swift
//  swift-demo
//
//  Created by shining3d on 7/29/16.
//  Copyright © 2016 lishenggen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let detailURL = "http://www.baidu.com"
    let webViews: UIWebView! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let webView = UIWebView(frame:self.view.bounds)
//        let url = NSURL(string: detailURL)
        let res = NSBundle.mainBundle().pathForResource("index",ofType:"html", inDirectory: "h5")
        let url = NSURL(fileURLWithPath: res!)
       
        let request = NSURLRequest(URL: url)
        let theWebView:UIWebView = UIWebView(frame:UIScreen.mainScreen().applicationFrame)
        theWebView.scrollView.bounces = false
        theWebView.loadRequest(request)
        self.view.addSubview(theWebView)
        
//        webView.loadRequest(request)
//        self.view.addSubview(webView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

