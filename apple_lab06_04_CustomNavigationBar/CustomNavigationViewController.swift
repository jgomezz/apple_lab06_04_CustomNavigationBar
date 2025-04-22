//
//  CustomNavigationViewController.swift
//  apple_lab06_04_CustomNavigationBar
//
//  Created by developer on 4/16/25.
//

import UIKit

class CustomNavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Custom Navigation"
           
        // Configure navigation bar appearance
        if let navigationBar = navigationController?.navigationBar {
            
           // Enable large titles
           navigationBar.prefersLargeTitles = true
           
           // Set the tint color (affects buttons and indicators)
           navigationBar.tintColor = .systemBlue
           
           // Create appearance object
           let appearance = UINavigationBarAppearance()
           appearance.configureWithOpaqueBackground()
           appearance.backgroundColor = .systemBackground
           
           // Customize text attributes
           appearance.titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
           appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
           
           // Apply the appearance
           navigationBar.standardAppearance = appearance
           navigationBar.scrollEdgeAppearance = appearance
        }
        
        
        // Add right bar button item
        let addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addButtonTapped)
        )
        navigationItem.rightBarButtonItem = addButton

        // Add left bar button items
        let settingsButton = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
            style: .plain,
            target: self,
            action: #selector(settingsButtonTapped)
        )

        let searchButton = UIBarButtonItem(
            barButtonSystemItem: .search,
            target: self,
            action: #selector(searchButtonTapped)
        )

        // Set multiple left buttons
        navigationItem.leftBarButtonItems = [settingsButton, searchButton]
        
    }
    
    @objc func addButtonTapped() {
        // Create an alert to show when the add button is tapped
        let alert = UIAlertController(
            title: "Add Item",
            message: "You tapped the add button!",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        
        present(alert, animated: true, completion: nil)
    }


    @objc func settingsButtonTapped() {
        // Create an alert for settings button
        let alert = UIAlertController(
            title: "Settings",
            message: "You tapped the settings button!",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        
        present(alert, animated: true, completion: nil)
    }

    @objc func searchButtonTapped() {
        // Create an alert for search button
        let alert = UIAlertController(
            title: "Search",
            message: "You tapped the search button!",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        
        present(alert, animated: true, completion: nil)
    }
   
}
