//
//  DocumentViewController.swift
//  CodeForGood2019
//
//  Created by Malik Arachiche on 9/21/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class DocumentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arr = ["Advocacy Parent Folder", "Coloring-Book"];
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = documentTableView.dequeueReusableCell(withIdentifier: "hello", for: indexPath) as! DocumentTableViewCell
        cell.documentLabel.text = arr[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pdfTitle = arr[indexPath.row]
        if let url = Bundle.main.url(forResource: pdfTitle, withExtension: "pdf") {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            //self.view.addSubview(webView)
            
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = pdfTitle
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
    }
    

    @IBOutlet var documentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        documentTableView.delegate = self
        documentTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
