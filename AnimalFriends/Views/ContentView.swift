import SwiftUI

struct ContentView: View {
    var body: some View {
        AnimalHome()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
