# Imports
library(tidyverse)

#--------- Erste Operationen -----------

nutzung <- c(45, 60, 75, 30, 50, 80, 55)

summe <- sum(nutzung)
durchschnitt <- nutzung |> mean() |> round(1)
Überschreitungen <- sum(nutzung > 30)

# -----------------------

a <- 10
b <- a / 2
a <- b * 2 + a
b <- a - b

print(a) # 20
print(b) # 15

# ------------ Matrizen -----------

zahlen <- c(1, 2, 3, 4, 5, 6)
matrix_zahlen <- matrix(zahlen, nrow=2)
matrix_zahlen 

# ------------ Datensätze --------------

Gemüse <- c("Karotte", "Zucchini", "Tomate")
gekauft <- c(TRUE, FALSE, TRUE)
Menge <- c(3L, 1L, 10L)
Kochzeit <- c(15.5, 2.3, 1.0)

datensatz <- tibble(Gemüse, gekauft, Menge, Kochzeit)

datensatz

# --------- Liste -----------

x1 <- 3
x2 <- c("Tomaten", "Pasta", "Knoblauch", "Basilikum")
x3 <- c(5.89)
x4 <- c(4, 500, 2, 10)
x5 <- c("Pfanne", "Topf", "Messer")

kochen_liste <- list(personen     = x1,
                     zutaten      = x2,
                     gesamtpreise = x3,
                     menge        = x4,
                     utensilien   = x5)

kochen_liste

# ------------------ Social Media AUfgabe ----------------

person <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
plattform <- c("Instagram", "Instagram", "Instagram", "Instagram", "Instagram",
               "Youtube", "Youtube", "Youtube", "Youtube", "Youtube") |> 
  factor(levels = c("Youtube", "Instagram"))  # Youtube zuerst = Level 1

zufriedenheit <- c(1, 2, 1, 3, 3, 1, 2, 3, 1, 2)

befragung_socialmedia = tibble(person, plattform, zufriedenheit)
befragung_socialmedia

mittelwert <- mean(zufriedenheit) # 1.9 = mittel
liste2 <- list(zufriedenheit, mittelwert)

liste2
