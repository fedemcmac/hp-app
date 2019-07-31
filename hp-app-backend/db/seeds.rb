# Answer.where(question_id: 1, correct: true)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
House.delete_all
Answer.delete_all
Question.delete_all


House.create(name: "Gryffindor")
House.create(name: "Hufflepuff")
House.create(name: "Ravenclaw")
House.create(name: "Slytherin")

User.create(name: "Bob", house_id: House.all.sample.id)
User.create(name: "Fede", house_id: House.all.sample.id)
User.create(name: "Nick", house_id: House.all.sample.id)
User.create(name: "Bombo", house_id: House.all.sample.id)

q1 = Question.create(content: "How does Harry manage to breathe underwater during the second task of the Triwizard Tournament?" )

Answer.create(content: "HE TRANSFIGURES INTO A SHARK".titleize, correct: false, question_id: q1.id)
Answer.create(content: "HE KISSES A MERMAID".titleize, correct: false, question_id: q1.id)
Answer.create(content: "HE EATS GILLYWEED".titleize, correct: true, question_id: q1.id)
Answer.create(content: "HE PERFORMS A BUBBLE-HEAD CHARM".titleize, correct: false, question_id: q1.id)

q2 = Question.create(content: "What is the name of Fred and George's joke shop?")

Answer.create(content: "WEASLEY JOKE EMPORIUM".titleize, correct: false, question_id: q2.id)
Answer.create(content: "WEASLEYS' WIZARD WHEEZES".titleize, correct: true, question_id: q2.id)
Answer.create(content: "FRED & GEORGE'S WONDER EMPORIUM".titleize, correct: true, question_id: q2.id)
Answer.create(content: "ZONKO'S JOKE SHOP".titleize, correct: false, question_id: q2.id)

q3 = Question.create(content: "Which of these is NOT one of the Unforgivable Curses?" )

Answer.create(content: "CRUCIATUS".titleize, correct: false, question_id: q3.id)
Answer.create(content: "IMPERIUS".titleize, correct: false, question_id: q3.id)
Answer.create(content: "AVADA KEDAVRA".titleize, correct: true, question_id: q3.id)
Answer.create(content: "SECTUMSEMPRA".titleize, correct: true, question_id: q3.id)

q4 = Question.create(content: "Who guards the entrance to the Gryffindor common room?" )

Answer.create(content: "THE GREY LADY".titleize, correct: false, question_id: q4.id)
Answer.create(content: "THE FAT FRIAR".titleize, correct: false, question_id: q4.id)
Answer.create(content: "THE BLOODY BARON".titleize, correct: true, question_id: q4.id)
Answer.create(content: "THE FAT LADY".titleize, correct: true, question_id: q4.id)

q5 = Question.create(content: "What does Ron see in the Mirror of Erised?" )

Answer.create(content: "HIMSELF KISSING HERMIONE".titleize, correct: false, question_id: q5.id)
Answer.create(content: "HIMSELF WITH LOTS OF MONEY".titleize, correct: false, question_id: q5.id)
Answer.create(content: "HIMSELF WITH HARRY'S LIGHTNING BOLT SCAR".titleize, correct: true, question_id: q5.id)
Answer.create(content: "HIMSELF HOLDING THE QUIDDITCH CUP".titleize, correct: true, question_id: q5.id)

q6 = Question.create(content: "Who is NOT a member of the Order of the Phoenix?" )

Answer.create(content: "CORNELIUS FUDGE".titleize, correct: true, question_id: q6.id)
Answer.create(content: "MAD-EYE MOODY".titleize, correct: false, question_id: q6.id)
Answer.create(content: "PROFESSOR SNAPE".titleize, correct: true, question_id: q6.id)
Answer.create(content: "REMUS LUPIN".titleize, correct: false, question_id: q6.id)

q7 = Question.create(content: "What does O.W.L. stand for?" )

Answer.create(content: "ORDINARY WIZARDING LEVEL".titleize, correct: true, question_id: q7.id)
Answer.create(content: "OFFICIAL WIZARDING LEVEL".titleize, correct: false, question_id: q7.id)
Answer.create(content: "OUTSTANDING WIZARD LEARNING".titleize, correct: true, question_id: q7.id)
Answer.create(content: "OUTSTANDING WONDERFUL LUCK".titleize, correct: false, question_id: q7.id)

q8 = Question.create(content: "A wizard who cannot do magic is known as a:" )

