# Install groundhog for managing packages
install.packages("groundhog")
library("groundhog")

#choose packages that will be used in this script and will be loaded by groundhog
groundhog.library(palmerpenguins, date="2022-04-15")
groundhog.library(ggplot2, date = "2022-04-15")

# install and load palmerpenguins data
install.packages("palmerpenguins")
library(palmerpenguins)

# see what's in the data
head(penguins)

# Penguin mass vs flipper length
ggplot2::theme_set(ggplot2::theme_minimal())

mass_flipper <- ggplot(data = penguins, 
                       aes(x = flipper_length_mm,
                           y = body_mass_g)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 3,
             alpha = 0.8) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme(legend.position = c(0.2, 0.7),
        plot.title.position = "plot",
        plot.caption = element_text(hjust = 0, face= "italic"),
        plot.caption.position = "plot")

mass_flipper
