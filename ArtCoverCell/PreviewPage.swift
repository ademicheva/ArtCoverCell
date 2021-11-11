//
//  PreviewPage.swift
//  ArtCoverCell
//
//  Created by Алина on 11.11.2021.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class PreviewPage: UICollectionViewController {
    let imageNameArray = ["Bill $aber - Looking 4 A Way",
                          "Bones - Numb",
                          "Ghostemane - To Whom It May Concern",
                          "Macan - Кино",
    "Lil Peep - The way I see Things"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }



    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
 
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
    
        cell.coverImageView.image = UIImage(named: imageNameArray[indexPath.row])
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "SegueConnect" {
                // мы проверяем, если идентификатор нашего сигвея равен ШоуДетейл, то мы создаем константу индекспас, которой задаем индекс выбранной строки.
                //Далее мы создаем экземпляр класса DetailVC и уже обращаясь к этому экземпляру возращаемся к свойству trackTitle, которому и присваеваем значение по выбранной строке
                if let indexPath = self.collectionView?.indexPathsForSelectedItems?.first {
                    let detailsVC = segue.destination as! DetailVC
                    detailsVC.trackTitle = imageNameArray[indexPath.item]
                    // detailsVC.trackTitle = imageNameArray[indexPath.row]
                }
            }//indexPathsForSelectedItems: [IndexPath]?
//        As the property name `indexPathsForSelectedItems` represents, the property may return multiple `IndexPath`s, as `UICollectionView` can be configured to allow multiple selection. The type of the property is `[IndexPath]?`, so you need to choose one element from the array to use the result as a single `IndexPath`:
        
        
        }
    
}

// self.tableView.indexPathForSelectedRow