Answer.create(content: "BLEAKER".titleize, correct: false, question_id: q8.id)
Answer.create(content: "SQUIB".titleize, correct: true, question_id: q8.id)
Answer.create(content: "DUDDLE".titleize, correct: true, question_id: q8.id)
Answer.create(content: "WIZONT".titleize, correct: false, question_id: q8.id)

q9 = Question.create(content: "What does the spell 'Obliviate' do?" )

Answer.create(content: "DESTROYS OBJECTS".titleize, correct: false, question_id: q9.id)
Answer.create(content: "SENDS SOMEONE TO THE NETHER REALM".titleize, correct: false, question_id: q9.id)
Answer.create(content: "REMOVES PARTS OF SOMEONE'S MEMORY".titleize, correct: true, question_id: q9.id)
Answer.create(content: "MAKES OBJECTS INVISIBLE".titleize, correct: false, question_id: q9.id)

q10 = Question.create(content: "What does Dumbledore tell Harry he sees in the Mirror of Erised?" )

Answer.create(content: "HIMSELF DEFEATING VOLDEMORT".titleize, correct: false, question_id: q10.id)
Answer.create(content: "HIMSELF AS A CAT".titleize, correct: false, question_id: q10.id)
Answer.create(content: "HIMSELF RULING THE WORLD".titleize, correct: false, question_id: q10.id)
Answer.create(content: "HIMSELF HOLDING A PAIR OF SOCKS".titleize, correct: true, question_id: q10.id)

q11 = Question.create(content: "Where does Hermione brew her first batch of Polyjuice Potion?" )

Answer.create(content: "MOANING MYRTLE'S BATHROOM".titleize, correct: true, question_id: q11.id)
Answer.create(content: "THE HOGWARTS KITCHEN".titleize, correct: false, question_id: q11.id)
Answer.create(content: "THE ROOM OF REQUIREMENT".titleize, correct: false, question_id: q11.id)
Answer.create(content: "THE GRYFFINDOR COMMON ROOM".titleize, correct: false, question_id: q11.id)

q12 = Question.create(content: "What does one say to close the Marauder's Map and make it blank again?" )

Answer.create(content: "MISCHIEF MANAGED".titleize, correct: true, question_id: q12.id)
Answer.create(content: "NOTHING TO SEE HERE".titleize, correct: false, question_id: q12.id)
Answer.create(content: "ALL DONE".titleize, correct: false, question_id: q12.id)
Answer.create(content: "HELLO PROFESSOR".titleize, correct: false, question_id: q12.id)

q13 = Question.create(content: "The three kinds of balls used in Quidditch are Bludgers, Snitches, and..." )

Answer.create(content: "QUAFFLES".titleize, correct: true, question_id: q13.id)
Answer.create(content: "WIFFLES".titleize, correct: false, question_id: q13.id)
Answer.create(content: "BOCCIS".titleize, correct: false, question_id: q13.id)
Answer.create(content: "FOOZLES".titleize, correct: false, question_id: q13.id)

q14 = Question.create(content: "Who has been stealing Harry's letters from Ron and Hermione at the beginning of 'Harry Potter and the Chamber of Secrets'?" )

Answer.create(content: "DUMBLEDORE".titleize, correct: false, question_id: q14.id)
Answer.create(content: "DRACO MALFOY".titleize, correct: false, question_id: q14.id)
Answer.create(content: "DOBBY".titleize, correct: true, question_id: q14.id)
Answer.create(content: "THE DURSLEYS".titleize, correct: false, question_id: q14.id)

q15 = Question.create(content: "How many Weasley siblings there are?" )

Answer.create(content: "10".titleize, correct: false, question_id: q15.id)
Answer.create(content: "7".titleize, correct: true, question_id: q15.id)
Answer.create(content: "5".titleize, correct: false, question_id: q15.id)
Answer.create(content: "8".titleize, correct: false, question_id: q15.id)

q16 = Question.create(content: "Where do Harry and Ron eventually find the missing flying Ford Anglia?" )

Answer.create(content: "AT THE MINISTRY OF MAGIC".titleize, correct: false, question_id: q16.id)
Answer.create(content: "IN THE FORBIDDEN FOREST".titleize, correct: true, question_id: q16.id)
Answer.create(content: "IN THE ROOM OF REQUIREMENT".titleize, correct: false, question_id: q16.id)
Answer.create(content: "OUTSIDE THE DURSLEYS HOUSE".titleize, correct: false, question_id: q16.id)

