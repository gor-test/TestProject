//
//  ProductDetailViewController.swift
//  TestProject
//
//  Created by GOR GALSTYAN on 2021-02-05.
//

import UIKit

class ProductDetailViewController: UIViewController {

    //MARK: Properties
    var product: ProductList.Product?


    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratings: StarRatingControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = product?.name
        priceLabel.text = product?.price
        productImage.load(url: product?.image ?? "")
        ratings.rating = Int.random(in: 1...5)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
