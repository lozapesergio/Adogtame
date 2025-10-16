//
//  ImageViewController.swift
//  Adogtame
//
//  Created by Sergio Lozano on 16/10/25.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

       override func viewDidLoad() {
           super.viewDidLoad()
           
           // --- CÓDIGO PARA CARGAR LA IMAGEN ---
           
           // 1. Usamos el nombre de la imagen: "perros"
           // 2. Usamos el método 'UIImage(named: ...)' para buscarla en el proyecto.
           if let imagenCargada = UIImage(named: "perros") {
               // Asignamos la imagen si se encuentra
               self.imageView.image = imagenCargada
               
               // Opcional: Configura cómo se ajusta la imagen en el ImageView
               self.imageView.contentMode = .scaleAspectFit // O .scaleAspectFill, etc.
               
           } else {
               // Mensaje de error si Xcode no la encuentra
               print("❌ ERROR: No se pudo encontrar la imagen llamada 'perros'.")
           }
           
           // ------------------------------------
       }

}
