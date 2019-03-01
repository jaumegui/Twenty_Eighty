puts 'Cleaning database...'
Content.destroy_all
Comment.destroy_all
User.destroy_all
Client.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Generating database..."
# puts "Generating Intelligences..."

# Intelligence.create(name: 'Intelligence logico-mathématique', description: "L'intelligence logico-mathématique permet de résoudre des problèmes abstraits de nature logique ou mathématique. C'est la capacité de manipuler les nombres et de résoudre des problèmes logiques. Gardner souligne que « mathematics involves more than logic, such as the capacity to entertain long chains of logical relations expressed in symbolic form » (les mathématiques ne font pas appel seulement à la logique mais également à la capacité de manipuler de longues chaînes de relations logiques exprimées sous des formes symboliques).
# Les personnes qui ont une intelligence logico-mathématique développée possèdent la capacité de calculer, de mesurer, de faire preuve de logique et de résoudre des problèmes mathématiques et scientifiques. Elles analysent les causes et les conséquences d'un phénomène ou d'une action. Elles peuvent catégoriser et ordonner les objets. L'intelligence logico-mathématique est, selon Gardner, particulièrement utile dans les sciences, les affaires ou encore en médecine.")

# Intelligence.create(name: "Intelligence verbo-linguistique", description: "L'intelligence linguistique est définie par Gardner comme la « capacité à utiliser et à comprendre les mots et les nuances de sens ». Elle est appliquée en écriture, en édition et en traduction en particulier. Elle concerne l'entrée (input) des stimuli linguistiques (écouter ou lire), et la production (output) de langage (parler, écrire). L'intelligence linguistique est aussi la capacité à comprendre comment le langage affecte les émotions dans le cas des rhétoriciens, écrivains et poètes, par exemple.")

# Intelligence.create(name: "Intelligence spatiale", description: "L’intelligence spatiale est la « capacité de trouver son chemin dans un environnement donné et d'établir des relations entre les objets dans l'espace ». Elle permet de voir la continuité d'une image en rotation dans l'espace, de créer une image mentale. Par exemple, elle permet de bien arranger des objets dans un espace comme des valises dans un coffre de voiture, ou d'établir un plan de route pour aller d'un point à un autre, etc.
# Elle est utilisée dans des domaines comme l'architecture, la menuiserie ou l'urbanisme. Elle est utile en mathématiques et dans le jeu d'échecs.")

# Intelligence.create(name: "Intelligence intra-personnelle", description: "L'intelligence intra-personnelle permet de se former une représentation de soi précise et fidèle et de l'utiliser efficacement dans la vie. Elle sollicite plus le champ des représentations et des images que celui du langage. Il s'agit de la capacité à décrypter ses propres émotions, à rester ouvert à ses besoins et à ses désirs. C'est l'intelligence de l'introspection, de la psychologie analytique. Elle permet d'anticiper sur ses comportements en fonction de la bonne connaissance de soi. Il est possible, mais pas systématique, qu'une personne ayant une grande intelligence intrapersonnelle, soit qualifiée par son entourage de personne égocentrique.")

# Intelligence.create(name: "Intelligence inter-personnelle", description: "L’intelligence interpersonnelle est la capacité de comprendre les autres, de communiquer avec eux et d'anticiper l'apparition d'un comportement .
# Elle permet à l’individu d’agir et de réagir avec les autres de façon correcte et adaptée. Elle l’amène à constater les différences et nuances de tempérament, de caractère, de motifs d’action entre les personnes. Elle permet l’empathie, la coopération, la tolérance, la manipulation. Elle permet de détecter les intentions de quelqu’un sans qu’elles soient avouées. Cette intelligence permet de résoudre des problèmes liés à nos relations avec les autres ; elle nous permet de comprendre et de générer des solutions valables pour les aider.")

