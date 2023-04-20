//
//  ViewController.swift
//  MVCLesson
//
//  Created by Marat Cherkasov on 19.04.2023.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    private var dataSource = IrregularVerbs()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
        dataSource.configureVerbs()
        let nib = UINib(nibName: "VerbTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "VerbTableViewCell")
    }

    // MARK: - Methods
    
}

// MARK: - UITAbleViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        // number of rows in the table
        dataSource.verbs.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VerbTableViewCell",
                                                       for: indexPath) as? VerbTableViewCell else { return UITableViewCell() }
        cell.configure(for: dataSource.verbs[indexPath.row])
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        // cell height
        69
    }
}
