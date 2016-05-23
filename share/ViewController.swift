//
//  ViewController.swift
//  share
//
//  Created by Brittney Hoy on 5/23/16.
//  Copyright © 2016 Brittney Hoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Instead of having a textfield, for our app, we can just pass in the URL of the recipe
    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func myShareButton(sender: UIButton) {
        // Hide the keyboard
        myTextField.resignFirstResponder()
        // Check and see if the text field is empty
        if (myTextField.text == "") {
            // The text field is empty so display an Alert
            displayAlert("Warning", message: "Enter something in the text field!")
        } else {
            // We have contents so display the share sheet
            displayShareSheet(myTextField.text!)
        }
    }
    
    func displayAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
        return
    }
    
    func displayShareSheet(shareContent:String) {
        let activityViewController = UIActivityViewController(activityItems: [shareContent as NSString], applicationActivities: nil)
        presentViewController(activityViewController, animated: true, completion: {})
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

