% Define the dynamic predicates
:- dynamic genre_selected/1, status_selected/1, gender_selected/1, length_selected/1.

% Main procedure to get the manga recommendation
main :- recommendation(),!.
    %format('Recommended manga: ~w', [Recommendation]),!.

% Recommendation procedure

recommendation() :-
    genre_selected(Genre),
    status_selected(Status),
    gender_selected(Gender),
    length_selected(Length),
    recommend(Genre, Status, Gender, Length),!.
% Genre selection
genre_selected(Genre) :-
    write('What genre of manga do you prefer to read?'), nl,
    write('1 - Comedy'), nl,
    write('2 - Horror'), nl,
    write('3 - Everyday Life'), nl,
    write('4 - Fantasy'), nl,
    read(Choice),
    genre_choice(Choice, Genre).

% Map genre choice to genre
genre_choice(1, comedy).
genre_choice(2, horror).
genre_choice(3, everyday_life).
genre_choice(4, fantasy).
genre_choice(_, invalid).

% Status selection
status_selected(Status) :-
    write('Is the manga ongoing or completed?'), nl,
    write('1 - Completed'), nl,
    write('2 - Ongoing'), nl,
    read(Choice),
    status_choice(Choice, Status).

% Map status choice to status
status_choice(1, completed).
status_choice(2, ongoing).
status_choice(_, invalid).

% Gender selection
gender_selected(Gender) :-
    write('What is the gender of the main character?'), nl,
    write('1 - Female'), nl,
    write('2 - Male'), nl,
    read(Choice),
    gender_choice(Choice, Gender).

% Map gender choice to gender
gender_choice(1, female).
gender_choice(2, male).
gender_choice(_, invalid).

% Length selection
length_selected(Length) :-
    write('What is the length of the manga?'), nl,
    write('1 - 20-200 chapters'), nl,
    write('2 - 200+ chapters'), nl,
    read(Choice),
    length_choice(Choice, Length).

% Map length choice to length
length_choice(1, short).
length_choice(2, long).
length_choice(_, invalid).

% Recommend manga based on selected attributes
%recommend(comedy, completed, female, short) :-
%    yes_or_no('Is the main character a noblewoman in the Middle Ages?', 
 %             'Beware of the Villainess', 
  %            'I am the grim reaper').
recommend(comedy, completed, female, short) :-
    yes_or_no('Is the main character a noblewoman in the Middle Ages?', 
              'Beware of the Villainess', 
              'I am the grim reaper').

recommend(comedy, completed, male, short) :-
    yes_or_no('Is the main character a sociopath?', 
              'Her sommon', 
              'Love Advice of the Duke of Hell').

recommend(comedy, completed, female, long) :-
    yes_or_no('Are there palace intrigues?', 
              'Descent-of-the-Phoenix', 
              'The-Adulterer-Must-Die').

recommend(comedy, completed, male, long) :-
    yes_or_no('Is the main character learning to fight?', 
              'BATTLE in Live Broadcast', 
              'MASTER').

recommend(comedy, ongoing, female, short) :-
    yes_or_no('Does the heroine work in a hospital?', 
              'Horror Clinic', 
              'Adopted Daughter of the Hero').

recommend(comedy, ongoing, male, short) :-
    yes_or_no('Does the hero date an office worker?', 
              'My-Grim-Romance', 
              'Shuher!-We-Have-a-New-Student').

recommend(comedy, ongoing, female, long) :-
    yes_or_no('Is the heroine a vampire?', 
              'White-Blood:Rascally-Girls', 
              'Another-Title-Here').

recommend(comedy, ongoing, long, male) :-
    yes_or_no('Did the hero experience a problem with lucism?', 
              'Lucism:Four-Heroes', 
              'Another-Title-Here').

% Фэнтези, завершенный, короткая манга, мужской персонаж
recommend(fantasy, completed, male, short) :-
    yes_or_no('Does the hero journey to a world of swords and magic?', 
              'Her-Servant', 
              'Wanderer').

% Фэнтези, завершенный, длинная манга, женский персонаж
recommend(fantasy, completed, female,long) :-
    yes_or_no('Is the heroine a victim of vampire xenophobia?', 
              'White_Blood', 
              'Descent of the Phoenix').

% Фэнтези, завершенный, длинная манга, мужской персонаж
recommend(fantasy, completed, male,long ) :-
    yes_or_no('Is the hero a disciple of a great commander?', 
              'Master', 
              'SoloLeveling').

