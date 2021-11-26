//
//  SelectedTVC.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/25/21.
//

import UIKit

class SelectedTVC: UITableViewCell {

    @IBOutlet weak var stack: UIStackView!
    @IBOutlet weak var minusTapped: UIButton!
    @IBOutlet weak var plusTapped: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    
    @IBOutlet var sizeButton: [UIButton]!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        shadowAdder()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseOut) {
            self.countLabel.text = "\(Int(self.countLabel.text!)! + 1)"
            self.countLabel.transform = CGAffineTransform(scaleX: 2, y: 2)
        } completion: { _ in
            UIView.animate(withDuration: 0.25) {
                self.countLabel.transform = .identity
            }
        }

    }
    
    @IBAction func minusTapped(_ sender: Any) {
        if Int(countLabel.text!)! > 0{
            UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseOut) {
                self.countLabel.text = "\(Int(self.countLabel.text!)! - 1)"
                self.countLabel.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            } completion: { _ in
                UIView.animate(withDuration: 0.25) {
                    self.countLabel.transform = .identity
                }
            }
        }
    }
    
    func shadowAdder(){
        for btn in sizeButton.enumerated(){
            btn.element.backgroundColor = IColor.shared.hexStrToColor(hex: "F0F4FC")
            btn.element.tintColor = IColor.shared.hexStrToColor(hex: "000000")
            btn.element.layer.cornerRadius = 6
            btn.element.layer.shadowOpacity = 0.3
            btn.element.layer.shadowOffset = .init(width: 2.5, height: 2.5)
            btn.element.layer.shouldRasterize = true
        }
        sizeButton[0].tintColor = IColor.shared.hexStrToColor(hex: "FFFFFF")
        sizeButton[0].backgroundColor = IColor.shared.hexStrToColor(hex: "6B41F2")
        stack.layer.cornerRadius = 4
        stack.layer.shadowRadius = 1
        stack.layer.shadowColor = UIColor.black.cgColor
        stack.layer.shadowOpacity = 1
        stack.layer.shadowOffset = .zero
        stack.layer.shouldRasterize = true
    }
    
    @IBAction func size1(_ sender: UIButton) {
        for btn in sizeButton.enumerated(){
            btn.element.backgroundColor = IColor.shared.hexStrToColor(hex: "F0F4FC")
            btn.element.tintColor = IColor.shared.hexStrToColor(hex: "000000")
        }
        sender.tintColor = IColor.shared.hexStrToColor(hex: "FFFFFF")
        sender.backgroundColor = IColor.shared.hexStrToColor(hex: "6B41F2")
    }
    
    @IBAction func size2(_ sender: UIButton) {
        for btn in sizeButton.enumerated(){
            btn.element.backgroundColor = IColor.shared.hexStrToColor(hex: "F0F4FC")
            btn.element.tintColor = IColor.shared.hexStrToColor(hex: "000000")
        }
        sender.tintColor = IColor.shared.hexStrToColor(hex: "FFFFFF")
        sender.backgroundColor = IColor.shared.hexStrToColor(hex: "6B41F2")
    }
    
    @IBAction func size3(_ sender: UIButton) {
        for btn in sizeButton.enumerated(){
            btn.element.backgroundColor = IColor.shared.hexStrToColor(hex: "F0F4FC")
            btn.element.tintColor = IColor.shared.hexStrToColor(hex: "000000")
        }
        sender.tintColor = IColor.shared.hexStrToColor(hex: "FFFFFF")
        sender.backgroundColor = IColor.shared.hexStrToColor(hex: "6B41F2")
    }
    
    @IBAction func size4(_ sender: UIButton) {
        for btn in sizeButton.enumerated(){
            btn.element.backgroundColor = IColor.shared.hexStrToColor(hex: "F0F4FC")
            btn.element.tintColor = IColor.shared.hexStrToColor(hex: "000000")
        }
        sender.tintColor = IColor.shared.hexStrToColor(hex: "FFFFFF")
        sender.backgroundColor = IColor.shared.hexStrToColor(hex: "6B41F2")
    }
    
    @IBAction func size5(_ sender: UIButton) {
        for btn in sizeButton.enumerated(){
            btn.element.backgroundColor = IColor.shared.hexStrToColor(hex: "F0F4FC")
            btn.element.tintColor = IColor.shared.hexStrToColor(hex: "000000")
        }
        sender.tintColor = IColor.shared.hexStrToColor(hex: "FFFFFF")
        sender.backgroundColor = IColor.shared.hexStrToColor(hex: "6B41F2")
    }
    
}
