//
//  CardCVC.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/26/21.
//

import UIKit

class CardCVC: UICollectionViewCell {

    @IBOutlet weak var stack: UIStackView!
    @IBOutlet weak var countLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        shadowAdder()
    }
    
    func shadowAdder(){
        stack.layer.cornerRadius = 4
        stack.layer.shadowColor = UIColor.black.cgColor
        stack.layer.shadowOpacity = 1
        stack.layer.shadowOffset = .zero
        stack.layer.shadowRadius = 1
        stack.layer.shouldRasterize = true
    }

    @IBAction func plusTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseOut) {
            self.countLbl.text = "\(Int(self.countLbl.text!)! + 1)"
            self.countLbl.transform = CGAffineTransform(scaleX: 2, y: 2)
        } completion: { _ in
            UIView.animate(withDuration: 0.25) {
                self.countLbl.transform = .identity
            }
        }
    }
    
    @IBAction func minusTapped(_ sender: UIButton) {
        if Int(countLbl.text!)! > 0{
            UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseOut) {
                self.countLbl.text = "\(Int(self.countLbl.text!)! - 1)"
                self.countLbl.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            } completion: { _ in
                UIView.animate(withDuration: 0.25) {
                    self.countLbl.transform = .identity
                }
            }
        }
    }
}
