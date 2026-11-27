import UIKit

class ViewController: UIViewController,
                      UICollectionViewDelegate,
                      UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!

    let students = [
        "Arjun",
        "Arun",
        "Aman",
        "Ankit",
        "Rahul",
        "Rohit",
        "Priya",
        "Neha"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.isUserInteractionEnabled = true
        collectionView.allowsSelection = true
        let layout = UICollectionViewFlowLayout()

        layout.itemSize = CGSize(width: 200, height: 150)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10

        collectionView.collectionViewLayout = layout
    }

    

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {

        return students.count
    }

   

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath)
                        -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "studentCell",
            for: indexPath
        ) as! StudentCollectionViewCell

        cell.nameLabel.text = students[indexPath.item]
        cell.backgroundColor = .systemBlue
        

        return cell
    }
    
   
    
    
   
    
}
