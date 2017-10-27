//PinchtoZoom font scaling

import UIKit

class ViewController: UIViewController {

    var pinchGesture = UIPinchGestureRecognizer()
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UILabel!
    @IBOutlet weak var myTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchGesture = UIPinchGestureRecognizer(target: self, action:#selector(pinchText(sender:)))
        myLabel.addGestureRecognizer(pinchGesture)
        myButton.addGestureRecognizer(pinchGesture)
        myTextField.addGestureRecognizer(pinchGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func pinchText(sender: UIPinchGestureRecognizer) {
        var pointSize = myTextField.font?.pointSize
        var pointCheck = Int(pointSize!)
        if pointCheck <= 30 && pointCheck >= 20 {
        pointSize = ((sender.velocity > 0) ? 1 : -1) * 1 + pointSize!;
        }
        else if pointCheck >= 30 {
            pointSize = ((sender.velocity > 0) ? 0 : -1) * 1 + pointSize!;
        }
        else if pointCheck <= 20 {
            pointSize = ((sender.velocity > 0) ? 1 : 0) * 1 + pointSize!;
        }
        myLabel.font = UIFont( name: "arial", size: (pointSize)!)
        myButton.font = UIFont( name: "arial", size: (pointSize)!)
        myTextField.font = UIFont( name: "arial", size: (pointSize)!)

    }
    
    
}
