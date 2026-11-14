% Amjad Hasan 2230006571

user(ahmed, 1234).
user(sara, 5678).
user(amjad, 2026).

login :-
    attempt(3).

attempt(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.
attempt(N) :-
    N > 0,
    write('Enter username: '), read(User),
    write('Enter password: '), read(Pass),
    check(User, Pass, N).

check(User, Pass, _) :-
    user(User, Pass),
    write('Login Successful'), nl.
check(User, Pass, N) :-
    \+ user(User, Pass),
    write('Login Unsuccessful'), nl,
    Left is N - 1,
    attempt(Left).
