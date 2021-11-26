//
//  ProductCVC.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/24/21.
//

import UIKit

class ProductCVC: UICollectionViewCell {

    var isFavourite = false
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var heardButton: UIButton!
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var productCostLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        isFavour()
    }
    
    func updateCell(data: ProductDM){
        productNameLbl.text = data.productName
        productCostLbl.text = data.productCost
        isFavourite = data.isFavorite
    }
    
    func isFavour(){
        heardButton.tintColor = IColor.shared.hexStrToColor(hex: "000000")
        if isFavourite {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut) {
                self.heardButton.transform = CGAffineTransform.init(scaleX: 0.1, y: 0.1)
            } completion: { _ in
                UIView.animate(withDuration: 0.2) {
                    self.heardButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                    self.heardButton.transform = .identity
                }
            }

        } else {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn) {
                self.heardButton.transform = CGAffineTransform.init(scaleX: 0.1, y: 0.1)
            } completion: { _ in
                UIView.animate(withDuration: 0.2) {
                    self.heardButton.setImage(UIImage(systemName: "heart"), for: .normal)
                    self.heardButton.transform = .identity
                }
            }
        }
        isFavourite = !isFavourite
    }
    
    @IBAction func likeBtnTapped(_ sender: Any) {
        isFavour()
    }
    
}
