import SwiftUI

struct ContentView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var result: String = ""

    var body: some View {
        VStack {
            TextField("Número 1", text: $number1)
                .padding()
                .keyboardType(.decimalPad)
            
            TextField("Número 2", text: $number2)
                .padding()
                .keyboardType(.decimalPad)
            
            Button(action: {
                if let num1 = Double(number1), let num2 = Double(number2) {
                    let sum = num1 + num2
                    result = String(sum)
                } else {
                    result = "Entrada inválida"
                }
            }) {
                Text("Calcular")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            
            Text("Resultado: \(result)")
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
