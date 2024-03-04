//
//  NewViewController.swift
//  FirstTask
//
//  Created by Shaimaa Mohammed on 04/03/2024.
//

import UIKit

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 50, y: 500, width: 250, height: 250)
        let newView = CustomView(frame: rect)
        newView.myView.backgroundColor = .cyan
        self.view.addSubview(newView)
        newView.configureViewComponents(text: "shaimaa")
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
