//
//  SelectedProductVC.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/25/21.
//

import UIKit

class SelectedProductVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!{
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
            tableView.showsVerticalScrollIndicator = false
            tableView.showsHorizontalScrollIndicator = false
            tableView.register(UINib(nibName: "SelectedTVC", bundle: nil), forCellReuseIdentifier: "SelectedTVC")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    MARK: - view will
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
}


extension SelectedProductVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SelectedTVC", for: indexPath) as? SelectedTVC else {return UITableViewCell()}
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        tableView.frame.height*0.3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var viewForHeader: UIView {
            let vw = UIView()
            let img = UIImageView()
            img.image = UIImage(named: "Fashion")
            img.contentMode = .scaleAspectFit
            img.backgroundColor = IColor.shared.hexStrToColor(hex: "#F0F4FC")
            img.translatesAutoresizingMaskIntoConstraints = false
            vw.addSubview(img)
            NSLayoutConstraint.activate([
                img.topAnchor.constraint(equalTo: vw.topAnchor),
                img.bottomAnchor.constraint(equalTo: vw.bottomAnchor),
                img.rightAnchor.constraint(equalTo: vw.rightAnchor),
                img.leftAnchor.constraint(equalTo: vw.leftAnchor)
            ])
            
            let btn = UIButton()
            btn.imageView?.image = UIImage(systemName: "person")
            btn.backgroundColor = .red
            vw.addSubview(btn)
            NSLayoutConstraint.activate([
                btn.topAnchor.constraint(equalTo: vw.topAnchor,constant: 25),
                btn.rightAnchor.constraint(equalTo: vw.rightAnchor, constant: 25),
                btn.heightAnchor.constraint(equalToConstant: 30),
                btn.widthAnchor.constraint(equalToConstant: 30)
            ])
            
            return vw
        }
        
        return viewForHeader
    }
    
}
