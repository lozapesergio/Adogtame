//
//  LoadingViewController.swift
//  Adogtame
//
//  Created by Sergio Lozano on 16/10/25.
//

import UIKit

class LoadingViewController: UIViewController {

    // Se ejecuta tan pronto como la vista se carga en la memoria
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Llamamos a la función para iniciar la cuenta regresiva
            scheduleTransition()
        }
        
        func scheduleTransition() {
            
            let delayInSeconds: Double = 5.0 // El tiempo de espera (5 segundos)
            
            // Ejecuta el código en el hilo principal después del retraso.
            DispatchQueue.main.asyncAfter(deadline: .now() + delayInSeconds) {
                
                // Este es el identificador del Segue que creaste desde
                // la pantalla 2 a la pantalla 3.
                //Prueba
                self.performSegue(withIdentifier: "showImageScreen", sender: nil)
            }
        }

}
