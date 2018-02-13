 
 func createCSV () {
 
 let fileName = "yourfilename.csv"
 let filePath = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
 print("file path loaded")
 
 var csvText = ("Headings,Go,Here \n") // new line required at end of each row for CSV to be formatted correctly.
 
 let newLine = ("Data, Goes, Here\n")
 
 csvText.append(contentsOf: newLine)
 
 do {
            try csvText.write(to: filePath!, atomically: true, encoding: String.Encoding.utf8)
            if let fileData = NSData(contentsOf: filePath!) {
                print("Files Loaded")
            }
        }
        catch {
            print("Unable to write to file")
        }
 
 }