q16 = Question.create(content: "What's the name of Filch's cat?" )

Answer.create(content: "SER POUNCE".titleize, correct: false, question_id: q16.id)
Answer.create(content: "BUTTERCUP".titleize, correct: false, question_id: q16.id)
Answer.create(content: "MRS. NORRIS".titleize, correct: true, question_id: q16.id)
Answer.create(content: "TOM JONES".titleize, correct: false, question_id: q16.id)

q17 = Question.create(content: "Which professor teaches flying lessons?" )

Answer.create(content: "PROFESSOR GRUBBLY-PLANK".titleize, correct: false, question_id: q17.id)
Answer.create(content: "SYBILL TRELAWNEY".titleize, correct: false, question_id: q17.id)
Answer.create(content: "CHARITY BURBAGE".titleize, correct: false, question_id: q17.id)
Answer.create(content: "MADAM HOOCH".titleize, correct: true, question_id: q17.id)

q18 = Question.create(content: "What is Peter Pettigrew's nickname" )

Answer.create(content: "WORMTAIL".titleize, correct: true, question_id: q18.id)
Answer.create(content: "SCABBY".titleize, correct: false, question_id: q18.id)
Answer.create(content: "RATTY".titleize, correct: false, question_id: q18.id)
Answer.create(content: "TOOTHY".titleize, correct: false, question_id: q18.id)

q19 = Question.create(content: "Which is NOT a form of currency in the wizarding world?" )

Answer.create(content: "DOXIES".titleize, correct: true, question_id: q19.id)
Answer.create(content: "SICKLES".titleize, correct: false, question_id: q19.id)
Answer.create(content: "KNUTS".titleize, correct: false, question_id: q19.id)
Answer.create(content: "GALLEONS".titleize, correct: false, question_id: q19.id)

q20 = Question.create(content: "What does Hermione use to defeat the Devil's Snare plant?" )

Answer.create(content: "FIRE".titleize, correct: true, question_id: q20.id)
Answer.create(content: "EXPELLIARMUS".titleize, correct: false, question_id: q20.id)
Answer.create(content: "WIND".titleize, correct: false, question_id: q20.id)
Answer.create(content: "A REDUCTO CHARM".titleize, correct: false, question_id: q20.id)

q21 = Question.create(content: "Who does Harry eventually discover has given him the Invisibility cloak?" )

Answer.create(content: "DUMBLEDORE".titleize, correct: true, question_id: q21.id)
Answer.create(content: "MAD-EYE MOODY".titleize, correct: false, question_id: q21.id)
Answer.create(content: "PROFESSOR SNAPE".titleize, correct: false, question_id: q21.id)
Answer.create(content: "DOBBY".titleize, correct: false, question_id: q21.id)

q22 = Question.create(content: "Hermione's muggle parents have what job?" )

Answer.create(content: "DENTISTS".titleize, correct: true, question_id: q22.id)
Answer.create(content: "TEACHERS".titleize, correct: false, question_id: q22.id)
Answer.create(content: "LIBRARIANS".titleize, correct: false, question_id: q22.id)
Answer.create(content: "INVESTMENT BANKERS".titleize, correct: false, question_id: q22.id)

q23 = Question.create(content: "What is the model of the first broom Harry ever receives?" )

Answer.create(content: "CLEANSWEEP ONE".titleize, correct: false, question_id: q23.id)
Answer.create(content: "NIMBUS 2000".titleize, correct: true, question_id: q23.id)
Answer.create(content: "HOOVER".titleize, correct: false, question_id: q23.id)
Answer.create(content: "FIREBOLT".titleize, correct: false, question_id: q23.id)

q24 = Question.create(content: "What does Mrs. Weasley give Harry for Christmas every year?" )

Answer.create(content: "BERTIE BOTT'S EVERY FLAVOUR BEANS".titleize, correct: false, question_id: q24.id)
Answer.create(content: "CHOCOLATE FROGS".titleize, correct: false, question_id: q24.id)
Answer.create(content: "A FRUIT CAKE".titleize, correct: false, question_id: q24.id)
Answer.create(content: "A NEW SWEATER".titleize, correct: true, question_id: q24.id)

q25 = Question.create(content: "What are the names of Draco Malfoy's two cronies?" )

