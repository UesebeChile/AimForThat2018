//
//  AboutUsViewController.swift
//  AimForThat2018
//
//  Created by Cristian Torres on 6/29/18.
//  Copyright © 2018 Uesebe. All rights reserved.
//

import UIKit
import WebKit

class AboutUsViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //cargamos la URL de Ayuda
        
        let myURL = URL(string: "https://www.uesebe.cl")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

/*        if let url = Bundle.main.url(forResource: "AimForThat", withExtension: "html") {
        
            if let htmlData = try? Data(contentsOf: url){
                
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                
                self.webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
                }
        }
 */
    

    
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

    @IBAction func backPressed(){
        dismiss(animated: true, completion:nil)
    }
    
}

