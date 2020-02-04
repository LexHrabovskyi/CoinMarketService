//
//  ViewController.swift
//  CoinMarketService
//
//  Created by LexHrabovskyi on 02/04/2020.
//  Copyright (c) 2020 LexHrabovskyi. All rights reserved.
//

import UIKit
import CoinMarketService

class ViewController: UIViewController {

    private var dataSource: CoinListData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkManager.shared.getMarketData { (result: Result<CoinListData, APIError>) in
            
            switch result {
            case .success(let newList):
                self.dataSource = newList
            case .failure(let error):
                print(error)
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

