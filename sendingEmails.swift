    //Put this in viewDidLoad to disable the mail button.
    
    if !MFMailComposeViewController.canSendMail() {
            print("Mail service not available")
            sendEmailButton.isEnabled = false
            return
        }
        
        
    //Code for send mail button
    
    @IBAction func sendMailButtonPressed(_ sender: UIBarButtonItem) {
    
        let mailVC = MFMailComposeViewController()
        mailVC.mailComposeDelegate = self
        
        mailVC.setToRecipients(["name@email.com"])
        mailVC.setSubject("Subject goes here")
        let body = "Body of email goes here."
    
        mailVC.setMessageBody(body, isHTML: false)
        
        mailVC.addAttachmentData(fileData as Data, mimeType: "text/csv", fileName: "yourfilename.csv") //add an attachment if required
        
        self.present(composeVC, animated: true)
     }
    
    
//public funciton required to dismiss the controll on send/cancel

    public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith: MFMailComposeResult, error: Error?) {
        self.dismiss(animated: true, completion: nil)
    }
