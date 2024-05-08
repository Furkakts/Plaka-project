import SwiftUI

struct LocalLicensePlate: View {
            // Variable Definitions
    let pivotWidth:CGFloat = 600   //Distingues iPhones from iPads
    @State var isAlerted = false
    
    @ObservedObject var cityData = CityModelView()
    @State var citySearch = ""
    var mockCityData:[City]{            // Setting Dynamic City Content
        if citySearch.isEmpty {
            return cityData.cities
        } else {
          return cityData.cities.filter { city in
              city.name.uppercased(with: Locale(identifier: "tr-TR"))
                        .hasPrefix(citySearch.uppercased(with: Locale(identifier: "tr-TR"))) }}
    }
    
    var gridCellWidth:CGFloat{ UIScreen.main.bounds.width<pivotWidth ? 160 : 225 }
    var columns:[GridItem] {
        Array(repeating: GridItem(.flexible()), count: Int(UIScreen.main.bounds.width / gridCellWidth)) }
    
    var searchbarMaxWidth:CGFloat{  // Scales width for searchbar in iPhones and iPads.
        UIScreen.main.bounds.width<pivotWidth ? UIScreen.main.bounds.width-20 : UIScreen.main.bounds.width-275 }
          
    // Variable Definitions End!
    var body: some View {
        ZStack {
            Color("MainColor").ignoresSafeArea()
            
            VStack(spacing: 20) {
                SearchbarView(searchbar: $citySearch)  // Creates and modifies Searchbar
                    .padding()
                    .frame(maxWidth:searchbarMaxWidth)
                    .background(.white)
                    .cornerRadius(15)
                    .alert(isPresented: $isAlerted){
                        Alert(title: Text("Sonuç Bulunamadı"),
                              message: Text("Lütfen yazdıklarınızı kontrol edip tekrar deneyin!"),
                              dismissButton: .cancel())
                    }
                    .onSubmit {
                        if mockCityData.isEmpty {
                            isAlerted.toggle() }
                    }
                
                ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: columns) {
                            ForEach(mockCityData){cityInfo in
                                CellView(city:cityInfo, cellWidth:gridCellWidth)
                                    .padding(5)
                                    .shadow(color: .black, radius: 2, x:0, y:1)
                          } } }
            }
            .padding(5)
        } // End ZStack
    }
}

struct LocalLicensePlate_Previews: PreviewProvider {
    static var previews: some View {
        LocalLicensePlate()
    }
}
