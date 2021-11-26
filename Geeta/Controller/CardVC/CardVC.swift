//
//  CardVC.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/26/21.
//

import UIKit

class CardVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UINib(nibName: "CardCVC", bundle: nil), forCellWithReuseIdentifier: "CardCVC")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Cart"
    }
    
//    MARK: - view will
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func navigationBuilder(title: String){
        navigationController?.navigationItem.title = title
        navigationController?.navigationItem.backButtonTitle = ""
        navigationItem.titleView?.backgroundColor = .none
    }

}


extension CardVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCVC", for: indexPath) as! CardCVC
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width*0.95, height: collectionView.frame.height*0.25)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = SelectedProductVC(nibName: "SelectedProductVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
