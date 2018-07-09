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
        
        let nibImgCell = UINib(nibName: "DealImgCell", bundle: Bundle.main)
        tableView.register(nibImgCell, forCellReuseIdentifier: "dealImgCell")
        
        let nibSummaryCell = UINib(nibName: "DealSummaryCell", bundle: Bundle.main)
        tableView.register(nibSummaryCell, forCellReuseIdentifier: "dealSummaryCell")
        
        let nibPreconditionCell = UINib(nibName: "DealPreconditionCell", bundle: Bundle.main)
        tableView.register(nibPreconditionCell, forCellReuseIdentifier: "dealPreconditionCell")
        
        let nibLocationCell = UINib(nibName: "DealLocationCell", bundle: Bundle.main)
        tableView.register(nibLocationCell, forCellReuseIdentifier: "dealLocationCell")
        
        let nibLaunchDateCell = UINib(nibName: "LaunchDateCell", bundle: Bundle.main)
        tableView.register(nibLaunchDateCell, forCellReuseIdentifier: "launchDateCell")
        
        let nibAgreementCell = UINib(nibName: "SignAgreementCell", bundle: Bundle.main)
        tableView.register(nibAgreementCell, forCellReuseIdentifier: "signAgreementCell")
        
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
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealImgCell") as? DealImgCell else { fatalError("deal img cell failed") }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealSummaryCell") as? DealSummaryCell else { fatalError("deal summary cell failed") }
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealPreconditionCell") as? DealPreconditionCell else { fatalError("deal precondition cell failed") }
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dealLocationCell") as? DealLocationCell else { fatalError("deal cell failed") }
            return cell
        case 5:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "launchDateCell") as? LaunchDateCell else { fatalError("launch cell failed") }
            return cell
        case 6:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "signAgreementCell") as? SignAgreementCell else { fatalError("sign agreement cell failed") }
            return cell
        default:
            return PriceCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
}
