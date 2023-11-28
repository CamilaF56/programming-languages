brinquedo(boneca).
brinquedo(ursinho).

amigo(laila).
amigo(vinicius).
amigo(miguel).

brinca(marlysson, vinicius).
brinca(ana, laila).
brinca(ana, boneca).
brinca(layra, ursinho).
brinca(layra, laila).
brinca(layra, boneca).
brinca(miguel, laila).

gosta(ana, X) :- brinquedo(X), brinca(ana, X). % ana gosta do do que ana brinca
gosta(layra, X) :- brinquedo(X), brinca(layra, X).
gosta(marlysson, X) :- brinca(ana, X). % marlysson gosta só do que ana brinca
gosta(ana, brinca(marlysson)). % ana só gsota do que marlysson brinca
gosta(layra, X) :-  amigo(X), brinca(layra, X). % layra gosta só do que ela brinca e isso seja amigo
gosta(miguel, X) :- brinca(layra, X).
