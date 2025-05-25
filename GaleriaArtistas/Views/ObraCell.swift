import SwiftUI

struct ObraCell: View {
    let obra: ObraDeArte
    @State private var pressed = false

    var body: some View {
        VStack(spacing: 8) {
            // Imagem fixa em 150×150
            AsyncImage(url: URL(string: obra.imagemURL)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 150, height: 150)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipped()
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.gray)
                @unknown default:
                    EmptyView()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))

            // Texto capitalizado, até 2 linhas
            Text(obra.titulo.capitalized)
                .font(.subheadline)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(width: 150)

            Text(obra.artista)
                .font(.caption)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .frame(width: 150)
        }
        .padding(8)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.purple.opacity(0.1)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
        .frame(width: 166, height: 230)
        .scaleEffect(pressed ? 1.05 : 1.0)
        .animation(.easeInOut(duration: 0.2), value: pressed)
        .gesture(
            LongPressGesture(minimumDuration: 0.1)
                .onChanged { _ in pressed = true }
                .onEnded   { _ in pressed = false }
        )
    }
}
