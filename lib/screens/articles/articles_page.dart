// articles_page.dart

import 'package:flutter/material.dart';
import 'article_detail_page.dart';
import 'article.dart';
import '../../app_styles.dart';
import '../components/text_header.dart';
class ArticlesPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'Musique Infinie',
      excerpt:
          'La musique est une mer vaste et profonde, remplie de trésors cachés et de genres inexplorés...',
      sections: [
        ArticleSection(
          title: 'Introduction',
          content:
              'La musique est une mer vaste et profonde, remplie de trésors cachés et de genres inexplorés. Bien que nous vivions dans une ère où les plateformes de streaming offrent un accès illimité à une multitude de chansons, l\'univers musical reste largement inexploré.',
        ),
        ArticleSection(
          title: 'La diversité musicale',
          content:
              'La diversité de la musique est époustouflante. Chaque culture du monde apporte sa propre contribution unique, créant une mosaïque sonore riche et variée. Du jazz de New York aux rythmes de l\'afrobeat nigérian, en passant par les mélodies envoûtantes de la musique classique indienne, il y a toujours quelque chose de nouveau à découvrir.',
        ),
        ArticleSection(
          title: 'Trésors cachés',
          content:
              'Malgré l\'accès à une vaste bibliothèque musicale, il reste encore tant de morceaux et d\'artistes à découvrir. Des genres de niche comme la musique ambiante ou le drone offrent des expériences auditives uniques pour ceux prêts à explorer au-delà des sentiers battus.',
        ),
        ArticleSection(
          title: 'Innovation continue',
          content:
              'L\'innovation musicale ne connaît pas de limites. De nouvelles technologies, telles que l\'intelligence artificielle et la réalité virtuelle, ouvrent des possibilités encore inexplorées, repoussant les frontières de ce qui est possible dans la création musicale.',
        ),
        ArticleSection(
          title: 'Conclusion',
          content:
              'La musique est une exploration sans fin. Que vous soyez un mélomane aguerri ou un simple curieux, il y a toujours une nouvelle mélodie, un nouveau rythme ou une nouvelle harmonie qui n\'attend que d\'être découvert.',
        ),
      ],
      imageUrl: 'assets/article1.png',
    ),
    Article(
      title: 'Musique et Santé',
      excerpt:
          'La musique possède des vertus thérapeutiques incroyables, allant bien au-delà de son pouvoir de divertissement...',
      sections: [
        ArticleSection(
          title: 'Introduction',
          content:
              'a musique possède des vertus thérapeutiques incroyables, allant bien au-delà de son pouvoir de divertissement. Des recherches scientifiques ont démontré que la musique peut avoir des effets profonds sur notre bien-être mental et physique.',
        ),
        ArticleSection(
          title: 'Réduction du stress et de l\'anxiété',
          content:
              'Écouter de la musique douce et apaisante peut réduire les niveaux de stress et d\'anxiété. Les compositions classiques et les sons de la nature ont un effet calmant, nous aidant à nous détendre et à abaisser notre tension artérielle.',
        ),
                ArticleSection(
          title: 'Stimulation de la mémoire et de la concentration',
          content:
              'La musique peut également améliorer la mémoire et la concentration. Des études ont montré que la musique classique, en particulier les compositions de Mozart, peut avoir un effet positif sur les performances cognitives.',
        ),
                ArticleSection(
          title: 'Gestion de la douleur',
          content:
              'La musique a un pouvoir analgésique. Écouter de la musique peut diminuer la perception de la douleur chez les patients atteints de maladies chroniques ou ceux en période post-opératoire, favorisant la libération d\'endorphines.',
        ),
                ArticleSection(
          title: 'Amélioration de l\'humeur et de la motivation',
          content:
              'La musique énergique et joyeuse peut améliorer l\'humeur et augmenter la motivation. Que ce soit pour se lever le matin ou pour se donner un coup de boost avant une séance d\'entraînement, la musique peut nous rendre plus positifs et pleins d\'énergie.',
        ),
        ArticleSection(
          title: 'Conclusion',
          content:
              'La musique est bien plus qu\'un simple divertissement. Elle a le pouvoir de guérir, de motiver, de calmer et de renforcer. Intégrer la musique dans notre vie quotidienne peut apporter de nombreux bienfaits pour notre santé mentale et physique.',
        ),
      ],
      imageUrl: 'assets/article2.png',
    ), 
    
    Article(
  title: 'Révolution Streaming',
  excerpt:
      'L\'industrie musicale a connu une transformation radicale grâce à l\'émergence des plateformes de streaming...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'L\'industrie musicale a connu une transformation radicale grâce à l\'émergence des plateformes de streaming. Services comme Spotify, Apple Music, et Deezer ont changé la façon dont nous consommons la musique.',
    ),
    ArticleSection(
      title: 'Accès instantané',
      content:
          'Les plateformes de streaming offrent un accès instantané à des millions de chansons, couvrant une multitude de genres et d\'époques. Cette accessibilité a démocratisé l\'écoute musicale, permettant à quiconque ayant une connexion Internet de découvrir une variété de musique.',
    ),
    ArticleSection(
      title: 'Playlists et découverte',
      content:
          'Les playlists personnalisées sont l\'une des fonctionnalités les plus appréciées des plateformes de streaming. Basées sur les habitudes d\'écoute des utilisateurs, ces playlists facilitent la découverte de nouveaux artistes et morceaux.',
    ),
    ArticleSection(
      title: 'Modèle économique pour les artistes',
      content:
          'Pour les artistes, les plateformes de streaming représentent une nouvelle source de revenus. Bien que controversée en raison des faibles paiements par stream, elles offrent une visibilité mondiale, permettant aux artistes de se faire connaître au-delà de leur marché local.',
    ),
    ArticleSection(
      title: 'Impacts sur l\'industrie',
      content:
          'Les maisons de disques ont dû s\'adapter à cette nouvelle ère. Les revenus du streaming sont devenus une source majeure, changeant la manière dont les albums sont produits et commercialisés, avec une focalisation accrue sur les singles.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'Les plateformes de streaming ont révolutionné la consommation musicale, offrant une accessibilité sans précédent et transformant les dynamiques économiques de l\'industrie. Un équilibre entre les intérêts des artistes et des auditeurs est crucial pour un avenir musical florissant.',
    ),
  ],
  imageUrl: 'assets/article3.png',
),
Article(
  title: 'Artistes Indépendants',
  excerpt:
      'Les artistes indépendants jouent un rôle crucial dans l\'industrie musicale moderne...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'Les artistes indépendants jouent un rôle crucial dans l\'industrie musicale moderne. Grâce à Internet et aux nouvelles technologies, ils peuvent se faire connaître et réussir sans les grands labels.',
    ),
    ArticleSection(
      title: 'Autonomie créative',
      content:
          'L\'un des principaux avantages pour les artistes indépendants est l\'autonomie créative. Ils peuvent créer la musique qu\'ils veulent, sans la pression des tendances commerciales imposées par les maisons de disques.',
    ),
    ArticleSection(
      title: 'Distribution numérique',
      content:
          'Les plateformes de streaming et les réseaux sociaux permettent aux artistes de distribuer leur musique à un public mondial. Ils peuvent utiliser des services comme Bandcamp ou SoundCloud pour vendre directement aux fans, sans intermédiaire.',
    ),
    ArticleSection(
      title: 'Crowdfunding et financement',
      content:
          'Les artistes indépendants peuvent utiliser le crowdfunding pour financer leurs projets. Des plateformes comme Kickstarter et Patreon permettent aux fans de soutenir directement leurs artistes préférés, en échange d\'avantages exclusifs.',
    ),
    ArticleSection(
      title: 'Engagement avec les fans',
      content:
          'Les réseaux sociaux facilitent l\'engagement direct avec les fans. Les artistes peuvent partager des mises à jour, organiser des sessions de questions-réponses en direct et vendre des marchandises, renforçant ainsi leur base de fans.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'L\'ère numérique a ouvert de nouvelles opportunités pour les artistes indépendants, leur permettant de réussir sans les grands labels. L\'autonomie créative, la distribution numérique et l\'engagement direct avec les fans sont des éléments clés de leur succès.',
    ),
  ],
  imageUrl: 'assets/article4.png',
),
Article(
  title: 'Tech et Musique',
  excerpt:
      'Les nouvelles technologies transforment la création et l\'expérience musicale...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'Les nouvelles technologies transforment la création et l\'expérience musicale. L\'intelligence artificielle, la réalité virtuelle et d\'autres innovations ouvrent des possibilités passionnantes pour les artistes et les auditeurs.',
    ),
    ArticleSection(
      title: 'Intelligence artificielle',
      content:
          'L\'IA permet de créer de nouvelles œuvres musicales. Des algorithmes sophistiqués peuvent composer des morceaux originaux, imiter des styles musicaux existants et même collaborer avec des artistes humains.',
    ),
    ArticleSection(
      title: 'Réalité virtuelle',
      content:
          'La réalité virtuelle offre des expériences musicales immersives. Les concerts en VR permettent aux fans de vivre des performances comme s\'ils y étaient, créant une nouvelle façon de profiter de la musique en direct.',
    ),
    ArticleSection(
      title: 'Outils de production',
      content:
          'Les avancées technologiques ont rendu la production musicale plus accessible. Des logiciels de production de musique, tels que Ableton Live et FL Studio, permettent à quiconque de créer des morceaux de haute qualité à partir de chez soi.',
    ),
    ArticleSection(
      title: 'Expérience d\'écoute',
      content:
          'Les technologies de pointe améliorent également l\'expérience d\'écoute. Les services de streaming proposent des pistes en haute résolution, et des technologies comme Dolby Atmos offrent un son immersif.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'Les nouvelles technologies révolutionnent la musique, ouvrant des possibilités passionnantes pour la création et l\'expérience musicale. L\'avenir de la musique promet d\'être encore plus innovant et accessible, grâce à ces avancées.',
    ),
  ],
  imageUrl: 'assets/article5.png',
),



     ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.primaryColor,
        title: const TextHeader(thetitle: "Apprenez en plus"),

      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailPage(article: articles[index]),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  color: AppStyles.secondaryColor.withOpacity(0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        child: Image.asset(
                          articles[index].imageUrl,
                          width: double.infinity,
                          height: 75,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: AppStyles.primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              articles[index].title,
                              style: AppStyles.headline1.copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              articles[index].excerpt,
                              style: AppStyles.bodyText2.copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}