//
//  SearchTableViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/29/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import CoreData
class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var lblCell: UILabel!
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
    

