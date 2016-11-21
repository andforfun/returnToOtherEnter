//
//  ViewController.swift
//  returnToOtherEnter
//
//  Created by 李小明 on 2016/11/12.
//  Copyright © 2016年 李小明. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    @IBAction func enterLabel(_ sender: AnyObject) {
         self.view.endEditing(true)
    }
    
    @IBOutlet weak var secondTextField: UITextField!
    func textFieldShouldReturn(_ textField: UITextField) ->
        Bool {
            if(textField.tag ==  0){
                //textField.resignFirstResponder()
                secondTextField.becomeFirstResponder()
                return false
               }
            else{
                textField.resignFirstResponder()
            }
            return true
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

