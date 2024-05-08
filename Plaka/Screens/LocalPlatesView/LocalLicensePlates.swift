import SwiftUI

struct LocalLicensePlates: View {
    @State var city_name = ""
    
    var body: some View {
        ZStack {
            Color("MainColor").ignoresSafeArea()
            
            VStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width:20, height:20)
                        .foregroundStyle(.gray)
                    
                    TextField("Şehir Ara!", text:$city_name)
                        
                } // End 1.HStack
                .padding()
                .background(.white)
                .cornerRadius(10)
                
                Spacer()
                
                VStack {
                    
                    
                } // End 2.VStack
            } // End 1.VStack
            .padding(5)
        } // End 1.ZStack
        
    }
}

struct LocalLicensePlates_Previews: PreviewProvider {
    static var previews: some View {
        LocalLicensePlates()
    }
}