# Intelligence.create(name: "Intelligence corporelle-kinesthésique", description: "L’intelligence corporelle-kinesthésique est la capacité d’utiliser le contrôle fin des mouvements du corps dans les activités comme le sport et les danses. Elle permet aussi d'utiliser son corps pour exprimer une idée ou un sentiment ou réaliser une activité physique donnée. Gardner a clarifié dans certaines publications ultérieures à son livre que l'intelligence corporelle-kinesthésique est celle qui se développe à force d'intense pratique et d'expertise.
# Elle est particulièrement utilisée par les professions de danseur, d'athlète, de chirurgien et d'artisan.")

# Intelligence.create(name: "Intelligence musicale-rythmique", description: "L’intelligence musicale constitue l’aptitude à percevoir et créer des rythmes et mélodies, de reconnaître des modèles musicaux, de les interpréter et d'en créer. Cette intelligence engage des processus actifs et passifs : jouer d'un instrument, chanter ou composer (actif) mais également apprécier la musique écoutée (passif). Cette intelligence est développée et nécessaire chez les musiciens et compositeurs.")

# puts "Done!"

puts "Generating Contents..."

Content.create(intel1: "Logico-Mathématique", intel2: "Intrapersonnelle", title: 'Prise de parole en public', chapter: 'Communication', format: 'Top-down', duration: 45, description: "Monter sur scène pour prendre la parole en public est un exercice difficile qui demande de la préparation. Les conférences TED (Technology, Entertainment & Design) sont devenues des standards de prise de parole. Il s’agit d’un cycle de conférences crée à Monterey (Californie) en 1984 qui rassemble des esprits brillants dans leur domaine pour partager des idées avec le monde. C’est un événement annuel où les plus grands talents internationaux sont invités à partager leur passion.")

