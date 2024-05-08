import SwiftUI

struct CellView: View {
    var city:City
    let cellWidth:CGFloat
    var isExisted:Bool{               // Checks image is found or not.
        if let _ = UIImage(named: city.name) {
            return true
        }
        return false
    }
    
    var body: some View {
        ZStack{
            Image(isExisted ? city.name : "NoImage")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: cellWidth)
                .frame(height:125)
                .background(.black)
                .opacity(0.9)
        }
        .cornerRadius(30)
        .overlay(alignment:.bottomTrailing, content:{
           if isExisted {
                    textOverImage }
         })
    }
    
    var textOverImage: some View {
        VStack(spacing:7) {
            Text("\(city.licenceNumber)")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
               
            Text(city.name)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .lineLimit(1)
                .minimumScaleFactor(0.3)
        }
        .padding([.leading,.trailing,.bottom], 10)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(city:City(name:"Antalya", licenceNumber: 7), cellWidth: 150)
    }
}
