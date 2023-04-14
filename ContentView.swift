import SwiftUI

struct ContentView: View {
    
    @State var integer1: Int = 0
    @State var integer2: Int = 0
    @State var answer: Int = 0
    
    var body: some View {
        
        VStack {
            
            HStack{
                
                Button {
                    answer = integer1 * integer2
                } label: {
                    Text("Multiply")
                        .padding()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.gray)
                                .opacity(0.5)
                        )
                }

                Button {
                    answer = integer1 + integer2
                } label: {
                    Text("Addition")
                        .padding()
                    .font(.system(size: 30))
                    .foregroundColor(.cyan)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                    )
                }

            
            }
            .padding()
            
            HStack{
                
                Button {
                    answer = integer1 - integer2
                } label: {
                    Text("Subtraction")
                        .padding()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.gray)
                                .opacity(0.5)
                        )
                }
                
                Button {
                    answer = integer1 / integer2
                } label: {
                    Text("Divide")
                        .padding()
                        .font(.system(size: 30))
                        .foregroundColor(.cyan)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.gray)
                                .opacity(0.5)
                            )}
                          
            }
            .padding()
            
            TextField("Integer One", value: $integer1, format: .number)
                .font(.system(size: 30))
                .foregroundColor(.cyan)
                .opacity(0.6)
        
            
            TextField("Integer Two", value: $integer2, format: .number)
                .font(.system(size: 30))
                .foregroundColor(.cyan)
                .opacity(0.6)
            
            Text("\(answer)")
                .font(.system(size: 30))
                .foregroundColor(.gray)
            
        }
        .padding()
        .textFieldStyle(.roundedBorder)
    }
}
