
import UIKit

protocol SecondViewControllerDelegate: class {
    func closeWithText(_ text: String)
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondLabel.text = textToShow
    }

    @IBOutlet weak var secondLabel: UILabel!

    
    weak var delegate: SecondViewControllerDelegate?
    var textToShow: String?
    
    
    @IBAction func showFitst() {
        delegate?.closeWithText("Текст со второго экрана")
        navigationController?.popViewController(animated: true)
    }
}
