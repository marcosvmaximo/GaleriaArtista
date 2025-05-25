import SwiftUI

struct ContentView: View {
    @EnvironmentObject var obraVM: ObraViewModel
    // colunas de 166px (150 + padding/borda)
    private let columns = [ GridItem(.adaptive(minimum: 166), spacing: 16) ]

    var body: some View {
        NavigationView {
            ZStack {
                // fundo suave
                Color(.systemGray6)
                    .ignoresSafeArea()

                GeometryReader { geo in
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(obraVM.obras) { obra in
                                NavigationLink(
                                    destination: DetalhesObraView(
                                        viewModel: DetalheObraViewModel(obra: obra)
                                    )
                                ) {
                                    ObraCell(obra: obra)
                                }
                            }
                        }
                        .padding()
                        .frame(minHeight: geo.size.height)
                    }
                }
            }
            .navigationTitle("Artistas Curitibanos")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
