import Foundation

class DetalheObraViewModel: ObservableObject {
    @Published var obra: ObraDeArte

    init(obra: ObraDeArte) {
        self.obra = obra
    }
}
