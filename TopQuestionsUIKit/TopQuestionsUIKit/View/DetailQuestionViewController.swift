//
//  File.swift
//  DetailQuestionViewController
//
//  Created by Jesus Cruz on 25/06/21.
//

import UIKit

class DetailQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet weak var questionTagLabels: UILabel!
    @IBOutlet weak var questionTimeStampLabel: UILabel!
    @IBOutlet weak var questionUpLabel: UILabel!
    @IBOutlet weak var questionCommentsLabel: UILabel!
    @IBOutlet weak var questionViewsLabel: UILabel!
    
    override func viewDidLoad() {
        title = "Question"
        setUp()
    }
    
    func setUp() {
        questionTitleLabel.text = "How to Resize Image with Swift UI"
        questionTagLabels.text = "swift,xcode,ui"
        questionTimeStampLabel.text = "Jun 4 2021"
        questionUpLabel.text = "🆙 14K"
        questionCommentsLabel.text = "💬 10K"
        questionViewsLabel.text = "👀 5K"
    }
}
