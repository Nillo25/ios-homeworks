import UIKit

class PhotosTableViewController: UITableViewController {
    
    let photos = [UIImage(named: "photo1"),
                  UIImage(named: "photo2"),
                  UIImage(named: "photo3"),
                  UIImage(named: "photo4"),
                  UIImage(named: "photo5"),
                  UIImage(named: "photo6"),
                  UIImage(named: "photo7"),
                  UIImage(named: "photo8"),
                  UIImage(named: "photo9"),
                  UIImage(named: "photo10"),
                  UIImage(named: "photo11"),
                  UIImage(named: "photo12"),
                  UIImage(named: "photo13"),
                  UIImage(named: "photo14"),
                  UIImage(named: "photo15"),
                  UIImage(named: "photo16"),
                  UIImage(named: "photo17"),
                  UIImage(named: "photo18"),
                  UIImage(named: "photo19"),
                  UIImage(named: "photo20")].compactMap { $0 }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "PhotosCell")
        title = "Photos"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotosCell", for: indexPath) as! PhotosTableViewCell
        
        cell.photos = Array(photos.prefix(4))
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(cellTapped))
        cell.addGestureRecognizer(tapGesture)
        
        return cell
    }
    
    @objc func cellTapped() {
        let photosVC = PhotosViewController()
        navigationController?.pushViewController(photosVC, animated: true)
    }
}
