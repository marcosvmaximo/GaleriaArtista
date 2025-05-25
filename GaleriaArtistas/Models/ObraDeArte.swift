import Foundation

struct ObraDeArte: Identifiable {
    let id: UUID
    let titulo: String
    let artista: String
    let ano: Int
    let estilo: String
    let imagemURL: String   // URL da imagem da obra
    let descricao: String
}
