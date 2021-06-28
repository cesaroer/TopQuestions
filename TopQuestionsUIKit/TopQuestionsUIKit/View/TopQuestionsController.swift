//
//  ViewController.swift
//  TopQuestionsUIKit
//
//  Created by Jesus Cruz on 25/06/21.
//

import UIKit

class TopQuestionsController: UITableViewController  {
    
    private let cellIdentifier = "questionCellView"
    private let segueIdentifier = "showQuestionDetail"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        title = "Top Questions"
        setUp()
    }
    
    func setUp() {
        //TODO: Prepare View
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! QuestionCellView
        cell.accessoryType = .disclosureIndicator
        cell.questionTitleLabel.text = "How to Resize Image with Swift UI"
        cell.questionTagsLabel.text = "swift,xcode,ui"
        cell.questionTimeStampLabel.text = "Jun 4 2021"
        cell.questionsUpsLabel.text = "🆙 14K"
        cell.questionsCommentsLabel.text = "💬 10K"
        cell.questionsViewLabel.text = "👀 5K"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}
