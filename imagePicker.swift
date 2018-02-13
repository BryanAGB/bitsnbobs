//Remember to add Privacy - Camera Useage Description (and Privacy - Photo Library Useage Description if required) to project info.plist

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageViewPortal: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = false //set to true if you want to edit images.
        imagePicker.sourceType = .camera
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let userPickedImage = info[UIImagePickerControllerOriginalImage] //if editing is set to true replace UIImagePickerControllerOriginalImage with UIImagePickerControllerEditedImage
        imageViewPortal.image = userPickedImage as? UIImage
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func cameraClicked(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
        
    }
    
}
