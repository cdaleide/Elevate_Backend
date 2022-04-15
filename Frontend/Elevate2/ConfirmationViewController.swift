//
//  ConfirmationViewController.swift
//  Elevate2
//
//  Created by Elevate App on 11/4/20.
//

import UIKit

class ConfirmationViewController: UIViewController {
    
    @IBOutlet weak var web: UIWebView!
    
    //passed variables
    var up:Bool!
    var buttonPicked:Int!
    var floorDestination:Int!
    //var ticket:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 116/255, green: 223/255, blue: 246/255, alpha: 1.0)
        //(red: 116, green: 223, blue: 246, alpha: 1)
        send_ticket()
    }
    
    func send_ticket() {
        print("-Done-")
        print(up)
        print(buttonPicked)
        print(floorDestination)
        var ticket = "http://18.219.245.250:80/1/" + String(buttonPicked) + "/" + String(floorDestination)
        print(ticket)
        print("-Done-")
        
        let url=URL(string: ticket)
        let urlreq=URLRequest(url: url!)
        self.web.loadRequest(urlreq)
        
        //call server_successfully_connected()
    }
    
    //func server_successfully_connected() {
        //read from server to confirm ticket went through
    //}
    

}
