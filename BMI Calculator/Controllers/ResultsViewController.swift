import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var adviceLable: UILabel!
    @IBOutlet weak var bmiLable: UILabel!
    override func viewDidLoad() {
        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
        super.viewDidLoad()

    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
