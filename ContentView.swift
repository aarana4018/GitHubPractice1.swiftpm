import SwiftUI

struct ContentView: View {
    
    @State var integer1: Int = 0
    @State var integer2: Int = 0
    @State var answer: Int = 0
    
    var body: some View {
        
        VStack {
           
            Button("Multiply") {
                answer = integer1 * integer2
            }
            
            Button("Add") {
                
            }
            
            Button("Subtract") {
                
            }
            
            Button("Divide") {
                
            }
            
            TextField("Integer One", value: $integer1, format: .number )
            
            TextField("Integer Two", value: $integer2, format: .number)
            
            Text("\(answer)")
        }
    }
}
