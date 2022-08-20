//
//  ViewController.swift
//  Learning 3-5
//
//  Created by Luan.Lima on 20/08/22.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var campoNome: UITextField!
    @IBOutlet weak var campoEmail: UITextField!
    @IBOutlet weak var campoAreaAtuacao: UITextField!
    @IBOutlet weak var campoStatusProfissional: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func botaoReceberMaterial(_ sender: Any) {
        botaoReceberMaterialPressionado()
    }
    
    func botaoReceberMaterialPressionado() {
        
        
        let alert = UIAlertController(title: "Quase lá", message: """
        Antes de enviarmos, por favor, revise seus dados:

        Nome: \(String(describing: campoNome.text))
        Email: \(String(describing: campoEmail.text))
        Área de atuação: \(String(describing: campoNome.text))
        Status Profissional: \(String(describing: campoNome.text))

        """, preferredStyle: .actionSheet)
       
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))

        present(alert, animated: true, completion: nil)
    
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { acao in
            validacaoFormulario()
        }))
        
       
        
        
        
        func validacaoFormulario() {
            
            let confirmar = UIAlertController(title: "Feito", message: "Verifique seu email e tenha acesso ao documento", preferredStyle: .alert)
            
            
            confirmar.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            present(confirmar, animated: true, completion: nil)
        }
        
   
    }
    
    
}

