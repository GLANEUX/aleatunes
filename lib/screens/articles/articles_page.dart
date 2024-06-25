// articles_page.dart

import 'package:flutter/material.dart';
import 'article_detail_page.dart';
import 'article.dart';

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
Article(
  title: 'Évolution des Genres Musicaux',
  excerpt:
      'Les genres musicaux évoluent constamment, influencés par des facteurs culturels et technologiques...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'Les genres musicaux évoluent constamment, influencés par des facteurs culturels et technologiques. Chaque décennie voit l\'émergence de nouveaux styles et la transformation des genres existants.',
    ),
    ArticleSection(
      title: 'Influences culturelles',
      content:
          'Les événements sociaux et politiques ont toujours joué un rôle majeur dans l\'évolution de la musique. Par exemple, le rock des années 60 était fortement influencé par les mouvements de contre-culture et de protestation.',
    ),
    ArticleSection(
      title: 'Fusion des genres',
      content:
          'La fusion des genres est un phénomène courant dans la musique moderne. Des artistes mélangent des éléments de différents styles pour créer des sons uniques, comme le rap-rock ou l\'électro-pop.',
    ),
    ArticleSection(
      title: 'Impact de la technologie',
      content:
          'Les avancées technologiques influencent également les genres musicaux. L\'électronique et les logiciels de production ont donné naissance à des genres comme l\'EDM et la synthwave.',
    ),
    ArticleSection(
      title: 'La mondialisation',
      content:
          'La mondialisation permet la diffusion rapide de nouvelles tendances musicales. Des genres locaux peuvent atteindre une audience globale, comme le reggaeton ou la K-pop.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'L\'évolution des genres musicaux est un reflet de notre société en constante mutation. La diversité et l\'innovation dans la musique promettent un avenir riche en découvertes sonores.'
          ),
],
imageUrl: 'assets/article5.png',
),
Article(
  title: 'Impact du Numérique sur la Musique',
  excerpt:
      'L\'ère numérique a transformé tous les aspects de l\'industrie musicale, de la production à la consommation...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'L\'ère numérique a transformé tous les aspects de l\'industrie musicale, de la production à la consommation. Les artistes et les auditeurs bénéficient de nouvelles opportunités et de défis.',
    ),
    ArticleSection(
      title: 'Production musicale',
      content:
          'Les outils numériques ont rendu la production musicale plus accessible. Des logiciels de production et des instruments virtuels permettent à quiconque de créer de la musique professionnelle chez soi.',
    ),
    ArticleSection(
      title: 'Distribution et promotion',
      content:
          'Internet offre des plateformes pour distribuer et promouvoir la musique. Les réseaux sociaux, YouTube, et les plateformes de streaming sont des moyens essentiels pour atteindre un public mondial.',
    ),
    ArticleSection(
      title: 'Consommation de musique',
      content:
          'La consommation de musique a évolué avec le numérique. Les playlists et les recommandations algorithmiques influencent fortement ce que nous écoutons, modifiant nos habitudes d\'écoute.',
    ),
    ArticleSection(
      title: 'Défis et opportunités',
      content:
          'Le numérique a créé des opportunités, mais aussi des défis pour les artistes. La saturation du marché et la question des revenus du streaming sont des sujets de préoccupation.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'L\'ère numérique a profondément impacté la musique. Bien qu\'elle présente des défis, elle ouvre également des possibilités infinies pour la création et la consommation musicale.',
    ),
  ],
  imageUrl: 'assets/article4.png',
),

