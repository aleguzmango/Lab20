
# Alumna: ALEJANDRA GUZMÁN DIMAS


# LABORATORIO - Gráficos en R con ggplot2 
# faceting (romper un gráfica en varias dentro de una cuadrícula)


# cargar libreria ggplot2 
library(ggplot2)


#buscar df
file.choose()

# leer base
densidad_verde=read.csv("/Users/alejandraguzmandimas/Documents/DOCTORADO/3er. semestre/Temas selectos I Estadística para las Ciencias Económico Administrativas/Labs/Lab 20/PARA FACETING.csv")

#ver nombres
names(densidad_verde)

# colocando grafica base
p=ggplot(data=densidad_verde,
         mapping=aes(x=DENSITY,
                     y=PCI.2018,
                     color=Region))+
  geom_point()

# crear objeto p
p

# facet_wrap (recomendado con una variable)
p+facet_wrap(~Region)

# manipulando número de filas
p+facet_wrap(~Region, nrow = 3)

# manipulando número de columnas
p+facet_wrap(~Region, ncol = 5)
