import SwiftUI

struct ContentView: View {
   @State var PlayerCard = "card7"
   @State var cpuCard = "card13"
   @State var PlayerScore = 0
   @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image ("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    
                    Image(PlayerCard)
                    Image(cpuCard)
                }
                Spacer()
                
               
                Button{
                    dbutton()
                    
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding()
                        Text(String(PlayerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
                
            }
           
            
        }
        
         
        
    }
    
     func dbutton(){
         let pvalue = Int.random(in: 2...14)
        PlayerCard = "card" + String(pvalue)
         let cvalue = Int.random(in: 2...14)
         cpuCard = "card" + String(cvalue)
         
         if pvalue > cvalue {
             PlayerScore +=  1
         }
         else if cvalue > pvalue{
             cpuScore += 1
         }
      
    }
    
    
}

#Preview {
    ContentView()
}
