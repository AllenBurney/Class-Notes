%q3as1prolog1.pl:WAP in prolog to input roll,name,pl(0-100),p2(0-100),p3(0-100).
% Calculate t=sum of best 2 papers.av=t/2,
%Grade A if av>=70, B if av>=60, C if av>=40, fail else.
% WAP to input roll, name, p1, p2, p3
% Calculate total of best 2 papers, average, and grade

result :-
    write('Enter roll = '), read(Roll),
    write('Enter name = '), read(Name),
    write('Enter p1 = '), read(P1),
    write('Enter p2 = '), read(P2),
    write('Enter p3 = '), read(P3),

    % Find smallest mark
    (   P1 =< P2, P1 =< P3 -> Small is P1
    ;   P2 =< P1, P2 =< P3 -> Small is P2
    ;   Small is P3
    ),

    Sum is P1 + P2 + P3,
    Total is Sum - Small,
    Avg is Total / 2,

    % Grade calculation
    (   Avg >= 70 -> Grade = 'A'
    ;   Avg >= 60 -> Grade = 'B'
    ;   Avg >= 40 -> Grade = 'C'
    ;   Grade = 'Fail'
    ),

    nl,
    write('Roll = '), write(Roll), nl,
    write('Name = '), write(Name), nl,
    write('Best 2 Total = '), write(Total), nl,
    write('Average = '), write(Avg), nl,
    write('Grade = '), write(Grade), nl.