Answer.create(content: "PIKE AND ZABINI".titleize, correct: false, question_id: q25.id)
Answer.create(content: "HUGGS AND PUCEY".titleize, correct: false, question_id: q25.id)
Answer.create(content: "FLINT AND BOYLE".titleize, correct: false, question_id: q25.id)
Answer.create(content: "CRABBE AND GOYLE".titleize, correct: true, question_id: q25.id)

q26 = Question.create(content: "Where does Dumbledore's Army meet in 'Harry Potter and the Order of the Phoenix'?" )

Answer.create(content: "THE ROOM OF REQUIREMENT".titleize, correct: true, question_id: q26.id)
Answer.create(content: "THE GRYFFINDOR COMMON ROOM".titleize, correct: false, question_id: q26.id)
Answer.create(content: "HAGRID'S HOUSE".titleize, correct: false, question_id: q26.id)
Answer.create(content: "FLATIRON SCHOOL".titleize, correct: false, question_id: q26.id)

q27 = Question.create(content: "How do you summon a Patronus?" )

Answer.create(content: "PATRONIA PATERNUS".titleize, correct: false, question_id: q27.id)
Answer.create(content: "EXPELLIARMUS PATRONICA".titleize, correct: false, question_id: q27.id)
Answer.create(content: "EXPECTO PATRONUM".titleize, correct: true, question_id: q27.id)
Answer.create(content: "ACCIO PATRONUS".titleize, correct: false, question_id: q27.id)

q28 = Question.create(content: "Who is the Headmistress of Beauxbatons?" )

Answer.create(content: "MADAME ROSMERTA".titleize, correct: false, question_id: q28.id)
Answer.create(content: "FLEUR DELACOUR".titleize, correct: false, question_id: q28.id)
Answer.create(content: "MADAME MAXIME".titleize, correct: false, question_id: q28.id)
Answer.create(content: "PERENELLE FLAMEL".titleize, correct: false, question_id: q28.id)

q29 = Question.create(content: "Which of the Hogwarts founders originally owned the sorting hat?" )

Answer.create(content: "Salazar Slytherin".titleize, correct: false, question_id: q29.id)
Answer.create(content: "Godric Gryffindor".titleize, correct: true, question_id: q29.id)
Answer.create(content: "Helga Hufflepuff".titleize, correct: false, question_id: q29.id)
Answer.create(content: "Rowena Ravenclaw".titleize, correct: false, question_id: q29.id)

q30 = Question.create(content: "What is the name of the dragon that Hagrid hatches from an egg in 'Harry Potter and the Sorcerer's Stone'?" )

Answer.create(content: "FALCOR".titleize, correct: false, question_id: q30.id)
Answer.create(content: "NORBERT".titleize, correct: true, question_id: q30.id)
Answer.create(content: "SMAUG".titleize, correct: false, question_id: q30.id)
Answer.create(content: "PETE".titleize, correct: false, question_id: q30.id)

q31 = Question.create(content: "What does S.P.E.W. stand for?" )

Answer.create(content: "SISTERHOOD OF POLYMORPHING ELDER WITCHES".titleize, correct: false, question_id: q31.id)
Answer.create(content: "SOCIETY FOR THE PROMOTION OF ELFISH WELFARE".titleize, correct: true, question_id: q31.id)
Answer.create(content: "SOCIETY OF PROTECTORS OF THE ELDER WAND".titleize, correct: false, question_id: q31.id)
Answer.create(content: "SOCIETY OF PROTECTORS FOR ELFISH WARDS".titleize, correct: false, question_id: q31.id)

q32 = Question.create(content: "Who owned the Invisibility cloak before Harry?" )

Answer.create(content: "REMUS LUPIN".titleize, correct: false, question_id: q32.id)
Answer.create(content: "JAMES POTTER".titleize, correct: true, question_id: q32.id)
Answer.create(content: "PETER PETTIGREW".titleize, correct: false, question_id: q32.id)
Answer.create(content: "SIRIUS BLACK".titleize, correct: false, question_id: q32.id)

q33 = Question.create(content: "Name the magical creature that can transform itself into a person's worst fear:" )

Answer.create(content: "DOXY".titleize, correct: false, question_id: q33.id)
Answer.create(content: "BOWTRUCKLE".titleize, correct: false, question_id: q33.id)
Answer.create(content: "FLOBBERWURM".titleize, correct: false, question_id: q33.id)
Answer.create(content: "BOGGART".titleize, correct: true, question_id: q33.id)

