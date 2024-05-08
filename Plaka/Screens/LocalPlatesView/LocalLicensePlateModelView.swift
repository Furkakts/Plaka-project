import Foundation

class CityModelView:ObservableObject{
    
    @Published var cities:[City]
    init() {
        // Setting 81 Turkish Cities manually.
       cities = [City(name: "Adana", licenceNumber: 1),City(name: "Adıyaman", licenceNumber: 2),City(name: "Afyon", licenceNumber: 3),
                 City(name: "Ağrı", licenceNumber: 4),City(name: "Amasya", licenceNumber: 5),City(name: "Ankara", licenceNumber: 6),
                 City(name: "Antalya", licenceNumber: 7),City(name: "Artvin", licenceNumber: 8),City(name: "Aydın", licenceNumber: 9),
                 City(name: "Balıkesir", licenceNumber: 10),City(name: "Bilecik", licenceNumber: 11),City(name: "Bingöl", licenceNumber: 12),
                 City(name: "Bitlis", licenceNumber: 13),City(name: "Bolu", licenceNumber: 14),City(name: "Burdur", licenceNumber: 15),
                 City(name: "Bursa", licenceNumber: 16),City(name: "Çanakkale", licenceNumber: 17),City(name: "Çankırı", licenceNumber: 18),
                 City(name: "Çorum", licenceNumber: 19),City(name: "Denizli", licenceNumber: 20),City(name: "Diyarbakır", licenceNumber: 21),
                 City(name: "Edirne", licenceNumber: 22),City(name: "Elazığ", licenceNumber: 23),City(name: "Erzincan", licenceNumber: 24),
                 City(name: "Erzurum", licenceNumber: 25),City(name: "Eskişehir", licenceNumber: 26),City(name: "Gaziantep", licenceNumber: 27),
                 City(name: "Giresun", licenceNumber: 28),City(name: "Gümüşhane", licenceNumber: 29),City(name: "Hakkari", licenceNumber: 30),
                 City(name: "Hatay", licenceNumber: 31),City(name: "Isparta", licenceNumber: 32),City(name: "Mersin", licenceNumber: 33),
                 City(name: "İstanbul", licenceNumber: 34),City(name: "İzmir", licenceNumber: 35),City(name: "Kars", licenceNumber: 36),
                 City(name: "Kastamonu", licenceNumber: 37),City(name: "Kayseri", licenceNumber: 38),City(name: "Kırklareli", licenceNumber:39),
                 City(name: "Kırşehir", licenceNumber: 40),City(name: "Kocaeli", licenceNumber: 41),City(name: "Konya", licenceNumber: 42),
                 City(name: "Kütahya", licenceNumber: 43),City(name: "Malatya", licenceNumber: 44),City(name: "Manisa", licenceNumber: 45),
                 City(name: "Kahramanmaraş", licenceNumber: 46),City(name: "Mardin", licenceNumber: 47),City(name: "Muğla", licenceNumber: 48),
                 City(name: "Muş", licenceNumber: 49),City(name: "Nevşehir", licenceNumber: 50),City(name: "Niğde", licenceNumber: 51),
                 City(name: "Ordu", licenceNumber: 52),City(name: "Rize", licenceNumber: 53),City(name: "Sakarya", licenceNumber: 54),
                 City(name: "Samsun", licenceNumber: 55),City(name: "Siirt", licenceNumber: 56),City(name: "Sinop", licenceNumber: 57),
                 City(name: "Sivas", licenceNumber: 58),City(name: "Tekirdağ", licenceNumber: 59),City(name: "Tokat", licenceNumber: 60),
                 City(name: "Trabzon", licenceNumber: 61),City(name: "Tunceli", licenceNumber: 62),City(name: "Şanlıurfa", licenceNumber: 63),
                 City(name: "Uşak", licenceNumber: 64),City(name: "Van", licenceNumber: 65),City(name: "Yozgat", licenceNumber: 66),
                 City(name: "Zonguldak", licenceNumber: 67),City(name: "Aksaray", licenceNumber: 68),City(name: "Bayburt", licenceNumber: 69),
                 City(name: "Karaman", licenceNumber: 70),City(name: "Kırıkkale", licenceNumber: 71),City(name: "Batman", licenceNumber: 72),
                 City(name: "Şırnak", licenceNumber: 73),City(name: "Bartın", licenceNumber: 74),City(name: "Ardahan", licenceNumber: 75),
                 City(name: "Iğdır", licenceNumber: 76),City(name: "Yalova", licenceNumber: 77),City(name: "Karabük", licenceNumber: 78),
                 City(name: "Kilis", licenceNumber: 79),City(name: "Osmaniye", licenceNumber: 80),City(name: "Düzce", licenceNumber: 81)]
    }
}
