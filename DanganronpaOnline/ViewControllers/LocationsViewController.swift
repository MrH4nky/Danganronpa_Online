
import UIKit

class LocationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Locations"
        
        view.backgroundColor = .black
        
        setUpViews()
    }
    
    override func loadView() {
        super.loadView()
        
        let placeHolder = UILabel()
        placeHolder.text = "This is temporary, worry not!"
        placeHolder.textColor = .white
        view.addSubview(placeHolder)
    }
    
    private func setUpViews(){
        createCustomNavigationBar()
        
        let searchList =
        createCustomBtn(imageName: "magnifyingglass",
         selector: #selector(searchListTapped))
        
        let filterList =
        createCustomBtn(imageName: "eyedropper.halffull",
         selector: #selector(filterListTapped))
        
        let customTitleView = createCustomTitleView(pageName: "Locations")
        
        navigationItem.rightBarButtonItems = [searchList, filterList]
        navigationItem.titleView = customTitleView
    }
    
    @objc func searchListTapped(){
        print("searchListTapped")
    }
    
    @objc func filterListTapped(){
        print("filterListTapped")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
