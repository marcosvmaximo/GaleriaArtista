import Foundation

class ObraViewModel: ObservableObject {
    @Published var obras: [ObraDeArte] = [
        ObraDeArte(
            id: UUID(),
            titulo: "Poty Lazzarotto Mural",
            artista: "Poty Lazzarotto",
            ano: 1970,
            estilo: "Muralismo",
            imagemURL: "https://www.patrimoniocultural.pr.gov.br/sites/default/files/styles/galeria_imagem/public/imagem/2021-06/poty_lazzarotto_mural.jpg",
            descricao: """
Este mural de Poty Lazzarotto representa a essência da cultura curitibana, com traços sinuosos e cores fortes. Poty, nascido em União da Vitória, adotou Curitiba como tela viva, eternizando cenas urbanas e rurais que dialogam com a história e memória da região.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Igreja do Rosário",
            artista: "Artista Popular Anônimo",
            ano: 1995,
            estilo: "Arquitetura",
            imagemURL: "https://arquidiocesedecuritiba.org.br/wp-content/uploads/2013/11/igreja-do-rosario.jpg",
            descricao: """
A Igreja do Rosário, no Largo da Ordem, é símbolo da herança colonial de Curitiba. Sua fachada assimétrica e detalhes barrocos foram pintados por artistas locais, ressaltando a convivência entre fé e arte popular.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Bosque Alemão",
            artista: "Claudia da Silva",
            ano: 2010,
            estilo: "Escultura Ambiental",
            imagemURL: "https://www.curitiba.pr.gov.br/sites/default/files/styles/galeria_imagem/public/imagem/2021-06/bosque_alemao.jpg",
            descricao: """
Esta escultura integrada ao Bosque Alemão mistura elementos da natureza com metais reciclados, criando um diálogo entre sustentabilidade e memória histórica dos imigrantes que chegaram a Curitiba no século XIX.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Wave Hotel Cidade",
            artista: "Roberto Bunchaft",
            ano: 2005,
            estilo: "Fotografia",
            imagemURL: "https://fdp.aau.edu.et/ipa/hotel-perto-da-puc-curitiba.html",
            descricao: """
Fotografia de Roberto Bunchaft que capta a fachada dinâmica do Hotel Wave, evidenciando a arquitetura contemporânea de Curitiba. O jogo de linhas e reflexos de vidro cria uma sensação de movimento e modernidade.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Teatro Ópera de Arame",
            artista: "Engenheiros e Artistas Locais",
            ano: 1974,
            estilo: "Arquitetura",
            imagemURL: "https://luporai.com.br/wp-content/uploads/2020/01/opera-de-arame-curitiba.jpg",
            descricao: """
O Teatro Ópera de Arame é um dos cartões-postais de Curitiba, com sua estrutura metálica sobre um lago. Projetado para se integrar à natureza, tornou-se palco de peças, shows e eventos culturais.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Jardim Botânico de Curitiba",
            artista: "Paisagistas do Theatro Municipal",
            ano: 1991,
            estilo: "Fotografia",
            imagemURL: "https://commons.wikimedia.org/wiki/File:Estufa_principal_do_Jardim_Bot%C3%A2nico_de_Curitiba_02_(cropped).jpg",
            descricao: """
Fotografia do icônico Jardim Botânico, com sua estufa em estilo art nouveau. O espaço é um refúgio verde no coração da cidade, homenageando a flora paranaense.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Estátua do Tropeiro",
            artista: "Bruno Giorgi",
            ano: 1965,
            estilo: "Escultura",
            imagemURL: "https://www.patrimoniocultural.pr.gov.br/sites/default/files/styles/galeria_imagem/public/imagem/2021-06/monumento_tropeiro.jpg",
            descricao: """
Escultura de Bruno Giorgi que homenageia os tropeiros, responsáveis pela história do tropeirismo no Paraná. Localizada na Praça Tiradentes, marca o centro histórico de Curitiba.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Caixa Cultural Mural",
            artista: "Equipe Caixa Cultural",
            ano: 2018,
            estilo: "Muralismo",
            imagemURL: "https://muralzinhodeideias.com.br/wp-content/uploads/2023/03/caixa_cultural_mural.jpg",
            descricao: """
Painel artístico na fachada da Caixa Cultural que mistura formas geométricas e cores vibrantes, refletindo a diversidade cultural e as múltiplas expressões artísticas de Curitiba.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Museu Oscar Niemeyer",
            artista: "Óscar Niemeyer",
            ano: 2002,
            estilo: "Arquitetura",
            imagemURL: "https://www.tripadvisor.co.id/img/city/curitiba.jpg",
            descricao: """
Foto do “Museu do Olho”, projetado por Oscar Niemeyer. Suas curvas e volumes espelham a modernidade do arquiteto, tornando-se um ponto de referência cultural no Brasil.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Grafite no Centro",
            artista: "Coletivo Grafitti Criativo",
            ano: 2020,
            estilo: "Arte Urbana",
            imagemURL: "https://www.imovelmagazine.com.br/wp-content/uploads/2023/05/grafite_centro.jpg",
            descricao: """
Obra urbana em uma das vielas do Centro Histórico, criada pelo Coletivo Grafitti Criativo. Expressa temas sociais e o cotidiano dos curitibanos através de cores e personagens estilizados.
"""
        ),
        ObraDeArte(
            id: UUID(),
            titulo: "Solar do Barão Mural",
            artista: "Marcos Silveira",
            ano: 2015,
            estilo: "Muralismo",
            imagemURL: "https://www.fotografandocuritiba.com.br/wp-content/uploads/2016/06/solar_do_barao.jpg",
            descricao: """
Mural criado por Marcos Silveira na fachada do Solar do Barão. Com tons terrosos e figuras clássicas, homenageia a construção histórica e a memória dos barões que fundaram Curitiba.
"""
        )
    ]
}
