//
//  StarRatingControl.swift
//  TestProject
//
//  Created by GOR GALSTYAN on 2021-02-05.
//

import UIKit

@IBDesignable class StarRatingControl: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()

    @IBInspectable var rating: Int = 0 {
        didSet {
            updateStarSelectionStates()
        }
    }
    @IBInspectable var starSize: CGSize = CGSize(width: 22.0, height: 22.0) {
        didSet {
            setupStars()
        }
    }
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupStars()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStars()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupStars()
    }
    
    private func setupStars() {
        // clear any existing buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        let bundle = Bundle(for: type(of: self))
        let filledStar = UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        let emptyStar = UIImage(named:"emptyStar", in: bundle, compatibleWith: self.traitCollection)
        
        for _ in 0..<starCount {
            // Create the button
            let button = UIButton()
            button.setImage(emptyStar, for: .normal)
            button.setImage(filledStar, for: .selected)
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            addArrangedSubview(button)
            ratingButtons.append(button)
        }
        updateStarSelectionStates()
    }
    
    private func updateStarSelectionStates() {
        for (index, button) in ratingButtons.enumerated() {
            button.isSelected = index < rating
        }
    }
}
