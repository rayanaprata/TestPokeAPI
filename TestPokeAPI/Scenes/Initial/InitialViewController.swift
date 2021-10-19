//
//  InitialViewController.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 18/10/21.
//

import UIKit

class InitialViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var buttonStart: UIButton!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    // MARK: Actions
    @IBAction func handlerStartButton(_ sender: Any) {
        let viewController = HomeViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    // MARK: Methods
    func setupUI() {
        buttonStart.layer.cornerRadius = 12
        
        title = "Initial"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"Initial", style:.plain, target:nil, action:nil)
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.96, green: 0.80, blue: 0.27, alpha: 1.00)
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
    }
    
}
