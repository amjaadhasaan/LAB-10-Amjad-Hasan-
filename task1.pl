% Amjad Hasan 2230006571

square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Length, Width, Area, Perimeter) :-
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

triangle(Base, Height, Side2, Side3, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is Base + Side2 + Side3.
