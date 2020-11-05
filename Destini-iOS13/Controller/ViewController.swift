//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var StoryLabel: UILabel!
    @IBOutlet weak var ChoiceOneButton: UIButton!
    @IBOutlet weak var ChoiceTwoButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChoiceOneButton.layer.cornerRadius = 30
        ChoiceOneButton.clipsToBounds = true
        
        ChoiceTwoButton.layer.cornerRadius = 30
        ChoiceTwoButton.clipsToBounds = true
        
        StoryLabel.text = storyBrain.stories[0].title
        ChoiceOneButton.setTitle(storyBrain.stories[0].choice1, for: .normal)
        ChoiceTwoButton.setTitle(storyBrain.stories[0].choice2, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let nextStory : Story = storyBrain.nextStory((sender.titleLabel?.text)!)
        updateUI(nextStory)
    }
    
    func updateUI(_ story: Story){
        StoryLabel.text = story.title
        ChoiceOneButton.setTitle(story.choice1, for: .normal)
        ChoiceTwoButton.setTitle(story.choice2, for: .normal)
    }
    
    
    


}

