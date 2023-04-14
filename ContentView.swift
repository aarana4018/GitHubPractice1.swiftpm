import SwiftUI

struct ContentView: View {
    
    @State var integer1: Int = 0
    @State var integer2: Int = 0
    @State var answer: Int = 0
    @State var sign: String = "?"
    
    var body: some View {
        
        VStack {
            
            HStack{
                Button("Multiply") {
                    answer = integer1 * integer2
                    
                    sign = "x"
                }
                .font(.system(size: 30))
                .foregroundColor(.cyan)
                .background(
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                )
                
                Spacer()
        
                Button("Add") {
                    answer = integer1 + integer2
                    
                    sign = "+"
                }
                .font(.system(size: 30))
                .foregroundColor(.cyan)
                .background(
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                )
            }
            .padding()
            .frame(width: 300, height: 100)
            
            HStack{
                Button("Subtract") {
                    answer = integer1 - integer2
                    
                    sign = "-"
                }
                .font(.system(size: 30))
                .foregroundColor(.cyan)
                .background(
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                )
                
                Spacer()
                
                Button("Divide") {
                    answer = integer1 / integer2
                    
                    sign = "/"

                }
                .font(.system(size: 30))
                .foregroundColor(.cyan)
                .background(
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                )
            }
            .padding()
            .frame(width: 300, height: 100)
            
            HStack {
                TextField("Integer One", value: $integer1, format: .number)
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                    .opacity(0.6)
                
                Text(sign)
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                    .opacity(0.6)
                
                TextField("Integer Two", value: $integer2, format: .number)
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                    .opacity(0.6)
                
                Text("=")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                    .opacity(0.6)
                
                Text("\(answer)")
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                    .opacity(0.6)
            }
        }
        .padding()
        .textFieldStyle(.roundedBorder)
    }
}
