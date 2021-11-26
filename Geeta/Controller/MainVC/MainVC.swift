//
//  MainVC.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/24/21.
//

import UIKit

class MainVC: UIViewController {
    
    var sortData: [SortDM] = [
        SortDM.init(name: "Popular", isSelected: true),
        SortDM.init(name: "Mens", isSelected: false),
        SortDM.init(name: "Womens", isSelected: false),
        SortDM.init(name: "Sale", isSelected: false)
    ]
    var productData = [ProductDM]()
    var sizeForItem = [0.45, 0.48]

    @IBOutlet weak var headerCollectionView: UICollectionView!{
        didSet{
            headerCollectionView.delegate = self
            headerCollectionView.dataSource = self
            headerCollectionView.register(UINib(nibName: "HeaderCVC", bundle: nil), forCellWithReuseIdentifier: "HeaderCVC")
        }
    }
    
    @IBOutlet weak var productCollectionView: UICollectionView!{
        didSet{
            productCollectionView.delegate = self
            productCollectionView.dataSource = self
            productCollectionView.register(UINib(nibName: "ProductCVC", bundle: nil), forCellWithReuseIdentifier: "ProductCVC")
        }
    }
    
//    MARK: view did load -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
//    MARK: - view will
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true

    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func largeSizeTapped(_ sender: UIButton) {
        sizeForItem = [0.9, 1]
        self.productCollectionView.reloadData()
    }
    
    @IBAction func miniSizeTapped(_ sender: UIButton) {
        sizeForItem = [0.45, 0.48]
        self.productCollectionView.reloadData()
    }
    
    @IBAction func notificationTapped(_ sender: Any) {
    }
    
    @IBAction func cardTapped(_ sender: Any) {
        let vc = CardVC(nibName: "CardVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func favouriteTapped(_ sender: Any) {
        let vc = FavouriteVC(nibName: "FavouriteVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func searchTapped(_ sender: Any) {
    }
    
    @IBAction func lastTapped(_ sender: Any) {
    }
    
}


extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
//    MARK: number of items in section -
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == headerCollectionView {
            return sortData.count
        } else {
            return 10
        }
        
    }
    
    
//    MARK: cell for row at
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == headerCollectionView {
            
            guard let cell = headerCollectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCVC", for: indexPath) as? HeaderCVC else {return UICollectionViewCell()}
            cell.updateCell(headText: sortData[indexPath.row].name, isSelect: sortData[indexPath.row].isSelected)
            return cell
            
        } else {
            
            let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductCVC", for: indexPath)
            
            return cell
            
        }
        
    }
    
//    MARK: size for item at
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == productCollectionView{
            return CGSize(width: productCollectionView.frame.width*sizeForItem.first!, height: productCollectionView.frame.height*sizeForItem.last!)

        } else {
            return CGSize(width: headerCollectionView.frame.width*0.25, height: headerCollectionView.frame.height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == productCollectionView{
            let vc = SelectedProductVC(nibName: "SelectedProductVC", bundle: nil)
            
            navigationController?.pushViewController(vc, animated: true)
        } else {
            for (k, _) in sortData.enumerated() {
                sortData[k].isSelected = false
            }
            sortData[indexPath.row].isSelected = true
            headerCollectionView.reloadData()
        }
    }
    
}
