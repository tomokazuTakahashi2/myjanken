
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLavel: UILabel!
    
    var answerNumber = 0
    @IBAction func shuffleAction(_ sender: Any) {
        
        var newAnswerNumber = 0
        repeat {
            newAnswerNumber = Int(arc4random_uniform(3))
        }while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            answerLavel.text = "グー"
            answerImageView.image = UIImage(named:"gu")
        }else if answerNumber == 1 {
            answerLavel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
        }else if answerNumber == 2 {
            answerLavel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
        }

    }
}

