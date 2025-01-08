require 'open-uri'

puts 'Cleaning database...'
Festival.destroy_all

puts 'Creating festivals...'

festival1 = Festival.new(name: 'We Love Green 2025',
                start_date: Date.new(2025, 6, 6),
                end_date: Date.new(2025, 6, 8),
                genres: ["Pop", "Rap", "Electro", "House", "Techno", "Rock"].map(&:downcase),
                description: "WE LOVE GREEN, PIONNIER DES FESTIVALS RESPONSABLES ! Plus qu’un festival, We Love Green est
                depuis 10 ans un événement référence dans le développement durable et l’industrie musicale.
                Un savant mélange de fête et d’engagement, le tout porté par une programmation toujours plus
                avant-gardiste, qui traverse les ponts entre indie, électro et urbain. Entre musique, conférences,
                standup, gastronomie engagée, sport et installations artistiques. Un festival qui attire jusqu'à
                100 000 personnes et plus de 100 artistes, autour de ses 5 scènes.",
                image_url: 'app/assets/images/festivals_logos/festival1_logo.png',
                image_banner: 'app/assets/images/festivals_banners/festival1.png',
                address: "Rte Dauphiné, 75012 Paris, France",
                line_up: "VENDREDI 6 JUIN : LAYLOW - TIAKOLA - SDM - PAUL KALKBRENNER - YSEULT - KAVINSKY - SUBLIME LIVE & d'autres artistes à venir
                SAMEDI 7 JUIN : CHARLI XCX - PARCELS - GESAFFELSTEIN - AIR - AMELIE LENS - EZRA COLLECTIVE - MAUREEN - MAGDALENA BAY - HORSEGIIRL - SNOW STRIPPERS - MARCEL DETTMANN - JOLAGREEN23 - THEODORA - SPILL TAB & d'autres artistes à venir
                DIMANCHE 8 JUIN : LCD SOUNDSYSTEM - FKA TWIGS - BEACH HOUSE - BICEP - CLARA LUCIANI - POLO & PAN - ZAMDANE - DJ KOZE - JUDELINE - AVALON EMERSON - JIMI JULES - LUCKY LOVE - FCUKERS & d'autres artistes à venir"
              )

festival1.images.attach([
  {
    io: File.open(Rails.root.join('app/assets/images/festivals_banners/festival1.png')),
    filename: 'festival1.png',
    content_type: 'image/png'
  },
  {
    io: File.open(Rails.root.join('app/assets/images/festivals_logos/festival1_logo.png')),
    filename: 'festival1_logo.png',
    content_type: 'image/png'
  }
])

festival2 = Festival.new(name: 'Le Jardin du Michel 2025',
                start_date: Date.new(2025, 5, 29),
                end_date: Date.new(2025, 6, 1),
                genres: ["Rap", "Electro", "Rock", "Métal", "Punk", "Reggae"].map(&:downcase),
                description: "Le Jardin du Michel, ou JDM pour les intimes, est un festival de musiques actuelles implanté à Toul et Dommartin-Lès-Toul en Meurthe-et-Moselle.
                Cet événement prend place chaque année fin mai/début juin à l’aube de la saison estivale et réunit près de 18 000 personnes sur trois jours. Un camping installé
                sur place pour l’occasion offre également à près de 4 000 festivaliers la possibilité de prolonger l’ambiance festive du festival après les concerts.
                Organisé par la Société Coopérative d’Intérêt Collectif (SCIC) Turbul’lance, Le Jardin du Michel est un véritable projet collaboratif et humain. Il est porté
                par des valeurs sociales, culturelles et écologiques afin de promouvoir et dynamiser le territoire du Toulois. En ce sens, tout au long de l’année Le Michel’s
                Crew développe de nombreux projets : un tremplin musical en faveur des groupes régionaux, le Tremplin du Michel ; un événement destiné au jeune public, Le Jardin des Mômes
                ; et des soirées concerts, les Offs.",
                image_url: 'app/assets/images/festivals_logos/festival2_logo.png',
                image_banner: 'app/assets/images/festivals_banners/festival2.png',
                address: "Rue du Stade, 54200 Dommartin-lès-Toul, France",
                line_up: "JEUDI 29 MAI : FONKY FAMILY & d'autres artistes à venir
                VENDREDI 30 MAI : JO'AIR - DUB INC - TIKEN JAH FOKOLY & d'autres artistes à venir
                SAMEDI 31 MAI : POLO & PAN - ULTRA VOMIT - NOVA TWINS & d'autres artistes à venir
                DIMANCHE 1 JUIN : KYA - TAGADA JONES & d'autres artistes à venir"
              )

festival2.images.attach([
  {
    io: File.open(Rails.root.join('app/assets/images/festivals_banners/festival2.png')),
    filename: 'festival2.png',
    content_type: 'image/png'
  },
  {
    io: File.open(Rails.root.join('app/assets/images/festivals_logos/festival2_logo.png')),
    filename: 'festival2_logo.png',
    content_type: 'image/png'
  }
])

festival3 = Festival.new(name: 'Festival Marsatac - 27ème Édition',
                start_date: Date.new(2025, 6, 13),
                end_date: Date.new(2025, 6, 15),
                genres: ["Rap", "Electro", "Techno", "House", "Rock", "Métal", "Punk", "Reggae"].map(&:downcase),
                description: "C’est le retour du festival Marsatac dans toute sa splendeur !
                Cette édition 2025 se déroulera les 13 et 14 juin prochains dans LE plus beau parc de la ville, le Parc Borély ! Hey on est Marseillais ou on l’est pas ?
                --
                L'accès aux mineurs non accompagnés est strictement interdit ! Le festival Marsatac sera accessible aux mineurs à partir de 12 ans uniquement accompagnés d'un majeur
                responsable, désigné par le tuteur légal du mineur par décharge. Une décharge est valable uniquement pour deux mineurs. Un contrôle d'identité sera effectué à l'entrée du site.
                Il conviendra de venir le jour du festival avec la décharge dédiée, accompagnée d'une photocopie de la carte d'identité du tuteur légal, du majeur responsable et du mineur concerné.",
                image_url: 'app/assets/images/festivals_logos/festival3_logo.png',
                image_banner: 'app/assets/images/festivals_banners/festival3.png',
                address: "Av. du Parc Borély, 13008 Marseille, France",
                line_up: "LAYLOW - FONKY FAMILY - BRUTALISMUS 3000 & d'autres artistes à venir"
              )

festival3.images.attach([
  {
    io: File.open(Rails.root.join('app/assets/images/festivals_banners/festival3.png')),
    filename: 'festival3.png',
    content_type: 'image/png'
  },
  {
    io: File.open(Rails.root.join('app/assets/images/festivals_logos/festival3_logo.png')),
    filename: 'festival3_logo.png',
    content_type: 'image/png'
  }
])

festival1.save!
festival2.save!
festival3.save!

puts "Seeding complete! Created #{Festival.count} festivals"
