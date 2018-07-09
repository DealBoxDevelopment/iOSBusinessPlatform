//
//  ViewController.swift
//  DealBoxMerchant
//
//  Created by Sky Xu on 7/8/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200
        
        let nibCellPrice = UINib(nibName: "PriceCell", bundle: Bundle.main)
        tableView.register(nibCellPrice, forCellReuseIdentifier: "priceCell")
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "priceCell") as? PriceCell else { fatalError("pricecell configure failed") }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealImgCell") as? DealImgCell else { fatalError("deal cell failed") }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealImgCell") as? DealImgCell else { fatalError("deal cell failed") }
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealImgCell") as? DealImgCell else { fatalError("deal cell failed") }
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealImgCell") as? DealImgCell else { fatalError("deal cell failed") }
            return cell
        case 5:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealImgCell") as? DealImgCell else { fatalError("deal cell failed") }
            return cell
        case 6:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealImgCell") as? DealImgCell else { fatalError("deal cell failed") }
            return cell
        default:
            return PriceCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
}
