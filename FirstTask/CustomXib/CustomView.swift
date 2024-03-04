//
//  CustomView.swift
//  FirstTask
//
//  Created by Shaimaa Mohammed on 04/03/2024.
//

import UIKit

class CustomView: UIView {
    
    static let identifier = "CustomView"
    @IBOutlet var myView: UIView!
    var receivedText: String?
    @IBOutlet weak var secondLAbel: UILabel!
    @IBAction func newButton(_ sender: UIButton) {
        print("Button pressed")
        var currentText = secondLAbel.text ==
        "Press to change" ? (receivedText ?? "text Changed") : "Press to change"
        secondLAbel.text = currentText
        
    }
    

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {

        let nib = UINib(nibName: CustomView.identifier, bundle: nil)

        guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                            UIView else {fatalError("Unable to convert nib")}

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        addSubview(view)

    }
        
//    func buttonAction() {
//        print("Button pressed")
//        secondLAbel.text = "text Changed"
//    }
    
    func configureViewComponents(text : String){
            receivedText = text
        }

    
}