% Фэнтези, продолжающийся, короткая манга, женский персонаж
recommend(fantasy, ongoing, female,short ) :-
    yes_or_no('Does the heroine interact with supernatural creatures?', 
              'HorrorClinic', 
              'AdoptedDaughterOfTheHero').

% Фэнтези, продолжающийся, короткая манга, мужской персонаж
recommend(fantasy, ongoing, male,short ) :-
    yes_or_no('Does the hero oppose the entire country\'s weaponry?', 
              'SwordMasterOnTheRoof', 
              'Nanomachines').

% Фэнтези, продолжающийся, длинная манга, женский персонаж
recommend(fantasy, ongoing, female, long) :-
    yes_or_no('Is the heroine an immortal magical being?', 
              'MyWifeIsTheDemonQueen', 
              'TheAdultererMustDie').

% Фэнтези, продолжающийся, длинная манга, мужской персонаж
recommend(fantasy, ongoing, male,long ) :-
    yes_or_no('Does the hero experience a rebirth after death?', 
              'SSSRankHunter', 
              'WarSlave').
%повседневность
recommend(everyday_life, completed, female, short) :-
    yes_or_no('Is the heroine the head of a criminal conglomerate? (yes/no): ',
              'My Wife is a Gangster',
              'Beware Of This Devil').

recommend(everyday_life, completed, male, short) :-
    yes_or_no('Is the hero considered a dangerous hooligan at school? (yes/no): ',
              'Shuher! We Have a New Student',
              'Love Advice of the Duke of Hell').

recommend(everyday_life, completed, female, long) :-
    yes_or_no('Does the heroine find herself in the world of a novel she read? (yes/no): ',
              'Tomo Tyan - Girl',
              'Flowers After Berries').

recommend(everyday_life, completed, male, long) :-
    yes_or_no('Does the hero learn to fight? (yes/no): ',
              'Rascally Girls',
              'Battle in Live Broadcast').

recommend(everyday_life, ongoing, female, short) :-
    yes_or_no('Does the heroine interact with supernatural beings? (yes/no): ',
              'Horror Clinic',
              'Adopted Daughter of the Hero').

recommend(everyday_life, ongoing, male, short) :-
    yes_or_no('Does the hero want to become a great cyclist? (yes/no): ',
              'Vetrolom',
              'Lucism').

recommend(everyday_life, ongoing, female, long) :-
    yes_or_no('Was the heroine sold into slavery by her parents? (yes/no): ',
              'Military Slave',
              'Insomnia Law').

recommend(everyday_life, ongoing, male, long) :-
    yes_or_no('Is the hero\'s father an influential killer? (yes/no): ',
              'Bastard',
              'Grim Reaper').
recommend(horror, completed, female, short) :-
    yes_or_no('Is the heroine a sinner who kills to survive? (yes/no): ',
              'I am the grim reaper',
              'Nightmare House').

recommend(horror, completed, male, short) :-
    yes_or_no('Have intelligent monsters taken over the world? (yes/no): ',
              'Dear House',
              'Boy With Gun').

recommend(horror, completed, female, long) :-
    yes_or_no('Is the heroine a victim of xenophobic vampires? (yes/no): ',
              'White Blood: Descent of the Phoenix',
              'Erma').

recommend(horror, completed, male, long) :-
    yes_or_no('Is the hero a serial killer? (yes/no): ',
              'Swine Herd',
              'Erma').

recommend(horror, ongoing, female, short) :-
    yes_or_no('Is the heroine a homunculus? (yes/no): ',
              'Claymore',
              'Scream Queen').

recommend(horror, ongoing, male, short) :-
    yes_or_no('Is it an interpretation of the Faust story and deals with the Devil? (yes/no): ',
              'Devil Boy',
              'Creating Hell From Scratch').

recommend(horror, ongoing, female, long) :-
    yes_or_no('Does the heroine see evil spirits? (yes/no): ',
              'Girl Who Sees It',
              'Dark Queen').

recommend(horror, ongoing, male, long) :-
    yes_or_no('Is there a curse that can grant wishes or kill? (yes/no): ',
              'Divine Mercy',
              'Last Man').
%yes or no
yes_or_no(Question, YesResponse, NoResponse) :-
    format('~w (yes/no): ', [Question]),
    read(Response),
    (Response = yes -> (
        format('Your answer is "yes". '), write(YesResponse), nl
    ); (
        format('Your answer is "no". '), write(NoResponse), nl
    )).

               
               
               