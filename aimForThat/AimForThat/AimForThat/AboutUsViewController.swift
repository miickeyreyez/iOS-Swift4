//
//  AboutUsViewController.swift
//  AimForThat
//
//  Created by Ángel Reyes on 16/04/18.
//  Copyright © 2018 AngelReyes. All rights reserved.
//

import UIKit
import WebKit

class AboutUsViewController: UIViewController {

    @IBOutlet var UIWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let url = Bundle.main.url(forResource: "index", withExtension: "html"){
            print(url)
        
        if let htmlData = try? Data(contentsOf:url){
         
            let baseURL = URL(fileURLWithPath:Bundle.main.bundlePath)
            self.UIWebView.load(htmlData,mimeType:"text/html",characterEncodingName: "UTF-8",baseURL:baseURL)
        }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backPress(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
