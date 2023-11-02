import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!

    var calbBrain = CalcBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        weightLable.text = "\(Int(sender.value))Kg"
    }
    @IBAction func sliderActionHeight(_ sender: UISlider) {
        heightLable.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calbBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destVC = segue.destination as! ResultsViewController
            
            destVC.bmiValue = calbBrain.getBMIValue()
            destVC.advice = calbBrain.getAdvice()
            destVC.color = calbBrain.getColor()
        }
    }
    

}

