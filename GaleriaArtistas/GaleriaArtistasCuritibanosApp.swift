import SwiftUI

@main
struct GaleriaArtistasCuritibanosApp: App {
    @StateObject private var obraVM = ObraViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(obraVM)
        }
    }
}
