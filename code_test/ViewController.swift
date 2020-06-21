//
//  ViewController.swift
//  code_test
//
//  Created by Virendra Gupta on 6/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dataSource = ["one","two","three"]
    
    private var vModel = viewModel()
    
    @IBOutlet weak var table_View: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        table_View.delegate = self
//        table_View.dataSource = self
        
        
        vModel.loadImages() {
            print("search completed.")
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
                navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Help", style: .plain, target: self, action: #selector(myRightSideBarButtonItemTapped(_:)))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func myRightSideBarButtonItemTapped(_ sender:UIBarButtonItem!){
        print("Button clicked")
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//
//        if segue.identifier == "ShowDetail"{
//
//            if let destinationViewController = seque.destination as De
//        }
//    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")
   
         tableViewCell?.textLabel?.text = dataSource[indexPath.row]
//         tableViewCell?.detailTextLabel?.text  = dataSource[indexPath.row] + " subtitle"
        return tableViewCell!
    }
    
}

