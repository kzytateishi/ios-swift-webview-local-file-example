//
//  ViewController.swift
//  WebViewLocalFileExample
//
//  Created by Kazuya Tateishi on 2015/03/22.
//  Copyright (c) 2015年 kzy52. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    var webView: UIWebView = UIWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // WebViewを生成する
        self.webView.delegate = self;
        self.webView.frame = self.view.bounds
        
        // サブビューを追加する
        self.view.addSubview(self.webView)
        
        // リクエストを生成する
        let path = NSBundle.mainBundle().pathForResource("index", ofType: "html")!
        let url = NSURL(string: path)!
        let urlRequest = NSURLRequest(URL: url)
        
        // 指定したページを読み込む
        self.webView.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