Content.create(intel1: "Interpersonnelle", intel2: "Verbo-Linguistique", title: "Les 5 types d'écoute", chapter: 'Communication', format: 'Mise en situation', duration: 45, description: "« L’écoute est notre arme », devise du groupe de négociation du RAID.
La qualité première des négociateurs est l’écoute. Savoir déceler le type d’écoute chez son interlocuteur permet de s’assurer que le message que l’on envoie sera bien reçu. Le type d’écoute que vous utilisez en dit beaucoup sur vous.

Les 5 formes d’écoute les plus fréquentes sont :
1. Écoute impassible
Votre interlocuteur vous regarde fixement et ne laisse transparaître aucune émotion. Vous parlez à une statue. Il ne relance pas la conversation. Vous vous épuisez à maintenir le dialogue.

2. Écoute distraite
Votre interlocuteur fait autre chose. Il est sur son téléphone ou son ordinateur. Il ne vous regarde pas dans les yeux. Il acquiesce de manière automatique.

3. Écoute égocentrique
Votre interlocuteur ne parle que de lui. Vous avez du mal à placer une phrase. Chaque fois que vous prenez la parole est une occasion pour votre interlocuteur de continuer à parler de lui.

4. Écoute agressive
Votre interlocuteur enchaîne les questions comme dans un interrogatoire, vous interrompt, vous met mal-à-l’aise, et adopte une attitude supérieure et méprisante.

5. Écoute active
Votre interlocuteur montre de l’intérêt à ce que vous dites. Il n’hésite pas à reformuler vos propos ou à vous poser des questions.

Et vous, quel type d’écoute utilisez-vous spontanément ?
Vos interlocuteurs ont-ils la même réponse que vous ?
Comment réagir face à ces types d’écoute ?

Le groupe négociation du RAID a choisi comme devise : « L’écoute est notre arme ». L’emblème du Groupe est une représentation d’un vase grec antique présentant Œdipe assis face au Sphinx.")

Content.create(intel1: "Kinesthesique", intel2: "Verbo-Linguistique", title: "Les 6 lois de la persuasion", chapter: 'Négociation', format: 'Top-down', duration: 30, description: "De 0 à 6 ans, nous découvrons le monde qui nous entoure et nous apprenons à y vivre. Notre cerveau crée des raccourcis pour que nous puissions continuer à apprendre.
EXEMPLE
Plus besoin de se demander ce qu’il se passe quand on appuie sur un interrupteur: notre cerveau a créé un raccourci entre l’interrupteur et le fait que la lumière s’allume si on appuie dessus.

Ces raccourcis sont nécessaires évidemment. Ils sont universels, cependant ils nous fragilisent face à des manipulateurs, des publicitaires ou autres qui les utilisent pour prédire, influencer nos comportements.

Robert Cialdini, psychologue social américain a établi 6 principes fondateurs de la psychologie sociale qui sous-tendent l’influence et la manipulation.
Loi de la réciprocité
On doit rendre d’une manière ou d’une autre ce qui nous a été donné. Sentiment induit : Obligation. Technique : offrir quelque chose avant de demander une faveur en retour.

Loi sur l’engagement
Chacun désire être considéré comme cohérent dans ses paroles, attitudes et actes​. Sentiment induit : Cohérence. Technique : obtenir l’engagement de l’autre pour lui demander une faveur.

Loi de conformité sociale
Nous tendons à suivre le plus grand nombre et à nous conformer au groupe. Expérience de Asch.

Loi sur l’automatisme
Une personne que nous apprécions aura plus d’influence sur nous et nous préférons dire oui à quelqu’un que nous aimons bien. Technique : la réunion Tupperware.

Loi sur l’autorité
Nous nous soumettons naturellement à l’autorité à partir du moment où nous la reconnaissons légitime. Technique : Expérience de Milgram.

Loi sur la rareté
Plus une chose semble rare plus nous désirons la posséder. Technique : Il n’y en aura pas pour tout le monde.")

puts "Done!"
puts "Generating Users..."

User.create(name: "Yahya", email: "yahya@2080.co", password: "tititoto", access_level: "admin", expertise: "Stratégie")
User.create(name: "Guillaume", email: "guillaume@2080.co", password: "tititoto", access_level: "admin", expertise: "Stratégie")
User.create(name: "Benoit", email: "benoit@2080.co", password: "tititoto", access_level: "admin", expertise: "Stratégie")
User.create(name: "Brice", email: "brice@2080.co", password: "tititoto", access_level: "admin", expertise: "Stratégie")
User.create(name: "User", email: "user@2080.co", password: "tititoto", access_level: "project_manager", expertise: "Stratégie")
User.create(name: "Sevener", email: "sevener@2080.co", password: "tititoto", access_level: "sevener", expertise: "Stratégie")

puts "Done!"

puts "Generating Clients..."
Client.create(
 name: "Michel Michel",
 email: "michel@deliveroo.fr",
 company: "Deliveroo",
 address: "14 rue de la livraison, 75001 Paris",
 logo: "https://i0.wp.com/www.grapheine.com/wp-content/uploads/2016/09/new-logo-deliveroo.gif?fit=1950%2C1200&quality=90&strip=all&ssl=1")
Client.create(
 name: "Jean-Michel Michel" ,
 email: "jean-michel-michel@ibm.com",
 company: "IBM",
 address: "224 rue des Américains, 75016 Paris",
 logo: "https://pbs.twimg.com/profile_images/1013563961633959936/X5epMthl_400x400.jpg")
Client.create(
 name: "Boris",
 email: "boris@lewagon.com",
 company: "Le Wagon",
 address: "16 Villa Gaudelet, 75011 Paris",
 logo: "https://amft.io/wp-content/uploads/2017/05/white_logo_red_font.png")
Client.create(
 name: "Xavier Niel",
 email: "xavier@42.com",
 company: "Ecole 42",
 address: "96 Boulevard Bessières, 75017 Paris",
 logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/42_Technologies_logo.svg/2000px-42_Technologies_logo.svg.png")

puts "Done!"
