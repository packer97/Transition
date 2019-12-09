import UIKit

protocol FirstViewControllerDelegate: class {
    func closeWithText(_ text: String)
}

class FirstViewController: UIViewController {

       @IBOutlet weak var label: UILabel!
        
        @IBAction func showSecond() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
            let secondViewController = viewController as! SecondViewController
            secondViewController.textToShow = "Tекст с первого экрана"
            secondViewController.delegate = self
            show(secondViewController, sender: nil)
            
        }
    }
extension FirstViewController: SecondViewControllerDelegate {
        
        func closeWithText(_ text: String) {
            label.text = text
        }
        
    }
