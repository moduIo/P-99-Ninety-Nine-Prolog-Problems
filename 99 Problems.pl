% P01
myLast( Element, [Element] ).
myLast( Element, [_ | Rest] ) :-
    myLast( Element, Rest ).

% P02
secondToLast( Element, [Element, _] ).
secondToLast( Element, [_ | Rest] ) :-
    secondToLast( Element, Rest ).

% P03
elementAt( X, [X | _], 1 ).
elementAt( X, [_ | Rest], K ) :-
    K > 1,
    K1 is K - 1,
    elementAt( X, Rest, K1 ).

% P04
numberOfElements( 0, [] ).
numberOfElements( K, [_ | Rest] ) :-
    numberOfElements( K1, Rest ),
    K is K1 + 1.