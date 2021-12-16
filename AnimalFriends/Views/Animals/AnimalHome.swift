/*
A view showing all the animals.
*/

import SwiftUI

struct AnimalHome: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            List {
                AnimalRow(rowName: "Newcomers", animals: modelData.animals)
                .listRowInsets(EdgeInsets())
                
                ForEach(modelData.animals) { animal in

                    // Since there is no modifier to remove the
                    // automatically appeared arrow indicators
                    // on the list, the panel is layered to hide
                    // the arrows.
                    ZStack {
                        NavigationLink(destination: AnimalDetail(animal: animal)) {
                            EmptyView()
                        }
                        AnimalPanel(animal: animal)
                    }
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Virtual Adoption")
        }
    }
}

struct AnimalHome_Previews: PreviewProvider {
    static var modelData = ModelData()

    static var previews: some View {
        AnimalHome()
            .environmentObject(modelData)
    }
}