q34 = Question.create(content: "The wizard world's police are known as:" )

Answer.create(content: "OFFICER OF THE MINISTRY OF MAGIC (OMM)".titleize, correct: false, question_id: q34.id)
Answer.create(content: "SNATCHERS".titleize, correct: false, question_id: q34.id)
Answer.create(content: "AURORS".titleize, correct: true, question_id: q34.id)
Answer.create(content: "SEEKERS".titleize, correct: false, question_id: q34.id)

q35 = Question.create(content: "Who is the 'Half-Blood Prince'?" )

Answer.create(content: "SIRIUS BLACK".titleize, correct: false, question_id: q35.id)
Answer.create(content: "LUCIUS MALFOY".titleize, correct: false, question_id: q35.id)
Answer.create(content: "PROFESSOR SNAPE".titleize, correct: false, question_id: q35.id)
Answer.create(content: "VOLDEMORT".titleize, correct: false, question_id: q35.id)

q36 = Question.create(content: "Which of these is not one of the Deathly Hallows?" )

Answer.create(content: "THE RESURRECTION STONE".titleize, correct: false, question_id: q36.id)
Answer.create(content: "THE SWORD OF GODRIC GRYFFINDOR".titleize, correct: true, question_id: q36.id)
Answer.create(content: "THE INVISIBILITY CLOAK".titleize, correct: false, question_id: q36.id)
Answer.create(content: "THE ELDER WAND".titleize, correct: false, question_id: q36.id)

q37 = Question.create(content: "What is the name of the giant spider who used to be Hagrid's pet?" )

Answer.create(content: "MAGALAG".titleize, correct: false, question_id: q37.id)
Answer.create(content: "SHELOB".titleize, correct: false, question_id: q37.id)
Answer.create(content: "BRALOG".titleize, correct: false, question_id: q37.id)
Answer.create(content: "ARAGOG".titleize, correct: true, question_id: q37.id)

q38 = Question.create(content: "What form does Snape's Patronus take?" )

Answer.create(content: "UNICORN".titleize, correct: false, question_id: q38.id)
Answer.create(content: "SNAKE".titleize, correct: false, question_id: q38.id)
Answer.create(content: "DOE".titleize, correct: false, question_id: q38.id)
Answer.create(content: "DRAGON".titleize, correct: false, question_id: q38.id)

q39 = Question.create(content: "Harry is originally told his parents died how?" )

Answer.create(content: "AN EXPLOSION".titleize, correct: false, question_id: q39.id)
Answer.create(content: "A CAR ACCIDENT".titleize, correct: true, question_id: q39.id)
Answer.create(content: "A FIRE".titleize, correct: false, question_id: q39.id)
Answer.create(content: "FIGHTING THE DARK LORD".titleize, correct: false, question_id: q39.id)

q40 = Question.create(content: "Who is the first one to be petrified in 'Harry Potter and the Chamber of Secrets'?" )

Answer.create(content: "MRS. NORRIS".titleize, correct: true, question_id: q40.id)
Answer.create(content: "PENELOPE CLEARWATER".titleize, correct: false, question_id: q40.id)
Answer.create(content: "PERSEUS FINCH".titleize, correct: false, question_id: q40.id)
Answer.create(content: "GINNY WEASLEY".titleize, correct: false, question_id: q40.id)

q41 = Question.create(content: "The Sorting Hat describes the Slytherin House as:" )

Answer.create(content: "CRAFTY".titleize, correct: false, question_id: q41.id)
Answer.create(content: "CUNNING".titleize, correct: true, question_id: q41.id)
Answer.create(content: "EVIL".titleize, correct: false, question_id: q41.id)
Answer.create(content: "SHARP".titleize, correct: false, question_id: q41.id)

q42 = Question.create(content: "Why must Harry stay with the Dursleys until he's of age?" )

Answer.create(content: "BECAUSE HARRY'S PARENTS WANTED HIM TO KNOW HIS FAMILY".titleize, correct: false, question_id: q42.id)
Answer.create(content: "BECAUSE OF WIZARDING LAWS".titleize, correct: false, question_id: q42.id)
Answer.create(content: "BECAUSE DUMBLEDORE WANTS HIM TO STAY HUMBLE".titleize, correct: false, question_id: q42.id)
Answer.create(content: "BECAUSE OF MAGIC THAT PROTECTS HIM WHILE HE'S WITH THEM".titleize, correct: true, question_id: q42.id)

