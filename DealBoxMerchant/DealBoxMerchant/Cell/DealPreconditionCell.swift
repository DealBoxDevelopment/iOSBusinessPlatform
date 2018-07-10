//
//  DealPreconditionCell.swift
//  DealBoxMerchant
//
//  Created by Sky Xu on 7/9/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import UIKit

class DealPreconditionCell: UITableViewCell {

    @IBOutlet var tableView: UITableView!
    
    let requiredConditions = ["Limit 2 per person, may buy 2 additional as gifts.", "Not valid for the purchase of alcohol.", "May be repurchased every 30 days."]
    let optionalConditions = ["Appointment required, same day appointments accepted.", "Limit 1 per visit.", "Appointment required.", "Must use promotional value in 1 visit.", "Valid only for option purchased.", "All goods or services must be used by the same person.", "Extra fee of $ 1 outside service area.", "Subject to weather."]
   
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpTable()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
//        tableView?.frame = CGRect(x: 0, y: 45, width: self.bounds.width, height: self.bounds.height-45)
    }
    
    func setUpTable() {
//        let frame = CGRect(x: 0, y: 45, width: self.bounds.width, height: self.bounds.height-45)
//        tableView = UITableView(frame: frame, style: .plain)
        tableView?.delegate = self
        tableView?.dataSource = self
//        self.addSubview(tableView!)
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.estimatedRowHeight = 100
        
        let conditionCellNib = UINib(nibName: "PreconditionTableViewCell", bundle: Bundle.main)
        tableView?.register(conditionCellNib, forCellReuseIdentifier: "conditionCell")
    }
    
    @objc func checkBoxClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}

extension DealPreconditionCell: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return requiredConditions.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "conditionCell") as? PreconditionTableViewCell else { fatalError("condition cell failed") }
        cell.conditionLabel.text = requiredConditions[indexPath.row]
        cell.checkBtn.addTarget(self, action: #selector(checkBoxClicked(_:)), for: .touchUpInside)
        
        return cell
    }
  
}
