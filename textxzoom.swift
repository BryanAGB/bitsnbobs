//PinchtoZoom font scaling

import UIKit

class ViewController: UIViewController {

    var pinchGesture = UIPinchGestureRecognizer()
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UILabel!
    @IBOutlet weak var myBigLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchGesture = UIPinchGestureRecognizer(target: self, action:#selector(pinchText(sender:)))
  
        view.addGestureRecognizer(pinchGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func pinchText(sender: UIPinchGestureRecognizer) {
        var pointSize = myBigLabel.font?.pointSize
        var pointCheck = Int(pointSize!)
        if pointCheck <= 16 && pointCheck >= 12 {
        pointSize = ((sender.velocity > 0) ? 1 : -1) * 1 + pointSize!;
        }
        else if pointCheck >= 16 {
            pointSize = ((sender.velocity > 0) ? 0 : -1) * 1 + pointSize!;
        }
        else if pointCheck <= 12 {
            pointSize = ((sender.velocity > 0) ? 1 : 0) * 1 + pointSize!;
        }
        myLabel.font = UIFont.boldSystemFont(ofSize: (pointSize)!)
        myButton.font = UIFont.systemFont(ofSize: (pointSize)!)
        myBigLabel.font = UIFont.systemFont(ofSize: (pointSize)!)

    }
    
    
}