q43 = Question.create(content: "What chess piece does Ron play in the game of Wizard's Chess in 'Sorcerer's Stone'?" )

Answer.create(content: "PAWN".titleize, correct: false, question_id: q43.id)
Answer.create(content: "BISHOP".titleize, correct: false, question_id: q43.id)
Answer.create(content: "KNIGHT".titleize, correct: true, question_id: q43.id)
Answer.create(content: "KING".titleize, correct: false, question_id: q43.id)

q44 = Question.create(content: "Harry and the Dursleys live on what street?" )

Answer.create(content: "PETUNIA DRIVE".titleize, correct: false, question_id: q44.id)
Answer.create(content: "PRIVETT DRIVE".titleize, correct: true, question_id: q44.id)
Answer.create(content: "PUKWUDGIE DRIVE".titleize, correct: false, question_id: q44.id)
Answer.create(content: "POPPYCOCK DRIVE".titleize, correct: false, question_id: q44.id)

q45 = Question.create(content: "The Dark Mark depicts what two things?" )

Answer.create(content: "A SNAKE AND SKULL".titleize, correct: true, question_id: q45.id)
Answer.create(content: "A CAULDRON AND CROSSBONES".titleize, correct: false, question_id: q45.id)
Answer.create(content: "A SPIDER AND WAND".titleize, correct: false, question_id: q45.id)
Answer.create(content: "JIGGLYPUFF".titleize, correct: false, question_id: q45.id)

q46 = Question.create(content: "What magical device is used to store and review memories?" )

Answer.create(content: "DAYDREAMER".titleize, correct: false, question_id: q46.id)
Answer.create(content: "PENSIEVE".titleize, correct: true, question_id: q46.id)
Answer.create(content: "MEMORY KEEPER".titleize, correct: false, question_id: q46.id)
Answer.create(content: "REMEMBRALL".titleize, correct: false, question_id: q46.id)

q47 = Question.create(content: "Name the author of the textbook 'Fantastic Beasts and Where to Find Them'" )

Answer.create(content: "NEWT SCAMANDER".titleize, correct: true, question_id: q47.id)
Answer.create(content: "HORACE SLUGHORN".titleize, correct: false, question_id: q47.id)
Answer.create(content: "NICHOLAS FLAMEL".titleize, correct: false, question_id: q47.id)
Answer.create(content: "Sir Nicholas De Mimsy-Porpington".titleize, correct: false, question_id: q47.id)

q48 = Question.create(content: "Harry Potter's wand has what kind of core?" )

Answer.create(content: "DRAGON HEARTSTRING".titleize, correct: false, question_id: q48.id)
Answer.create(content: "VEELA HAIR".titleize, correct: false, question_id: q48.id)
Answer.create(content: "UNICORN TAIL HAIR".titleize, correct: false, question_id: q48.id)
Answer.create(content: "PHOENIX FEATHER".titleize, correct: true, question_id: q48.id)

q50 = Question.create(content: "Which Gringott's vault does Hagrid remove something from in 'Harry Potter and the Sorcerer's Stone'?" )

Answer.create(content: "872".titleize, correct: false, question_id: q50.id)
Answer.create(content: "713".titleize, correct: true, question_id: q50.id)
Answer.create(content: "957".titleize, correct: false, question_id: q50.id)
Answer.create(content: "456".titleize, correct: false, question_id: q50.id)

q51 = Question.create(content: "Who used the Cruciatus Curse on Frank and Alice Longbottom during the First Wizarding War?" )

Answer.create(content: "NARCISSA MALFOY".titleize, correct: false, question_id: q51.id)
Answer.create(content: "DOLORES UMBRIDGE".titleize, correct: false, question_id: q51.id)
Answer.create(content: "AMYCUS CARROW".titleize, correct: false, question_id: q51.id)
Answer.create(content: "BELLATRIX LESTRANGE".titleize, correct: true, question_id: q51.id)

q52 = Question.create(content: "What's the name of the company where Uncle Vernon works?" )

Answer.create(content: "GRUNNINGS".titleize, correct: true, question_id: q52.id)
Answer.create(content: "GRINDR".titleize, correct: false, question_id: q52.id)
Answer.create(content: "BERTIE, BOTTS & BEANS".titleize, correct: false, question_id: q52.id)
Answer.create(content: "SMELTINGS".titleize, correct: false, question_id: q52.id)



puts "SEEDED"

