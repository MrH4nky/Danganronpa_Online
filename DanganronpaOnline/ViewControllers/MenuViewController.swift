
import UIKit

class MenuViewController: UIViewController{

    // MARK: - UI
    
    
    
    private lazy var tableVw: UITableView =
    {
        let tabv = UITableView()
        tabv.translatesAutoresizingMaskIntoConstraints = false
        tabv.backgroundColor = .clear
        tabv.rowHeight = UITableView.automaticDimension
        tabv.estimatedRowHeight = 50
        tabv.separatorStyle = .none
        tabv.register(MenuTableViewCell.self, forCellReuseIdentifier: MenuTableViewCell.cellId)
        return tabv
    }()
    
    private lazy var menuViewModel = MenuViewModel()
    
    // MARK: - Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Menu"
        self.view.backgroundColor = .black
        setUpViews()
    }
    
    override func loadView() {
        super.loadView()
        setup()
        
    }
    // MARK: - Navigation

}

private extension MenuViewController{
    func setup(){
        self.view.addSubview(tableVw)
        
        tableVw.dataSource = self
        tableVw.backgroundColor = .black
        
        NSLayoutConstraint.activate([
            tableVw.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50),
            tableVw.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            tableVw.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            tableVw.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
        ])
        
    }
}

// MARK: - UITableViewData

extension MenuViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuViewModel.MenuBS.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuE = menuViewModel.MenuBS[indexPath.row]
        
        let cell = tableVw.dequeueReusableCell(withIdentifier: MenuTableViewCell.cellId, for: indexPath) as! MenuTableViewCell
        
        cell.configure(with: menuE, delegate: self)
        return cell
    }
}

extension MenuViewController: MenuTableViewCellDelegate{
    func didTapBtn(for menuE: MenuB) {
        let vc = menuE.linkView
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setUpViews(){
        createCustomNavigationBar()
        
        
        
        let customTitleView = createCustomTitleView(pageName: "Menu")
       
        navigationItem.titleView = customTitleView
    }
    
    @objc func searchListTapped(){
        print("searchListTapped")
    }
    
    @objc func filterListTapped(){
        print("filterListTapped")
    }

    
}



