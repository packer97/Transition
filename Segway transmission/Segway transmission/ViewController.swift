import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBAction func showSecond() {
        performSegue(withIdentifier: "showSecond", sender: nil)
    }

    @IBAction func unwindViewController(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindToFirst" else { return }
        guard let secondViewController = segue.source as? SecondViewController else { return }
        firstLabel.text = secondViewController.textToShow
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showSecond" else { return }
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.textToShow = "text from first controller"
    }
    
}

