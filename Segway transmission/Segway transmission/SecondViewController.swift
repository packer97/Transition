import UIKit

class SecondViewController: UIViewController {
    
    var textToShow:String?
    
    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = textToShow
    }
    
}
