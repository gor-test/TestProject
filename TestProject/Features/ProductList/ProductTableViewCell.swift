//
//  ProductTableViewCell.swift
//  TestProject
//
//  Created by GOR GALSTYAN on 2021-02-05.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)
    }
    
    override func prepareForReuse() {
        productImage.image = nil
    }

}
