import SwiftUI

struct SearchbarView: View {
    @Binding var searchbar:String
    @FocusState var isFocused:Bool
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width:20, height:20)
                .foregroundStyle(.gray)
            
            TextField("", text:$searchbar.animation(.easeInOut), prompt: prompt())
                .foregroundColor(.black)
                .focused($isFocused)
                .submitLabel(.search)
                .overlay(alignment:.trailing, content:{
                    clearSearchField })
        }
        .onTapGesture {
            isFocused.toggle()
        }
    }
    
    var clearSearchField:some View {
        Image(systemName:"x.circle.fill")
            .imageScale(.medium)
            .symbolRenderingMode(.monochrome)
            .foregroundStyle(.gray)
            .onTapGesture { searchbar="" }
    }
    
    func prompt()->Text {
        Text("Şehir Ara!")
           .font(.footnote)
           .fontWeight(.ultraLight)
           .foregroundColor(.black) }
}

struct SearchbarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchbarView(searchbar: .constant(""))
    }
}