Article(
  title: 'Musique et Éducation',
  excerpt:
      'La musique joue un rôle important dans l\'éducation, offrant des bénéfices cognitifs et émotionnels...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'La musique joue un rôle important dans l\'éducation, offrant des bénéfices cognitifs et émotionnels. Elle est intégrée dans les programmes scolaires et utilisée comme outil pédagogique.',
    ),
    ArticleSection(
      title: 'Développement cognitif',
      content:
          'L\'apprentissage de la musique peut améliorer les compétences cognitives. Des études montrent que les enfants qui apprennent à jouer d\'un instrument développent de meilleures capacités de mémoire et de concentration.',
    ),
    ArticleSection(
      title: 'Expression émotionnelle',
      content:
          'La musique permet aux étudiants d\'exprimer leurs émotions. Elle peut servir de moyen de communication et d\'expression personnelle, particulièrement bénéfique pour ceux ayant des difficultés à verbaliser leurs sentiments.',
    ),
    ArticleSection(
      title: 'Culture et histoire',
      content:
          'La musique est un excellent moyen d\'enseigner la culture et l\'histoire. Elle peut être utilisée pour explorer différentes époques et cultures, offrant une perspective plus riche sur le monde.',
    ),
    ArticleSection(
      title: 'Collaboration et discipline',
      content:
          'Jouer de la musique en groupe enseigne la collaboration et la discipline. Les élèves apprennent à travailler ensemble et à respecter les horaires et les pratiques.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'Intégrer la musique dans l\'éducation offre de nombreux avantages. Elle enrichit le développement cognitif, émotionnel et social des élèves, tout en leur offrant une appréciation de la culture et de l\'histoire.',
    ),
  ],
  imageUrl: 'assets/article3.png',
),
Article(
  title: 'Femmes dans la Musique',
  excerpt:
      'Les femmes ont toujours joué un rôle crucial dans la musique, mais leurs contributions sont souvent sous-estimées...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'Les femmes ont toujours joué un rôle crucial dans la musique, mais leurs contributions sont souvent sous-estimées. Cet article explore l\'impact des femmes dans l\'industrie musicale et les défis qu\'elles rencontrent.',
    ),
    ArticleSection(
      title: 'Pionnières de la musique',
      content:
          'Des pionnières comme Aretha Franklin et Nina Simone ont brisé les barrières et ouvert la voie pour les générations futures. Leurs contributions ont été fondamentales dans l\'évolution de nombreux genres musicaux.',
    ),
    ArticleSection(
      title: 'Inégalité de genre',
      content:
          'L\'industrie musicale reste marquée par l\'inégalité de genre. Les femmes sont souvent sous-représentées dans les rôles de production et de direction, et elles font face à des défis uniques en termes de reconnaissance et de rémunération.',
    ),
    ArticleSection(
      title: 'Émergence de nouvelles voix',
      content:
          'De plus en plus de femmes prennent des rôles de leadership dans la musique. Des artistes comme Beyoncé, Taylor Swift et Billie Eilish sont non seulement des interprètes, mais aussi des productrices et des auteures-compositrices influentes.',
    ),
    ArticleSection(
      title: 'Initiatives et soutien',
      content:
          'Des initiatives et organisations se consacrent à soutenir les femmes dans la musique. Des programmes de mentorat, des bourses et des festivals dédiés aux femmes artistes contribuent à équilibrer la donne.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'Les femmes continuent de façonner la musique de manière significative. Reconnaître et soutenir leur travail est essentiel pour une industrie musicale plus équitable et diversifiée.',
    ),
  ],
  imageUrl: 'assets/article2.png',
),

Article(
  title: 'Musique et Écologie',
  excerpt:
      'L\'industrie musicale commence à se tourner vers des pratiques plus durables et respectueuses de l\'environnement...',
  sections: [
    ArticleSection(
      title: 'Introduction',
      content:
          'L\'industrie musicale commence à se tourner vers des pratiques plus durables et respectueuses de l\'environnement. Des artistes et des organisations s\'engagent à réduire l\'empreinte écologique de la musique.',
    ),
    ArticleSection(
      title: 'Festivals verts',
      content:
          'De nombreux festivals adoptent des pratiques écologiques, comme l\'utilisation de sources d\'énergie renouvelables, la réduction des déchets et la promotion du recyclage.',
    ),
    ArticleSection(
      title: 'Vinyles et CDs écoresponsables',
      content:
          'Les maisons de disques explorent des options plus durables pour la production de vinyles et de CDs, utilisant des matériaux recyclés et des procédés moins polluants.',
    ),
    ArticleSection(
      title: 'Streaming et émissions de carbone',
      content:
          'Le streaming a un coût environnemental, notamment en termes d\'émissions de carbone dues aux centres de données. Des efforts sont faits pour augmenter l\'efficacité énergétique et utiliser des énergies renouvelables.',
    ),
    ArticleSection(
      title: 'Sensibilisation des artistes',
      content:
          'De nombreux artistes utilisent leur plateforme pour sensibiliser leurs fans à l\'écologie. Des chansons engagées et des campagnes de sensibilisation sont de plus en plus courantes.',
    ),
    ArticleSection(
      title: 'Conclusion',
      content:
          'La musique peut jouer un rôle dans la lutte pour la durabilité. En adoptant des pratiques plus écologiques, l\'industrie musicale peut contribuer à la préservation de notre planète tout en continuant à inspirer et à divertir.',
    ),
  ],
  imageUrl: 'assets/article1.png',
),




     ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles de Musique'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              articles[index].imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(
              articles[index].title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            subtitle: Text(
              articles[index].excerpt,
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticleDetailPage(article: articles[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
