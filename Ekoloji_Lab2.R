
# Verilerin yüklenmesi A alanı Lab B alanı Doga
AB_data <- read.csv2("Data/Data_agac.csv",sep = ";",header = TRUE,col.names = c("A","B"))
AB_data

# Verileri A ve B alanı olmak üzere iki kısma ayırın ve boş verileri atın (NA)
alan_A <- 24.6 25.8 26.1 22.9 25.1 27.3 24.0 24.5 23.9 26.2 24.3 24.6 23.3 25.5 28.1 24.8 23.5 26.3 25.4 25.5 23.9 27.0 24.8 22.9 25.4 24.0 22.9 24.8 22.9 24.0
alan_B <- 23.5 25.2 21.2 22.7 26.3 22.6 21.4 23.5 24.1 25.6 23.9 23.6 26.3 23.2 25.6 21.3 22.4 24.9 23.8 24.6 24.1 22.6 22.7 25.7 24.3 23.2 22.7 21.4 21.3 23.5 

# Tanımlayıcı istatistik
A alanı ve B alanındaki ağaçların ortalama boy uzunlukları arasında anlamlı bir fark yoktur.(alan_A)

A alanı ve B alanındaki ağaçların ortalama boy uzunlukları arasında anlamlı bir fark vardır.(alan_B)

# standart sapma ve varyasyon

sd(alan_A)

sd(alan_B)

# varyans ve örneklem büyüklüklerini ayrı olarak belirleyin
var_A <- var(alan_A)

var_B <- var(alan_B)

n_A <- length(alan_A)

n_B <- length(alan_B)



# T değerinin bulunması, Cohen'in değerine göre (uzun yol)


t_value <- (mean(alan_A)-mean(alan_B))/sqrt((var_A/n_A+var_B/n_B))

t_value

# P değerinin bulunması, çift taraflı olduğu için ikiyle çarpılması gereklidir

pt(t_value,df=22,lower.tail = FALSE, log.p = FALSE)*2    


# Histogram grafikleri

par(mfrow = c(1,2))

hist(alan_A, xlab = "Ağaç Sayısı", ylab = "Sıklık", main = "A alanı")

hist(alan_B,xlab = "Ağaç Sayısı", ylab = "Sıklık", main = "B alanı")

# T testi ile alanların karşılaştırılması (kısayol)

t.test(alan_A,alan_B,alternative = "two.sided",paired = FALSE)


