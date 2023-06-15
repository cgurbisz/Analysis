
#OXYGEN
#rate umol/m2/h
#acc instrument accuracy mg/l
#vol chamber volume m3
hourfun_o2 <- function(rate, acc, vol)
{mg = rate*32*0.018/1000000/vol
acc/mg
}

#ruppia 10-200 mmol/m2/h = 6000-15000 umol
rates = seq(100, 5000, 100)
accs = c(0.16, 0.4)
vols = c(0.005, 0.007, 0.009, 0.01)

hourfun_02(rates, 0.16, 0.005)

#DIC
#accuracy is 4 umol/kg = 4 mmol/m3
#1 m3 water = 1000 kg
hourfun_dic <- function(rate, acc, vol)
{chng = rate*0.018/vol
acc/chng
}

hourfun_dic(0.41, 4, vols)
