rm(list=ls())
library("fda")
`refinery` <-
  structure(list(Time = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
                          12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 
                          28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 
                          44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 
                          60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 
                          76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 
                          92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 
                          106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 
                          119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 
                          132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 
                          145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 
                          158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 
                          171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 
                          184, 185, 186, 187, 188, 189, 190, 191, 192, 193), Reflux = c(-0.0132999999999974, 
                                                                                        -0.0202999999999989, -0.00829999999999842, 0.0167000000000002, 
                                                                                        0.0227000000000004, 0.00570000000000093, -0.0213000000000001, 
                                                                                        0.0147000000000013, -0.0243000000000002, 0.0117000000000012, 
                                                                                        0.0167000000000002, 0.0197000000000003, -0.0132999999999974, 
                                                                                        -0.0402999999999984, 0.0287000000000006, 0.00169999999999959, 
                                                                                        0.00670000000000215, 0.0046999999999997, -0.0322999999999993, 
                                                                                        -0.0192999999999977, 0.00570000000000093, -0.0333000000000006, 
                                                                                        -0.0122999999999998, 0.00670000000000215, 0.0287000000000006, 
                                                                                        0.00570000000000093, -0.00229999999999819, 0.00270000000000081, 
                                                                                        0.00970000000000226, 0.00370000000000203, 0.0417000000000023, 
                                                                                        -0.0162999999999975, -0.0432999999999986, -0.0112999999999985, 
                                                                                        0.0147000000000013, -0.00629999999999953, -0.028299999999998, 
                                                                                        0.0137000000000000, -0.0162999999999975, -0.0322999999999993, 
                                                                                        0.00769999999999982, 0.0246999999999993, 0.0147000000000013, 
                                                                                        -0.0183, 0.0767000000000024, -0.00130000000000052, 0.00169999999999959, 
                                                                                        0.00870000000000104, -0.00829999999999842, -0.0103000000000009, 
                                                                                        -0.0152999999999999, 0.0246999999999993, 0.00270000000000081, 
                                                                                        -0.0152999999999999, 0.00870000000000104, -0.00430000000000064, 
                                                                                        -0.0252999999999979, -0.00329999999999941, 0.0366999999999997, 
                                                                                        0.00670000000000215, 0.0106999999999999, -0.0112999999999985, 
                                                                                        0.0167000000000002, -0.0152999999999999, -0.0333000000000006, 
                                                                                        -0.0342999999999982, 0.00870000000000104, 0.00970000000000226, 
                                                                                        -0.424299999999999, -0.409299999999998, -0.475300000000001, -0.531299999999998, 
                                                                                        -0.5243, -0.5303, -0.542299999999997, -0.487299999999998, -0.487299999999998, 
                                                                                        -0.465299999999999, -0.504300000000001, -0.504300000000001, -0.523299999999999, 
                                                                                        -0.501300000000001, -0.493299999999998, -0.493299999999998, -0.497299999999999, 
                                                                                        -0.510300000000001, -0.479299999999999, -0.533300000000001, -0.473299999999998, 
                                                                                        -0.501300000000001, -0.529299999999999, -0.546299999999999, -0.503299999999999, 
                                                                                        -0.4513, -0.496299999999998, -0.5123, -0.494299999999999, -0.470299999999998, 
                                                                                        -0.4923, -0.528299999999998, -0.476299999999998, -0.543299999999999, 
                                                                                        -0.496299999999998, -0.4863, -0.490299999999998, -0.508299999999998, 
                                                                                        -0.485299999999999, -0.543299999999999, -0.534299999999998, -0.4803, 
                                                                                        -0.4803, -0.5093, -0.502299999999998, -0.476299999999998, -0.497299999999999, 
                                                                                        -0.516299999999998, -0.507300000000001, -0.490299999999998, -0.474299999999999, 
                                                                                        -0.496299999999998, -0.4773, -0.505299999999998, -0.5503, -0.510300000000001, 
                                                                                        -0.497299999999999, -0.4573, -0.4863, -0.4983, -0.5213, -0.482299999999999, 
                                                                                        -0.5093, -0.5473, -0.528299999999998, -0.522299999999998, -0.513299999999997, 
                                                                                        -0.467299999999998, -0.484299999999998, -0.520299999999999, -0.536300000000001, 
                                                                                        -0.537299999999998, -0.517299999999999, -0.468299999999999, -0.493299999999998, 
                                                                                        -0.503299999999999, -0.474299999999999, -0.481299999999997, -0.471299999999999, 
                                                                                        -0.464299999999998, -0.484299999999998, -0.4663, -0.5123, -0.506300000000000, 
                                                                                        -0.504300000000001, -0.5123, -0.520299999999999, -0.517299999999999, 
                                                                                        -0.479299999999999, -0.548299999999998, -0.496299999999998, -0.505299999999998, 
                                                                                        -0.525299999999998, -0.481299999999997, -0.488299999999999, -0.507300000000001, 
                                                                                        -0.491299999999999, -0.4773, -0.488299999999999, -0.523299999999999, 
                                                                                        -0.4893, -0.4803, -0.478300000000001, -0.529299999999999, -0.4983, 
                                                                                        -0.499299999999998, -0.510300000000001, -0.4773, -0.513299999999997, 
                                                                                        -0.499299999999998, -0.484299999999998, -0.504300000000001, -0.496299999999998, 
                                                                                        -0.4953, -0.513299999999997, -0.485299999999999, -0.491299999999999, 
                                                                                        -0.5153, -0.511299999999999, -0.536300000000001, -0.5153, -0.511299999999999, 
                                                                                        -0.520299999999999, -0.500299999999999, -0.508299999999998, -0.5123
                          ), Tray47 = c(-0.0672499999999729, -0.0862499999999784, -0.0672499999999729, 
                                        -0.0492499999999723, -0.0302499999999668, 0.0907500000000141, 
                                        0.0837500000000375, 0.0767500000000325, 0.0687500000000227, 0.081750000000028, 
                                        0.0937500000000284, 0.105750000000029, 0.0867500000000234, 0.0687500000000227, 
                                        0.0497500000000173, -0.0862499999999784, -0.203249999999969, 
                                        -0.174249999999972, -0.144249999999971, -0.115249999999975, 0.0107500000000300, 
                                        0.00375000000002501, -0.00324999999997999, -0.0112499999999613, 
                                        -0.0182499999999663, -0.0252499999999714, -0.0332499999999811, 
                                        -0.0402499999999861, -0.0472499999999627, -0.0452499999999816, 
                                        -0.043249999999972, -0.0412499999999625, -0.0392499999999814, 
                                        -0.0382499999999766, -0.0362499999999670, -0.0342499999999859, 
                                        -0.0322499999999764, -0.0302499999999668, 0.0787500000000136, 
                                        0.0777500000000373, 0.0767500000000325, 0.0757500000000277, 0.074750000000023, 
                                        0.0737500000000182, 0.0727500000000134, 0.0717500000000371, -0.0282499999999857, 
                                        0.000750000000010687, 0.0307500000000118, 0.0597500000000366, 
                                        0.156750000000017, 0.12175000000002, 0.0867500000000234, -0.0402499999999861, 
                                        -0.0412499999999625, -0.043249999999972, -0.0442499999999768, 
                                        -0.0462499999999864, -0.0472499999999627, -0.0462499999999864, 
                                        -0.0862499999999784, -0.0862499999999784, -0.118249999999989, 
                                        -0.113249999999965, -0.105249999999984, -0.0762499999999875, 
                                        -0.0402499999999861, 0.0687500000000227, 0.205750000000023, 0.222750000000019, 
                                        0.195750000000032, 0.234750000000020, 0.360750000000024, 0.49475000000001, 
                                        0.690750000000037, 0.788750000000022, 0.75875000000002, 0.720750000000038, 
                                        0.729750000000024, 0.807750000000027, 0.982750000000038, 1.12875000000003, 
                                        1.21575000000001, 1.20575000000002, 1.23775000000003, 1.34175000000002, 
                                        1.45875000000004, 1.55475000000001, 1.64075000000003, 1.74675000000002, 
                                        1.87575000000001, 1.94175000000001, 2.04875000000001, 2.13775000000001, 
                                        2.23475000000002, 2.34175000000002, 2.38075000000003, 2.43875000000003, 
                                        2.46775000000002, 2.51675000000003, 2.50775000000002, 2.51675000000003, 
                                        2.51375000000002, 2.54575000000003, 2.56775000000002, 2.64275000000004, 
                                        2.72075000000004, 2.81775000000002, 2.83475000000001, 2.87575000000001, 
                                        2.84675000000001, 2.80575000000002, 2.82675000000003, 2.82275000000001, 
                                        2.88575000000003, 2.96275000000003, 2.93375000000003, 2.92375000000001, 
                                        2.92375000000001, 2.96275000000003, 3.04075000000003, 3.05975000000004, 
                                        3.12775000000002, 3.18375000000003, 3.22275000000002, 3.26075000000003, 
                                        3.26375000000002, 3.26175000000003, 3.24175000000002, 3.31175000000002, 
                                        3.35075000000003, 3.44775000000001, 3.51575000000003, 3.54475000000002, 
                                        3.50375000000003, 3.51275000000001, 3.58375000000004, 3.65175000000002, 
                                        3.64175000000003, 3.66775000000001, 3.70975000000001, 3.69975000000002, 
                                        3.69075000000004, 3.73875000000004, 3.80175000000003, 3.85275000000001, 
                                        3.89075000000003, 3.92275000000004, 3.92275000000004, 3.92275000000004, 
                                        3.87775000000002, 3.85475000000002, 3.83575000000002, 3.88475000000003, 
                                        3.95875000000004, 4.01975000000002, 4.03975000000003, 4.00075000000001, 
                                        3.97175000000001, 3.96175000000002, 3.96975000000003, 3.95875000000004, 
                                        3.92275000000004, 3.95175000000003, 3.96175000000002, 3.95175000000003, 
                                        3.92275000000004, 3.98075000000003, 4.00075000000001, 3.98075000000003, 
                                        3.94975000000002, 3.97175000000001, 3.97175000000001, 4.00775000000002, 
                                        4.08475000000001, 4.14575000000002, 4.15575000000001, 4.16575000000003, 
                                        4.12475000000003, 4.11375000000004, 4.12975000000003, 4.12375000000003, 
                                        4.15575000000001, 4.19475000000003, 4.19475000000003, 4.22075000000004, 
                                        4.26275000000001, 4.26275000000001, 4.29175000000004, 4.30075000000002, 
                                        4.28975000000003, 4.27175000000003, 4.24275000000003, 4.21375000000003
                          )), .Names = c("Time", "Reflux", "Tray47"), row.names = c("1", 
                                                                                    "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", 
                                                                                    "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", 
                                                                                    "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", 
                                                                                    "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", 
                                                                                    "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", 
                                                                                    "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", 
                                                                                    "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", 
                                                                                    "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", 
                                                                                    "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", 
                                                                                    "101", "102", "103", "104", "105", "106", "107", "108", "109", 
                                                                                    "110", "111", "112", "113", "114", "115", "116", "117", "118", 
                                                                                    "119", "120", "121", "122", "123", "124", "125", "126", "127", 
                                                                                    "128", "129", "130", "131", "132", "133", "134", "135", "136", 
                                                                                    "137", "138", "139", "140", "141", "142", "143", "144", "145", 
                                                                                    "146", "147", "148", "149", "150", "151", "152", "153", "154", 
                                                                                    "155", "156", "157", "158", "159", "160", "161", "162", "163", 
                                                                                    "164", "165", "166", "167", "168", "169", "170", "171", "172", 
                                                                                    "173", "174", "175", "176", "177", "178", "179", "180", "181", 
                                                                                    "182", "183", "184", "185", "186", "187", "188", "189", "190", 
                                                                                    "191", "192", "193", "194"), class = "data.frame")
x11(width = 9,height = 3)
op = par(mfrow=c(1,2),lty=3)
plot(Reflux~Time, refinery,pch="??",xlab='Time (min)',col='red',
     ylab='Reflux flow')
plot(Tray47~Time, refinery,pch="??",xlab='Time (min)', ylab='Tray 47 level',col='blue')
mtext("Texas Oil Refinery",side = 3,line = -2,outer = TRUE,cex=2.0)
par(op)
