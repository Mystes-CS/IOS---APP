//
//  Trailer	.swift
//  電子書APP
//
//  Created by Zonghan on 2018/4/9.
//  Copyright © 2018年 Zonghan. All rights reserved.
//

import UIKit

class Trailer : UIViewController {
    @IBOutlet weak var wv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "oCm_lnoVf08")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
            else { return }
        wv.loadRequest( URLRequest(url: youtubeURL) )
    }
}
	
