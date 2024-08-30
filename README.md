# Passwortstrength

Dieses Programm soll herausfinden, wie stark ein Passwort nach den Richtlinien der Firma ist.

Ein starkes Passwort entspricht folgenden Kriterien:
- Es ist mindestens 8 Zeichen lang
- Es enthält mindestens einen Großbuchstaben
- Es enthält mindestens einen Kleinbuchstaben
- Es enthält mindestens eine Zahl
- Es enthält mindestens eine Sonderzeichen (!@#\$%^&*(),.?":{}|<>)

## Bewertung

Das Programm weist dem Passwort einen Score zu, die seine Gesamtstärke widerspiegelt.
Der Score basiert auf der Anzahl der erfüllten Kriterien:

0: Das Passwort erfüllt keines der Kriterien.
1: Das Passwort erfüllt ein Kriterium (z.B. Länge, Großbuchstabe, Kleinbuchstabe, Zahl, Sonderzeichen).
2: Das Passwort erfüllt zwei Kriterien.
3: Das Passwort erfüllt drei Kriterien.
4: Das Passwort erfüllt alle Kriterien.
