//
//  HeaderCVC.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/24/21.
//

import UIKit

class HeaderCVC: UICollectionViewCell {

    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateCell(headText: String, isSelect: Bool){
        
        headerLbl.text = headText
        if isSelect {
            UIView.animate(withDuration: 1) {
                self.headerView.backgroundColor = IColor.shared.hexStrToColor(hex: "#6A41F1")
            }
        } else {
            headerView.backgroundColor = IColor.shared.hexStrToColor(hex: "#F0F4FC")
        }
    }
    
}
