import SwiftUI

struct ContentView: View {
    @State private var numberOne = 0
    @State private var numberTwo = 0
    @State private var oddOrEven = true
    
    var body: some View {
        VStack {
            HStack {
                TextField("Number One",value:$numberOne,format:.number)
                    .font(.custom("Arial-BoldMT",
                                  size:66))
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Text("X")
                    .font(.custom("Arial-BoldMT",
                                  size:66))
                TextField("Number Two",value:$numberTwo,format:.number)
                    .font(.custom("Arial-BoldMT",
                                  size:66))
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
            Text("The product of \(numberOne) and \(numberTwo) is \(numberOne * numberTwo).")
                .font(.custom("Arial-BoldMT",
                              size:33))
            Button(action: {
                numberOne = 0 ; numberTwo = 0
            },label: {
                Text("Reset Number Fields")
                    .font(.custom("Arial-BoldMT",
                                  size:33))
                    .foregroundColor(.red)
            })
            .padding()
        }
    }
}
//Text(TextFieldText)
//    .font(.title)
//    .fontWeight(.bold)
//    .padding()
//TextField("Enter Number Here", value: $number, format: .number)
//    .textFieldStyle(.roundedBorder)
//    .padding()
//Text("The number entered is \(number)")
//Button(action: {
//    shownText = "Button #2 Was Pressed!"
//}, label: {
//    Text("2")
//        .frame(width:66,height:66)
//        .background(RoundedRectangle(
//            cornerRadius:20)
//            .foregroundStyle(.red))
//        .foregroundStyle(.white)
//    })
