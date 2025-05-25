import SwiftUI

struct DetalhesObraView: View {
    @ObservedObject var viewModel: DetalheObraViewModel
    @State private var mostrarDescricao = true
    @State private var animateImage = false
    @State private var animateToggle = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // imagem full width
                AsyncImage(url: URL(string: viewModel.obra.imagemURL)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(maxWidth: .infinity, minHeight: 200)
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity)
                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                    @unknown default:
                        EmptyView()
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .scaleEffect(animateImage ? 1.0 : 0.8)
                .opacity(animateImage ? 1.0 : 0.0)
                .animation(.easeOut(duration: 0.5), value: animateImage)

                Text(viewModel.obra.titulo.capitalized)
                    .font(.title)
                    .fontWeight(.bold)

                Text(viewModel.obra.artista)
                    .font(.title3)
                    .foregroundColor(.secondary)

                HStack {
                    Text("Ano: \(viewModel.obra.ano)")
                    Spacer()
                    Text(viewModel.obra.estilo)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Toggle("Mostrar descrição", isOn: $mostrarDescricao)
                    .padding(.vertical)
                    .opacity(animateToggle ? 1.0 : 0.0)
                    .animation(.easeIn(duration: 0.4).delay(0.2), value: animateToggle)

                if mostrarDescricao {
                    Text(viewModel.obra.descricao)
                        .font(.body)
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                        .animation(.easeInOut(duration: 0.3), value: mostrarDescricao)
                }
            }
            .padding()
            .background(Color(.systemBackground))
        }
        .navigationTitle(viewModel.obra.titulo.capitalized)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            animateImage = true
            animateToggle = true
        }
    }
}
