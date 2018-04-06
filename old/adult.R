A <- readLines(con <- file("raw/adult.dat"))
close(con)
library(stringr)
SEQN <- str_sub(A, 1, 5)
DMPFSEQ <- str_sub(A, 6, 10)
DMPSTAT <- str_sub(A, 11, 11)
DMARETHN <- str_sub(A, 12, 12)
DMARACER <- str_sub(A, 13, 13)
DMAETHNR <- str_sub(A, 14, 14)
HSSEX <- str_sub(A, 15, 15)
HSDOIMO <- str_sub(A, 16, 17)
HSAGEIR <- str_sub(A, 18, 19)
HSAGEU <- str_sub(A, 20, 20)
HSAITMOR <- str_sub(A, 21, 24)
HSFSIZER <- str_sub(A, 25, 26)
HSHSIZER <- str_sub(A, 27, 28)
DMPCNTYR <- str_sub(A, 29, 31)
DMPFIPSR <- str_sub(A, 32, 33)
DMPMETRO <- str_sub(A, 34, 34)
DMPCREGN <- str_sub(A, 35, 35)
DMPPIR <- str_sub(A, 36, 41)
SDPPHASE <- str_sub(A, 42, 42)
SDPPSU6 <- str_sub(A, 43, 43)
SDPSTRA6 <- str_sub(A, 44, 45)
SDPPSU1 <- str_sub(A, 46, 46)
SDPSTRA1 <- str_sub(A, 47, 48)
SDPPSU2 <- str_sub(A, 49, 49)
SDPSTRA2 <- str_sub(A, 50, 51)
WTPFQX6 <- str_sub(A, 52, 60)
WTPFEX6 <- str_sub(A, 61, 69)
WTPFHX6 <- str_sub(A, 70, 78)
WTPFALG6 <- str_sub(A, 79, 87)
WTPFCNS6 <- str_sub(A, 88, 96)
WTPFSD6 <- str_sub(A, 97, 105)
WTPFMD6 <- str_sub(A, 106, 114)
WTPFHSD6 <- str_sub(A, 115, 123)
WTPFHMD6 <- str_sub(A, 124, 132)
WTPFQX1 <- str_sub(A, 133, 141)
WTPFEX1 <- str_sub(A, 142, 150)
WTPFHX1 <- str_sub(A, 151, 159)
WTPFALG1 <- str_sub(A, 160, 168)
WTPFCNS1 <- str_sub(A, 169, 177)
WTPFSD1 <- str_sub(A, 178, 186)
WTPFMD1 <- str_sub(A, 187, 195)
WTPFHSD1 <- str_sub(A, 196, 204)
WTPFHMD1 <- str_sub(A, 205, 213)
WTPFQX2 <- str_sub(A, 214, 222)
WTPFEX2 <- str_sub(A, 223, 231)
WTPFHX2 <- str_sub(A, 232, 240)
WTPFALG2 <- str_sub(A, 241, 249)
WTPFCNS2 <- str_sub(A, 250, 258)
WTPFSD2 <- str_sub(A, 259, 267)
WTPFMD2 <- str_sub(A, 268, 276)
WTPFHSD2 <- str_sub(A, 277, 285)
WTPFHMD2 <- str_sub(A, 286, 294)
WTPQRP1 <- str_sub(A, 295, 303)
WTPQRP2 <- str_sub(A, 304, 312)
WTPQRP3 <- str_sub(A, 313, 321)
WTPQRP4 <- str_sub(A, 322, 330)
WTPQRP5 <- str_sub(A, 331, 339)
WTPQRP6 <- str_sub(A, 340, 348)
WTPQRP7 <- str_sub(A, 349, 357)
WTPQRP8 <- str_sub(A, 358, 366)
WTPQRP9 <- str_sub(A, 367, 375)
WTPQRP10 <- str_sub(A, 376, 384)
WTPQRP11 <- str_sub(A, 385, 393)
WTPQRP12 <- str_sub(A, 394, 402)
WTPQRP13 <- str_sub(A, 403, 411)
WTPQRP14 <- str_sub(A, 412, 420)
WTPQRP15 <- str_sub(A, 421, 429)
WTPQRP16 <- str_sub(A, 430, 438)
WTPQRP17 <- str_sub(A, 439, 447)
WTPQRP18 <- str_sub(A, 448, 456)
WTPQRP19 <- str_sub(A, 457, 465)
WTPQRP20 <- str_sub(A, 466, 474)
WTPQRP21 <- str_sub(A, 475, 483)
WTPQRP22 <- str_sub(A, 484, 492)
WTPQRP23 <- str_sub(A, 493, 501)
WTPQRP24 <- str_sub(A, 502, 510)
WTPQRP25 <- str_sub(A, 511, 519)
WTPQRP26 <- str_sub(A, 520, 528)
WTPQRP27 <- str_sub(A, 529, 537)
WTPQRP28 <- str_sub(A, 538, 546)
WTPQRP29 <- str_sub(A, 547, 555)
WTPQRP30 <- str_sub(A, 556, 564)
WTPQRP31 <- str_sub(A, 565, 573)
WTPQRP32 <- str_sub(A, 574, 582)
WTPQRP33 <- str_sub(A, 583, 591)
WTPQRP34 <- str_sub(A, 592, 600)
WTPQRP35 <- str_sub(A, 601, 609)
WTPQRP36 <- str_sub(A, 610, 618)
WTPQRP37 <- str_sub(A, 619, 627)
WTPQRP38 <- str_sub(A, 628, 636)
WTPQRP39 <- str_sub(A, 637, 645)
WTPQRP40 <- str_sub(A, 646, 654)
WTPQRP41 <- str_sub(A, 655, 663)
WTPQRP42 <- str_sub(A, 664, 672)
WTPQRP43 <- str_sub(A, 673, 681)
WTPQRP44 <- str_sub(A, 682, 690)
WTPQRP45 <- str_sub(A, 691, 699)
WTPQRP46 <- str_sub(A, 700, 708)
WTPQRP47 <- str_sub(A, 709, 717)
WTPQRP48 <- str_sub(A, 718, 726)
WTPQRP49 <- str_sub(A, 727, 735)
WTPQRP50 <- str_sub(A, 736, 744)
WTPQRP51 <- str_sub(A, 745, 753)
WTPQRP52 <- str_sub(A, 754, 762)
WTPXRP1 <- str_sub(A, 763, 771)
WTPXRP2 <- str_sub(A, 772, 780)
WTPXRP3 <- str_sub(A, 781, 789)
WTPXRP4 <- str_sub(A, 790, 798)
WTPXRP5 <- str_sub(A, 799, 807)
WTPXRP6 <- str_sub(A, 808, 816)
WTPXRP7 <- str_sub(A, 817, 825)
WTPXRP8 <- str_sub(A, 826, 834)
WTPXRP9 <- str_sub(A, 835, 843)
WTPXRP10 <- str_sub(A, 844, 852)
WTPXRP11 <- str_sub(A, 853, 861)
WTPXRP12 <- str_sub(A, 862, 870)
WTPXRP13 <- str_sub(A, 871, 879)
WTPXRP14 <- str_sub(A, 880, 888)
WTPXRP15 <- str_sub(A, 889, 897)
WTPXRP16 <- str_sub(A, 898, 906)
WTPXRP17 <- str_sub(A, 907, 915)
WTPXRP18 <- str_sub(A, 916, 924)
WTPXRP19 <- str_sub(A, 925, 933)
WTPXRP20 <- str_sub(A, 934, 942)
WTPXRP21 <- str_sub(A, 943, 951)
WTPXRP22 <- str_sub(A, 952, 960)
WTPXRP23 <- str_sub(A, 961, 969)
WTPXRP24 <- str_sub(A, 970, 978)
WTPXRP25 <- str_sub(A, 979, 987)
WTPXRP26 <- str_sub(A, 988, 996)
WTPXRP27 <- str_sub(A, 997, 1005)
WTPXRP28 <- str_sub(A, 1006, 1014)
WTPXRP29 <- str_sub(A, 1015, 1023)
WTPXRP30 <- str_sub(A, 1024, 1032)
WTPXRP31 <- str_sub(A, 1033, 1041)
WTPXRP32 <- str_sub(A, 1042, 1050)
WTPXRP33 <- str_sub(A, 1051, 1059)
WTPXRP34 <- str_sub(A, 1060, 1068)
WTPXRP35 <- str_sub(A, 1069, 1077)
WTPXRP36 <- str_sub(A, 1078, 1086)
WTPXRP37 <- str_sub(A, 1087, 1095)
WTPXRP38 <- str_sub(A, 1096, 1104)
WTPXRP39 <- str_sub(A, 1105, 1113)
WTPXRP40 <- str_sub(A, 1114, 1122)
WTPXRP41 <- str_sub(A, 1123, 1131)
WTPXRP42 <- str_sub(A, 1132, 1140)
WTPXRP43 <- str_sub(A, 1141, 1149)
WTPXRP44 <- str_sub(A, 1150, 1158)
WTPXRP45 <- str_sub(A, 1159, 1167)
WTPXRP46 <- str_sub(A, 1168, 1176)
WTPXRP47 <- str_sub(A, 1177, 1185)
WTPXRP48 <- str_sub(A, 1186, 1194)
WTPXRP49 <- str_sub(A, 1195, 1203)
WTPXRP50 <- str_sub(A, 1204, 1212)
WTPXRP51 <- str_sub(A, 1213, 1221)
WTPXRP52 <- str_sub(A, 1222, 1230)
HYAITMO <- str_sub(A, 1231, 1231)
MXPLANG <- str_sub(A, 1232, 1232)
MXPSESSR <- str_sub(A, 1233, 1233)
MXPTIMO <- str_sub(A, 1234, 1235)
MXPTIDW <- str_sub(A, 1236, 1236)
MXPAXTMR <- str_sub(A, 1237, 1240)
HXPSESSR <- str_sub(A, 1241, 1241)
HXPTIMO <- str_sub(A, 1242, 1243)
HXPTIDW <- str_sub(A, 1244, 1244)
HXPAXTMR <- str_sub(A, 1245, 1248)
HFVERS <- str_sub(A, 1249, 1249)
HFINTVR <- str_sub(A, 1250, 1253)
HFLANG <- str_sub(A, 1254, 1254)
HFA6XCR <- str_sub(A, 1255, 1255)
HFA8R <- str_sub(A, 1256, 1257)
HFA12 <- str_sub(A, 1258, 1259)
HFA13 <- str_sub(A, 1260, 1260)
HFB1 <- str_sub(A, 1261, 1261)
HFB2 <- str_sub(A, 1262, 1262)
HFB3 <- str_sub(A, 1263, 1263)
HFB4 <- str_sub(A, 1264, 1264)
HFB5 <- str_sub(A, 1265, 1265)
HFB6 <- str_sub(A, 1266, 1266)
HFB7 <- str_sub(A, 1267, 1267)
HFB8 <- str_sub(A, 1268, 1268)
HFB9 <- str_sub(A, 1269, 1269)
HFB10 <- str_sub(A, 1270, 1270)
HFB11 <- str_sub(A, 1271, 1271)
HFB11A <- str_sub(A, 1272, 1272)
HFB11B <- str_sub(A, 1273, 1273)
HFB11C <- str_sub(A, 1274, 1274)
HFB11D <- str_sub(A, 1275, 1275)
HFB11E <- str_sub(A, 1276, 1276)
HFB12 <- str_sub(A, 1277, 1277)
HFB13 <- str_sub(A, 1278, 1278)
HFB14AB <- str_sub(A, 1279, 1279)
HFB14AC <- str_sub(A, 1280, 1280)
HFB14AD <- str_sub(A, 1281, 1281)
HFB14AE <- str_sub(A, 1282, 1282)
HFB14AF <- str_sub(A, 1283, 1283)
HFB14AG <- str_sub(A, 1284, 1284)
HFB14AI <- str_sub(A, 1285, 1285)
HFB14BA <- str_sub(A, 1286, 1286)
HFB14BB <- str_sub(A, 1287, 1287)
HFB14BC <- str_sub(A, 1288, 1288)
HFB14BD <- str_sub(A, 1289, 1289)
HFB14BE <- str_sub(A, 1290, 1290)
HFB14BF <- str_sub(A, 1291, 1291)
HFB14BG <- str_sub(A, 1292, 1292)
HFB14BH <- str_sub(A, 1293, 1293)
HFB16A <- str_sub(A, 1294, 1295)
HFB16B <- str_sub(A, 1296, 1297)
HFB17 <- str_sub(A, 1298, 1298)
HFC1 <- str_sub(A, 1299, 1299)
HFC2S <- str_sub(A, 1300, 1300)
HFC3S <- str_sub(A, 1301, 1301)
HFC4S <- str_sub(A, 1302, 1302)
HFC5S <- str_sub(A, 1303, 1303)
HFC6A <- str_sub(A, 1304, 1304)
HFC6A1 <- str_sub(A, 1305, 1305)
HFC6B <- str_sub(A, 1306, 1306)
HFC6B1 <- str_sub(A, 1307, 1307)
HFC6C <- str_sub(A, 1308, 1308)
HFC6C1 <- str_sub(A, 1309, 1309)
HFC6D <- str_sub(A, 1310, 1310)
HFC6D1 <- str_sub(A, 1311, 1311)
HFC6E <- str_sub(A, 1312, 1312)
HFC6E1 <- str_sub(A, 1313, 1313)
HFC7S <- str_sub(A, 1314, 1314)
HFC8S <- str_sub(A, 1315, 1315)
HFC9 <- str_sub(A, 1316, 1316)
HFC10 <- str_sub(A, 1317, 1317)
HFC11 <- str_sub(A, 1318, 1318)
HFD1 <- str_sub(A, 1319, 1319)
HFD2 <- str_sub(A, 1320, 1320)
HFD3 <- str_sub(A, 1321, 1321)
HFD4 <- str_sub(A, 1322, 1322)
HFD5 <- str_sub(A, 1323, 1323)
HFD9R <- str_sub(A, 1324, 1325)
HFD10R <- str_sub(A, 1326, 1327)
HFD12 <- str_sub(A, 1328, 1329)
HFE1 <- str_sub(A, 1330, 1330)
HFE2 <- str_sub(A, 1331, 1332)
HFE3 <- str_sub(A, 1333, 1335)
HFE4 <- str_sub(A, 1336, 1336)
HFE5 <- str_sub(A, 1337, 1337)
HFE6 <- str_sub(A, 1338, 1338)
HFE7 <- str_sub(A, 1339, 1339)
HFE8A <- str_sub(A, 1340, 1340)
HFE8B <- str_sub(A, 1341, 1341)
HFE8C <- str_sub(A, 1342, 1342)
HFE8D <- str_sub(A, 1343, 1343)
HFE8E <- str_sub(A, 1344, 1344)
HFE9 <- str_sub(A, 1345, 1345)
HFE10 <- str_sub(A, 1346, 1346)
HFE11 <- str_sub(A, 1347, 1347)
HFE12 <- str_sub(A, 1348, 1349)
HFE13 <- str_sub(A, 1350, 1350)
HFE14 <- str_sub(A, 1351, 1351)
HFE15 <- str_sub(A, 1352, 1352)
HFE16 <- str_sub(A, 1353, 1353)
HFE17 <- str_sub(A, 1354, 1354)
HFE18 <- str_sub(A, 1355, 1355)
HFF1 <- str_sub(A, 1356, 1356)
HFF2R <- str_sub(A, 1357, 1358)
HFF3A <- str_sub(A, 1359, 1361)
HFF3B <- str_sub(A, 1362, 1364)
HFF3C <- str_sub(A, 1365, 1367)
HFF3D <- str_sub(A, 1368, 1370)
HFF3E <- str_sub(A, 1371, 1373)
HFF3F <- str_sub(A, 1374, 1376)
HFF4 <- str_sub(A, 1377, 1377)
HFF5 <- str_sub(A, 1378, 1379)
HFF6A <- str_sub(A, 1380, 1380)
HFF6B <- str_sub(A, 1381, 1381)
HFF6C <- str_sub(A, 1382, 1382)
HFF6D <- str_sub(A, 1383, 1383)
HFF7 <- str_sub(A, 1384, 1384)
HFF8 <- str_sub(A, 1385, 1385)
HFF9 <- str_sub(A, 1386, 1386)
HFF10 <- str_sub(A, 1387, 1387)
HFF11 <- str_sub(A, 1388, 1388)
HFF12A <- str_sub(A, 1389, 1389)
HFF12B <- str_sub(A, 1390, 1390)
HFF13A <- str_sub(A, 1391, 1391)
HFF13B <- str_sub(A, 1392, 1392)
HFF13DA <- str_sub(A, 1393, 1393)
HFF13DB <- str_sub(A, 1394, 1395)
HFF13E <- str_sub(A, 1396, 1396)
HFF14A <- str_sub(A, 1397, 1397)
HFF14B <- str_sub(A, 1398, 1398)
HFF14D <- str_sub(A, 1399, 1399)
HFF15A <- str_sub(A, 1400, 1400)
HFF15B <- str_sub(A, 1401, 1401)
HFF16A <- str_sub(A, 1402, 1402)
HFF16B <- str_sub(A, 1403, 1403)
HFF16D <- str_sub(A, 1404, 1404)
HFF16E <- str_sub(A, 1405, 1405)
HFF17A <- str_sub(A, 1406, 1406)
HFF17B <- str_sub(A, 1407, 1407)
HFF18 <- str_sub(A, 1408, 1408)
HFF19R <- str_sub(A, 1409, 1410)
HFF20R <- str_sub(A, 1411, 1412)
HFHSEQN <- str_sub(A, 1413, 1417)
HFHAGER <- str_sub(A, 1418, 1420)
HFHSEX <- str_sub(A, 1421, 1421)
HFHFIPCR <- str_sub(A, 1422, 1422)
HFHEDUCR <- str_sub(A, 1423, 1424)
HFHEMPL <- str_sub(A, 1425, 1425)
HFHMRST <- str_sub(A, 1426, 1427)
HFHMLSV <- str_sub(A, 1428, 1428)
HFRELR <- str_sub(A, 1429, 1430)
HFAGERR <- str_sub(A, 1431, 1433)
HAVERS <- str_sub(A, 1434, 1434)
HAINTVR <- str_sub(A, 1435, 1438)
HALANG <- str_sub(A, 1439, 1439)
HAA1 <- str_sub(A, 1440, 1440)
HAA2 <- str_sub(A, 1441, 1441)
HAA2A <- str_sub(A, 1442, 1443)
HAA3 <- str_sub(A, 1444, 1444)
HAA4 <- str_sub(A, 1445, 1445)
HAA5 <- str_sub(A, 1446, 1446)
HAA6A <- str_sub(A, 1447, 1447)
HAA6B <- str_sub(A, 1448, 1448)
HAA6C <- str_sub(A, 1449, 1449)
HAA6D <- str_sub(A, 1450, 1450)
HAB1 <- str_sub(A, 1451, 1451)
HAB2 <- str_sub(A, 1452, 1452)
HAB3 <- str_sub(A, 1453, 1453)
HAB4 <- str_sub(A, 1454, 1455)
HAB5 <- str_sub(A, 1456, 1458)
HAB6S <- str_sub(A, 1459, 1462)
HAB7 <- str_sub(A, 1463, 1464)
HAC1A <- str_sub(A, 1465, 1465)
HAC1B <- str_sub(A, 1466, 1466)
HAC1C <- str_sub(A, 1467, 1467)
HAC1D <- str_sub(A, 1468, 1468)
HAC1E <- str_sub(A, 1469, 1469)
HAC1F <- str_sub(A, 1470, 1470)
HAC1G <- str_sub(A, 1471, 1471)
HAC1H <- str_sub(A, 1472, 1472)
HAC1I <- str_sub(A, 1473, 1473)
HAC1J <- str_sub(A, 1474, 1474)
HAC1K <- str_sub(A, 1475, 1475)
HAC1L <- str_sub(A, 1476, 1476)
HAC1M <- str_sub(A, 1477, 1477)
HAC1N <- str_sub(A, 1478, 1478)
HAC1O <- str_sub(A, 1479, 1479)
HAC2E <- str_sub(A, 1480, 1480)
HAC2F <- str_sub(A, 1481, 1481)
HAC2H <- str_sub(A, 1482, 1482)
HAC2J <- str_sub(A, 1483, 1483)
HAC2K <- str_sub(A, 1484, 1484)
HAC3AR <- str_sub(A, 1485, 1487)
HAC3CR <- str_sub(A, 1488, 1490)
HAC3DR <- str_sub(A, 1491, 1493)
HAC3ER <- str_sub(A, 1494, 1496)
HAC3FR <- str_sub(A, 1497, 1499)
HAC3GR <- str_sub(A, 1500, 1502)
HAC3HR <- str_sub(A, 1503, 1505)
HAC3IR <- str_sub(A, 1506, 1508)
HAC3JR <- str_sub(A, 1509, 1511)
HAC3KR <- str_sub(A, 1512, 1514)
HAC3LR <- str_sub(A, 1515, 1517)
HAC3MR <- str_sub(A, 1518, 1520)
HAC3NR <- str_sub(A, 1521, 1523)
HAC3OR <- str_sub(A, 1524, 1526)
HAC3OS <- str_sub(A, 1527, 1528)
HAC4A <- str_sub(A, 1529, 1529)
HAC4B <- str_sub(A, 1530, 1530)
HAC5A1 <- str_sub(A, 1531, 1531)
HAC5A2 <- str_sub(A, 1532, 1532)
HAC5A3 <- str_sub(A, 1533, 1533)
HAC5A4 <- str_sub(A, 1534, 1534)
HAC5A5 <- str_sub(A, 1535, 1535)
HAC5A6 <- str_sub(A, 1536, 1536)
HAC5A7 <- str_sub(A, 1537, 1537)
HAC5A8 <- str_sub(A, 1538, 1538)
HAC5A9 <- str_sub(A, 1539, 1539)
HAC5A10 <- str_sub(A, 1540, 1540)
HAC5A11 <- str_sub(A, 1541, 1541)
HAC5A12 <- str_sub(A, 1542, 1542)
HAC5B1 <- str_sub(A, 1543, 1543)
HAC5B2 <- str_sub(A, 1544, 1544)
HAC5B3 <- str_sub(A, 1545, 1545)
HAC5B4 <- str_sub(A, 1546, 1546)
HAC5B5 <- str_sub(A, 1547, 1547)
HAC5B6 <- str_sub(A, 1548, 1548)
HAC5B7 <- str_sub(A, 1549, 1549)
HAC5B8 <- str_sub(A, 1550, 1550)
HAC5B9 <- str_sub(A, 1551, 1551)
HAC5B10 <- str_sub(A, 1552, 1552)
HAC5B11 <- str_sub(A, 1553, 1553)
HAC5B12 <- str_sub(A, 1554, 1554)
HAC6 <- str_sub(A, 1555, 1555)
HAC7 <- str_sub(A, 1556, 1556)
HAC7A <- str_sub(A, 1557, 1557)
HAC8 <- str_sub(A, 1558, 1560)
HAD1 <- str_sub(A, 1561, 1561)
HAD2 <- str_sub(A, 1562, 1562)
HAD3 <- str_sub(A, 1563, 1563)
HAD4 <- str_sub(A, 1564, 1564)
HAD5R <- str_sub(A, 1565, 1567)
HAD6 <- str_sub(A, 1568, 1568)
HAD7S <- str_sub(A, 1569, 1570)
HAD8 <- str_sub(A, 1571, 1573)
HAD9S <- str_sub(A, 1574, 1577)
HAD10 <- str_sub(A, 1578, 1578)
HAD11AS <- str_sub(A, 1579, 1581)
HAD11BS <- str_sub(A, 1582, 1584)
HAD12S <- str_sub(A, 1585, 1589)
HAD13S <- str_sub(A, 1590, 1594)
HAD14 <- str_sub(A, 1595, 1595)
HAD15 <- str_sub(A, 1596, 1596)
HAE1 <- str_sub(A, 1597, 1597)
HAE2 <- str_sub(A, 1598, 1598)
HAE3 <- str_sub(A, 1599, 1599)
HAE4A <- str_sub(A, 1600, 1600)
HAE4B <- str_sub(A, 1601, 1601)
HAE4C <- str_sub(A, 1602, 1602)
HAE4D <- str_sub(A, 1603, 1603)
HAE4D1 <- str_sub(A, 1604, 1604)
HAE4D2 <- str_sub(A, 1605, 1605)
HAE4D3 <- str_sub(A, 1606, 1606)
HAE4D4 <- str_sub(A, 1607, 1607)
HAE4D5 <- str_sub(A, 1608, 1608)
HAE4D6 <- str_sub(A, 1609, 1609)
HAE5A <- str_sub(A, 1610, 1610)
HAE5B <- str_sub(A, 1611, 1611)
HAE5C <- str_sub(A, 1612, 1612)
HAE5D1 <- str_sub(A, 1613, 1613)
HAE5D2 <- str_sub(A, 1614, 1614)
HAE5D3 <- str_sub(A, 1615, 1615)
HAE5D4 <- str_sub(A, 1616, 1616)
HAE5D5 <- str_sub(A, 1617, 1617)
HAE5D6 <- str_sub(A, 1618, 1618)
HAE6 <- str_sub(A, 1619, 1619)
HAE7 <- str_sub(A, 1620, 1620)
HAE8A <- str_sub(A, 1621, 1621)
HAE8B <- str_sub(A, 1622, 1622)
HAE8C <- str_sub(A, 1623, 1623)
HAE8D <- str_sub(A, 1624, 1624)
HAE9A <- str_sub(A, 1625, 1625)
HAE9B <- str_sub(A, 1626, 1626)
HAE9C <- str_sub(A, 1627, 1627)
HAE9D <- str_sub(A, 1628, 1628)
HAE10 <- str_sub(A, 1629, 1629)
HAE11A <- str_sub(A, 1630, 1630)
HAE11B <- str_sub(A, 1631, 1631)
HAE11C <- str_sub(A, 1632, 1632)
HAF1 <- str_sub(A, 1633, 1633)
HAF2 <- str_sub(A, 1634, 1634)
HAF3 <- str_sub(A, 1635, 1635)
HAF4 <- str_sub(A, 1636, 1636)
HAF5 <- str_sub(A, 1637, 1637)
HAF6 <- str_sub(A, 1638, 1638)
HAF7A <- str_sub(A, 1639, 1639)
HAF7B <- str_sub(A, 1640, 1640)
HAF7C <- str_sub(A, 1641, 1641)
HAF7D <- str_sub(A, 1642, 1642)
HAF7E <- str_sub(A, 1643, 1643)
HAF7F <- str_sub(A, 1644, 1644)
HAF7G <- str_sub(A, 1645, 1645)
HAF7H <- str_sub(A, 1646, 1646)
HAF9 <- str_sub(A, 1647, 1647)
HAF10 <- str_sub(A, 1648, 1648)
HAF11 <- str_sub(A, 1649, 1650)
HAF12R <- str_sub(A, 1651, 1653)
HAF13R <- str_sub(A, 1654, 1656)
HAF14 <- str_sub(A, 1657, 1657)
HAF15 <- str_sub(A, 1658, 1658)
HAF16 <- str_sub(A, 1659, 1659)
HAF17 <- str_sub(A, 1660, 1660)
HAF18 <- str_sub(A, 1661, 1661)
HAF19 <- str_sub(A, 1662, 1662)
HAF20 <- str_sub(A, 1663, 1663)
HAF21 <- str_sub(A, 1664, 1664)
HAF22 <- str_sub(A, 1665, 1665)
HAF23 <- str_sub(A, 1666, 1666)
HAF24 <- str_sub(A, 1667, 1667)
HAF25 <- str_sub(A, 1668, 1668)
HAF26 <- str_sub(A, 1669, 1669)
HAF27 <- str_sub(A, 1670, 1670)
HAG1 <- str_sub(A, 1671, 1671)
HAG2 <- str_sub(A, 1672, 1672)
HAG3 <- str_sub(A, 1673, 1673)
HAG4A <- str_sub(A, 1674, 1674)
HAG4B <- str_sub(A, 1675, 1675)
HAG4C <- str_sub(A, 1676, 1676)
HAG5A <- str_sub(A, 1677, 1677)
HAG5B <- str_sub(A, 1678, 1678)
HAG5C <- str_sub(A, 1679, 1679)
HAG6A <- str_sub(A, 1680, 1681)
HAG6B <- str_sub(A, 1682, 1683)
HAG6C <- str_sub(A, 1684, 1685)
HAG7 <- str_sub(A, 1686, 1686)
HAG8A <- str_sub(A, 1687, 1687)
HAG8B <- str_sub(A, 1688, 1688)
HAG8C <- str_sub(A, 1689, 1689)
HAG8D <- str_sub(A, 1690, 1690)
HAG8E <- str_sub(A, 1691, 1691)
HAG8F <- str_sub(A, 1692, 1692)
HAG9AR <- str_sub(A, 1693, 1695)
HAG9BR <- str_sub(A, 1696, 1698)
HAG9CR <- str_sub(A, 1699, 1701)
HAG9DR <- str_sub(A, 1702, 1704)
HAG9ER <- str_sub(A, 1705, 1707)
HAG9FR <- str_sub(A, 1708, 1710)
HAG10A <- str_sub(A, 1711, 1711)
HAG10B <- str_sub(A, 1712, 1712)
HAG10C <- str_sub(A, 1713, 1713)
HAG10D <- str_sub(A, 1714, 1714)
HAG10E <- str_sub(A, 1715, 1715)
HAG10F <- str_sub(A, 1716, 1716)
HAG11 <- str_sub(A, 1717, 1717)
HAG12 <- str_sub(A, 1718, 1718)
HAG13 <- str_sub(A, 1719, 1719)
HAG14 <- str_sub(A, 1720, 1721)
HAG15 <- str_sub(A, 1722, 1722)
HAG16 <- str_sub(A, 1723, 1723)
HAG17A <- str_sub(A, 1724, 1724)
HAG17B <- str_sub(A, 1725, 1725)
HAG17C <- str_sub(A, 1726, 1726)
HAG17D <- str_sub(A, 1727, 1727)
HAG17E <- str_sub(A, 1728, 1728)
HAG17F <- str_sub(A, 1729, 1729)
HAG17G <- str_sub(A, 1730, 1730)
HAG17H <- str_sub(A, 1731, 1731)
HAG17I <- str_sub(A, 1732, 1732)
HAG17J <- str_sub(A, 1733, 1733)
HAG17K <- str_sub(A, 1734, 1734)
HAG17L <- str_sub(A, 1735, 1735)
HAG17M <- str_sub(A, 1736, 1736)
HAG17N <- str_sub(A, 1737, 1737)
HAG17O <- str_sub(A, 1738, 1738)
HAG17FF <- str_sub(A, 1739, 1739)
HAG17P <- str_sub(A, 1740, 1740)
HAG17Q <- str_sub(A, 1741, 1741)
HAG17R <- str_sub(A, 1742, 1742)
HAG17S <- str_sub(A, 1743, 1743)
HAG17T <- str_sub(A, 1744, 1744)
HAG17U <- str_sub(A, 1745, 1745)
HAG17V <- str_sub(A, 1746, 1746)
HAG17W <- str_sub(A, 1747, 1747)
HAG17X <- str_sub(A, 1748, 1748)
HAG17Y <- str_sub(A, 1749, 1749)
HAG17Z <- str_sub(A, 1750, 1750)
HAG17AA <- str_sub(A, 1751, 1751)
HAG17BB <- str_sub(A, 1752, 1752)
HAG17CC <- str_sub(A, 1753, 1753)
HAG17DD <- str_sub(A, 1754, 1754)
HAG17EE <- str_sub(A, 1755, 1755)
HAG18 <- str_sub(A, 1756, 1756)
HAG19A <- str_sub(A, 1757, 1757)
HAG19B <- str_sub(A, 1758, 1758)
HAG19C <- str_sub(A, 1759, 1759)
HAG19D <- str_sub(A, 1760, 1760)
HAG19E <- str_sub(A, 1761, 1761)
HAG19F <- str_sub(A, 1762, 1762)
HAG19G <- str_sub(A, 1763, 1763)
HAG19H <- str_sub(A, 1764, 1764)
HAG19I <- str_sub(A, 1765, 1765)
HAG19J <- str_sub(A, 1766, 1766)
HAG19K <- str_sub(A, 1767, 1767)
HAG19L <- str_sub(A, 1768, 1768)
HAG19M <- str_sub(A, 1769, 1769)
HAG19N <- str_sub(A, 1770, 1770)
HAG19O <- str_sub(A, 1771, 1771)
HAG19FF <- str_sub(A, 1772, 1772)
HAG19P <- str_sub(A, 1773, 1773)
HAG19Q <- str_sub(A, 1774, 1774)
HAG19R <- str_sub(A, 1775, 1775)
HAG19S <- str_sub(A, 1776, 1776)
HAG19T <- str_sub(A, 1777, 1777)
HAG19U <- str_sub(A, 1778, 1778)
HAG19V <- str_sub(A, 1779, 1779)
HAG19W <- str_sub(A, 1780, 1780)
HAG19X <- str_sub(A, 1781, 1781)
HAG19Y <- str_sub(A, 1782, 1782)
HAG19Z <- str_sub(A, 1783, 1783)
HAG19AA <- str_sub(A, 1784, 1784)
HAG19BB <- str_sub(A, 1785, 1785)
HAG19CC <- str_sub(A, 1786, 1786)
HAG19DD <- str_sub(A, 1787, 1787)
HAG19EE <- str_sub(A, 1788, 1788)
HAG20 <- str_sub(A, 1789, 1789)
HAG21 <- str_sub(A, 1790, 1790)
HAG22 <- str_sub(A, 1791, 1791)
HAG23 <- str_sub(A, 1792, 1792)
HAG24 <- str_sub(A, 1793, 1793)
HAG25 <- str_sub(A, 1794, 1794)
HAG26 <- str_sub(A, 1795, 1795)
HAG27 <- str_sub(A, 1796, 1796)
HAG28 <- str_sub(A, 1797, 1797)
HAG29 <- str_sub(A, 1798, 1798)
HAG30 <- str_sub(A, 1799, 1799)
HAG31 <- str_sub(A, 1800, 1800)
HAG32 <- str_sub(A, 1801, 1801)
HAG33 <- str_sub(A, 1802, 1802)
HAG34 <- str_sub(A, 1803, 1803)
HAH1 <- str_sub(A, 1804, 1804)
HAH2 <- str_sub(A, 1805, 1805)
HAH3 <- str_sub(A, 1806, 1806)
HAH4 <- str_sub(A, 1807, 1807)
HAH5 <- str_sub(A, 1808, 1808)
HAH6 <- str_sub(A, 1809, 1809)
HAH7 <- str_sub(A, 1810, 1810)
HAH8 <- str_sub(A, 1811, 1811)
HAH9 <- str_sub(A, 1812, 1812)
HAH10 <- str_sub(A, 1813, 1813)
HAH11 <- str_sub(A, 1814, 1814)
HAH12 <- str_sub(A, 1815, 1815)
HAH13 <- str_sub(A, 1816, 1816)
HAH14 <- str_sub(A, 1817, 1817)
HAH15 <- str_sub(A, 1818, 1818)
HAH16 <- str_sub(A, 1819, 1819)
HAH17 <- str_sub(A, 1820, 1820)
HAJ0 <- str_sub(A, 1821, 1821)
HAJ1 <- str_sub(A, 1822, 1822)
HAJ2A <- str_sub(A, 1823, 1823)
HAJ2B <- str_sub(A, 1824, 1824)
HAJ2C <- str_sub(A, 1825, 1825)
HAJ3S <- str_sub(A, 1826, 1831)
HAJ4 <- str_sub(A, 1832, 1834)
HAJ5 <- str_sub(A, 1835, 1835)
HAJ6 <- str_sub(A, 1836, 1836)
HAJ7 <- str_sub(A, 1837, 1837)
HAJ8 <- str_sub(A, 1838, 1839)
HAJ9 <- str_sub(A, 1840, 1840)
HAJ10 <- str_sub(A, 1841, 1842)
HAJ11 <- str_sub(A, 1843, 1843)
HAJ12 <- str_sub(A, 1844)
HAJ13 <- str_sub(A, 1845, 1847)
HAJ14 <- str_sub(A, 1848, 1848)
HAJ15 <- str_sub(A, 1849, 1849)
HAJ16 <- str_sub(A, 1850, 1850)
HAJ17 <- str_sub(A, 1851, 1851)
HAJ18R <- str_sub(A, 1852, 1854)
HAK1 <- str_sub(A, 1855, 1855)
HAK2 <- str_sub(A, 1856, 1857)
HAK3A <- str_sub(A, 1858, 1858)
HAK3A1 <- str_sub(A, 1859, 1861)
HAK3B <- str_sub(A, 1862, 1862)
HAK3B1R <- str_sub(A, 1863, 1865)
HAK3C <- str_sub(A, 1866, 1866)
HAK3C1R <- str_sub(A, 1867, 1869)
HAK4 <- str_sub(A, 1870, 1870)
HAK5 <- str_sub(A, 1871, 1872)
HAK6 <- str_sub(A, 1873, 1873)
HAK7 <- str_sub(A, 1874, 1874)
HAK8 <- str_sub(A, 1875, 1877)
HAK9 <- str_sub(A, 1878, 1878)
HAK10 <- str_sub(A, 1879, 1879)
HAK11 <- str_sub(A, 1880, 1880)
HAK12 <- str_sub(A, 1881, 1881)
HAK13 <- str_sub(A, 1882, 1882)
HAK14 <- str_sub(A, 1883, 1883)
HAL1 <- str_sub(A, 1884, 1884)
HAL2 <- str_sub(A, 1885, 1887)
HAL3 <- str_sub(A, 1888, 1888)
HAL4 <- str_sub(A, 1889, 1891)
HAL5 <- str_sub(A, 1892, 1892)
HAL6 <- str_sub(A, 1893, 1893)
HAL7 <- str_sub(A, 1894, 1896)
HAL8 <- str_sub(A, 1897, 1899)
HAL9 <- str_sub(A, 1900, 1902)
HAL10 <- str_sub(A, 1903, 1903)
HAL11A <- str_sub(A, 1904, 1904)
HAL11B <- str_sub(A, 1905, 1905)
HAL12 <- str_sub(A, 1906, 1908)
HAL13 <- str_sub(A, 1909, 1909)
HAL14A <- str_sub(A, 1910, 1910)
HAL14B <- str_sub(A, 1911, 1911)
HAL14C <- str_sub(A, 1912, 1912)
HAL14D <- str_sub(A, 1913, 1913)
HAL14E <- str_sub(A, 1914, 1914)
HAL15A <- str_sub(A, 1915, 1915)
HAL15B <- str_sub(A, 1916, 1916)
HAL15C <- str_sub(A, 1917, 1917)
HAL15D <- str_sub(A, 1918, 1918)
HAL15E <- str_sub(A, 1919, 1919)
HAL15F <- str_sub(A, 1920, 1920)
HAL15G <- str_sub(A, 1921, 1921)
HAL15H <- str_sub(A, 1922, 1922)
HAL15I <- str_sub(A, 1923, 1923)
HAL15J <- str_sub(A, 1924, 1924)
HAL15K <- str_sub(A, 1925, 1925)
HAL15L <- str_sub(A, 1926, 1926)
HAL15M <- str_sub(A, 1927, 1927)
HAL16A <- str_sub(A, 1928, 1928)
HAL16B <- str_sub(A, 1929, 1929)
HAL17 <- str_sub(A, 1930, 1930)
HAL18 <- str_sub(A, 1931, 1931)
HAL19A <- str_sub(A, 1932, 1932)
HAL19B <- str_sub(A, 1933, 1933)
HAL19C <- str_sub(A, 1934, 1934)
HAL20A <- str_sub(A, 1935, 1937)
HAL20B <- str_sub(A, 1938, 1940)
HAL20C <- str_sub(A, 1941, 1943)
HAM1 <- str_sub(A, 1944, 1944)
HAM2 <- str_sub(A, 1945, 1945)
HAM3 <- str_sub(A, 1946, 1946)
HAM4 <- str_sub(A, 1947, 1947)
HAM5S <- str_sub(A, 1948, 1950)
HAM6S <- str_sub(A, 1951, 1953)
HAM7 <- str_sub(A, 1954, 1954)
HAM8S <- str_sub(A, 1955, 1957)
HAM9S <- str_sub(A, 1958, 1960)
HAM10S <- str_sub(A, 1961, 1963)
HAM11 <- str_sub(A, 1964, 1964)
HAM12 <- str_sub(A, 1965, 1965)
HAM13 <- str_sub(A, 1966, 1966)
HAM14 <- str_sub(A, 1967, 1967)
HAM15A <- str_sub(A, 1968, 1968)
HAM15B <- str_sub(A, 1969, 1969)
HAM15C <- str_sub(A, 1970, 1970)
HAM15D <- str_sub(A, 1971, 1971)
HAM15E <- str_sub(A, 1972, 1972)
HAM15F <- str_sub(A, 1973, 1973)
HAM15G <- str_sub(A, 1974, 1974)
HAM15H <- str_sub(A, 1975, 1975)
HAM15K <- str_sub(A, 1976, 1976)
HAM15L <- str_sub(A, 1977, 1977)
HAM15M <- str_sub(A, 1978, 1978)
HAM15N <- str_sub(A, 1979, 1979)
HAM15O <- str_sub(A, 1980, 1980)
HAM15P <- str_sub(A, 1981, 1981)
HAM15Q <- str_sub(A, 1982, 1982)
HAM15R <- str_sub(A, 1983, 1983)
HAM15S <- str_sub(A, 1984, 1984)
HAM15T <- str_sub(A, 1985, 1985)
HAM15U <- str_sub(A, 1986, 1986)
HAM15V <- str_sub(A, 1987, 1987)
HAM15W <- str_sub(A, 1988, 1988)
HAM15X <- str_sub(A, 1989, 1989)
HAM15Y <- str_sub(A, 1990, 1990)
HAM15Z <- str_sub(A, 1991, 1991)
HAN1AS <- str_sub(A, 1992, 1994)
HAN1BS <- str_sub(A, 1995, 1998)
HAN1C <- str_sub(A, 1999, 1999)
HAN1D <- str_sub(A, 2000, 2001)
HAN1ES <- str_sub(A, 2002, 2004)
HAN1FS <- str_sub(A, 2005, 2007)
HAN1GS <- str_sub(A, 2008, 2010)
HAN1HS <- str_sub(A, 2011, 2013)
HAN1IS <- str_sub(A, 2014, 2016)
HAN2AS <- str_sub(A, 2017, 2019)
HAN2BS <- str_sub(A, 2020, 2022)
HAN2CS <- str_sub(A, 2023, 2026)
HAN2DS <- str_sub(A, 2027, 2029)
HAN2ES <- str_sub(A, 2030, 2032)
HAN2FS <- str_sub(A, 2033, 2035)
HAN2GS <- str_sub(A, 2036, 2038)
HAN2HS <- str_sub(A, 2039, 2041)
HAN2IS <- str_sub(A, 2042, 2044)
HAN2JS <- str_sub(A, 2045, 2047)
HAN3AS <- str_sub(A, 2048, 2050)
HAN3BS <- str_sub(A, 2051, 2053)
HAN3CS <- str_sub(A, 2054, 2056)
HAN3DS <- str_sub(A, 2057, 2059)
HAN3ES <- str_sub(A, 2060, 2062)
HAN3FS <- str_sub(A, 2063, 2065)
HAN4AS <- str_sub(A, 2066, 2068)
HAN4BS <- str_sub(A, 2069, 2071)
HAN4CS <- str_sub(A, 2072, 2074)
HAN4DS <- str_sub(A, 2075, 2077)
HAN4ES <- str_sub(A, 2078, 2080)
HAN4FS <- str_sub(A, 2081, 2083)
HAN4GS <- str_sub(A, 2084, 2086)
HAN4HS <- str_sub(A, 2087, 2089)
HAN4IS <- str_sub(A, 2090, 2092)
HAN4JS <- str_sub(A, 2093, 2095)
HAN4KS <- str_sub(A, 2096, 2098)
HAN4LS <- str_sub(A, 2099, 2101)
HAN5AS <- str_sub(A, 2102, 2104)
HAN5BS <- str_sub(A, 2105, 2107)
HAN5CS <- str_sub(A, 2108, 2110)
HAN5DS <- str_sub(A, 2111, 2113)
HAN5ES <- str_sub(A, 2114, 2116)
HAN5FS <- str_sub(A, 2117, 2119)
HAN5GS <- str_sub(A, 2120, 2122)
HAN5HS <- str_sub(A, 2123, 2125)
HAN5IS <- str_sub(A, 2126, 2128)
HAN5JS <- str_sub(A, 2129, 2131)
HAN5KS <- str_sub(A, 2132, 2134)
HAN5LS <- str_sub(A, 2135, 2137)
HAN6AS <- str_sub(A, 2138, 2141)
HAN6BS <- str_sub(A, 2142, 2144)
HAN6CS <- str_sub(A, 2145, 2148)
HAN6DS <- str_sub(A, 2149, 2151)
HAN6ES <- str_sub(A, 2152, 2155)
HAN6FS <- str_sub(A, 2156, 2159)
HAN6GS <- str_sub(A, 2160, 2163)
HAN6HS <- str_sub(A, 2164, 2166)
HAN6IS <- str_sub(A, 2167, 2169)
HAN6JS <- str_sub(A, 2170, 2172)
HAN7AS <- str_sub(A, 2173, 2175)
HAN7BS <- str_sub(A, 2176, 2178)
HAN7CS <- str_sub(A, 2179, 2181)
HAN8 <- str_sub(A, 2182, 2182)
HAN8ACD <- str_sub(A, 2183, 2184)
HAN8AS <- str_sub(A, 2185, 2188)
HAN8BCD <- str_sub(A, 2189, 2190)
HAN8BS <- str_sub(A, 2191, 2194)
HAN8CCD <- str_sub(A, 2195, 2196)
HAN8CS <- str_sub(A, 2197, 2199)
HAN8DCD <- str_sub(A, 2200, 2201)
HAN8DS <- str_sub(A, 2202, 2204)
HAN8ECD <- str_sub(A, 2205, 2206)
HAN8ES <- str_sub(A, 2207, 2209)
HAN8FCD <- str_sub(A, 2210, 2211)
HAN8FS <- str_sub(A, 2212, 2214)
HAN9 <- str_sub(A, 2215, 2215)
HAN10A <- str_sub(A, 2216, 2216)
HAN10B <- str_sub(A, 2217, 2217)
HAN10C <- str_sub(A, 2218, 2218)
HAN10D <- str_sub(A, 2219, 2219)
HAN10E <- str_sub(A, 2220, 2220)
HAP1 <- str_sub(A, 2221, 2221)
HAP1A <- str_sub(A, 2222, 2222)
HAP2 <- str_sub(A, 2223, 2223)
HAP3 <- str_sub(A, 2224, 2224)
HAP4 <- str_sub(A, 2225, 2225)
HAP5 <- str_sub(A, 2226, 2226)
HAP6 <- str_sub(A, 2227, 2227)
HAP7 <- str_sub(A, 2228, 2228)
HAP8 <- str_sub(A, 2229, 2229)
HAP9 <- str_sub(A, 2230, 2230)
HAP10 <- str_sub(A, 2231, 2231)
HAP10A <- str_sub(A, 2232, 2232)
HAP11 <- str_sub(A, 2233, 2233)
HAP12 <- str_sub(A, 2234, 2234)
HAP13 <- str_sub(A, 2235, 2235)
HAP14 <- str_sub(A, 2236, 2236)
HAP15 <- str_sub(A, 2237, 2237)
HAP16 <- str_sub(A, 2238, 2238)
HAP17A1 <- str_sub(A, 2239, 2239)
HAP17A2 <- str_sub(A, 2240, 2240)
HAP17A3 <- str_sub(A, 2241, 2241)
HAP17B <- str_sub(A, 2242, 2242)
HAP18A <- str_sub(A, 2243, 2244)
HAP18B <- str_sub(A, 2245, 2246)
HAP18C <- str_sub(A, 2247, 2248)
HAP18D <- str_sub(A, 2249, 2250)
HAP18E <- str_sub(A, 2251, 2252)
HAP19A <- str_sub(A, 2253, 2253)
HAP19B <- str_sub(A, 2254, 2254)
HAP19C <- str_sub(A, 2255, 2255)
HAQ1 <- str_sub(A, 2256, 2257)
HAQ2A <- str_sub(A, 2258, 2258)
HAQ2B <- str_sub(A, 2259, 2259)
HAQ2C <- str_sub(A, 2260, 2260)
HAQ2D <- str_sub(A, 2261, 2261)
HAQ2E <- str_sub(A, 2262, 2262)
HAQ2F <- str_sub(A, 2263, 2263)
HAQ2G <- str_sub(A, 2264, 2264)
HAQ2I <- str_sub(A, 2265, 2265)
HAQ2K <- str_sub(A, 2266, 2266)
HAQ2L <- str_sub(A, 2267, 2267)
HAQ3S <- str_sub(A, 2268, 2272)
HAQ4 <- str_sub(A, 2273, 2274)
HAQ5 <- str_sub(A, 2275, 2275)
HAQ6 <- str_sub(A, 2276, 2276)
HAQ7 <- str_sub(A, 2277, 2277)
HAQ8 <- str_sub(A, 2278, 2278)
HAQ9 <- str_sub(A, 2279, 2280)
HAR1 <- str_sub(A, 2281, 2281)
HAR2 <- str_sub(A, 2282, 2284)
HAR3 <- str_sub(A, 2285, 2285)
HAR4S <- str_sub(A, 2286, 2288)
HAR5 <- str_sub(A, 2289, 2291)
HAR6 <- str_sub(A, 2292, 2292)
HAR7S <- str_sub(A, 2293, 2296)
HAR8 <- str_sub(A, 2297, 2299)
HAR9 <- str_sub(A, 2300, 2300)
HAR10 <- str_sub(A, 2301, 2303)
HAR11R <- str_sub(A, 2304, 2306)
HAR12S <- str_sub(A, 2307, 2309)
HAR13 <- str_sub(A, 2310, 2310)
HAR14 <- str_sub(A, 2311, 2311)
HAR15 <- str_sub(A, 2312, 2314)
HAR16 <- str_sub(A, 2315, 2315)
HAR17 <- str_sub(A, 2316, 2316)
HAR18AS <- str_sub(A, 2317, 2319)
HAR18BS <- str_sub(A, 2320, 2322)
HAR19A <- str_sub(A, 2323, 2323)
HAR19B <- str_sub(A, 2324, 2324)
HAR20R <- str_sub(A, 2325, 2327)
HAR21 <- str_sub(A, 2328, 2328)
HAR22 <- str_sub(A, 2329, 2329)
HAR23 <- str_sub(A, 2330, 2330)
HAR24 <- str_sub(A, 2331, 2331)
HAR25 <- str_sub(A, 2332, 2333)
HAR26 <- str_sub(A, 2334, 2334)
HAR27 <- str_sub(A, 2335, 2335)
HAR28 <- str_sub(A, 2336, 2337)
HAS1 <- str_sub(A, 2338, 2338)
HAS2 <- str_sub(A, 2339, 2339)
HAS3 <- str_sub(A, 2340, 2340)
HAS4 <- str_sub(A, 2341, 2341)
HAS5 <- str_sub(A, 2342, 2342)
HAS8R <- str_sub(A, 2343, 2344)
HAS9R <- str_sub(A, 2345, 2346)
HAS11 <- str_sub(A, 2347, 2348)
HAS12S <- str_sub(A, 2349, 2352)
HAS13 <- str_sub(A, 2353, 2353)
HAS14 <- str_sub(A, 2354, 2355)
HAS15 <- str_sub(A, 2356, 2356)
HAS16A <- str_sub(A, 2357, 2357)
HAS16B <- str_sub(A, 2358, 2358)
HAS16C <- str_sub(A, 2359, 2359)
HAS16D <- str_sub(A, 2360, 2360)
HAS17 <- str_sub(A, 2361, 2361)
HAS17R <- str_sub(A, 2362, 2363)
HAS18 <- str_sub(A, 2364, 2366)
HAS19 <- str_sub(A, 2367, 2367)
HAS19R <- str_sub(A, 2368, 2369)
HAS21 <- str_sub(A, 2370, 2370)
HAS22 <- str_sub(A, 2371, 2372)
HAS23 <- str_sub(A, 2373, 2373)
HAS24 <- str_sub(A, 2374, 2374)
HAS25 <- str_sub(A, 2375, 2375)
HAS26 <- str_sub(A, 2376, 2376)
HAS27A <- str_sub(A, 2377, 2377)
HAS27B <- str_sub(A, 2378, 2378)
HAS27C <- str_sub(A, 2379, 2379)
HAS27D <- str_sub(A, 2380, 2380)
HAS27E <- str_sub(A, 2381, 2381)
HAS27F <- str_sub(A, 2382, 2382)
HAS27G <- str_sub(A, 2383, 2383)
HAS27H <- str_sub(A, 2384, 2384)
HAS27HCD <- str_sub(A, 2385, 2385)
HAS28 <- str_sub(A, 2386, 2386)
HAS29 <- str_sub(A, 2387, 2388)
HAT1S <- str_sub(A, 2389, 2392)
HAT1MET <- str_sub(A, 2393, 2395)
HAT2 <- str_sub(A, 2396, 2396)
HAT2MET <- str_sub(A, 2397, 2397)
HAT3S <- str_sub(A, 2398, 2401)
HAT4 <- str_sub(A, 2402, 2402)
HAT4MET <- str_sub(A, 2403, 2403)
HAT5S <- str_sub(A, 2404, 2407)
HAT6 <- str_sub(A, 2408, 2408)
HAT6MET <- str_sub(A, 2409, 2409)
HAT7S <- str_sub(A, 2410, 2413)
HAT8 <- str_sub(A, 2414, 2414)
HAT8MET <- str_sub(A, 2415, 2415)
HAT9S <- str_sub(A, 2416, 2419)
HAT10 <- str_sub(A, 2420, 2420)
HAT10MET <- str_sub(A, 2421, 2423)
HAT11S <- str_sub(A, 2424, 2427)
HAT12 <- str_sub(A, 2428, 2428)
HAT12MET <- str_sub(A, 2429, 2431)
HAT13S <- str_sub(A, 2432, 2435)
HAT14 <- str_sub(A, 2436, 2436)
HAT14MET <- str_sub(A, 2437, 2437)
HAT15S <- str_sub(A, 2438, 2441)
HAT16 <- str_sub(A, 2442, 2442)
HAT16MET <- str_sub(A, 2443, 2443)
HAT17S <- str_sub(A, 2444, 2447)
HAT18 <- str_sub(A, 2448, 2448)
HAT19CD <- str_sub(A, 2449, 2453)
HAT19MET <- str_sub(A, 2454, 2457)
HAT20S <- str_sub(A, 2458, 2461)
HAT21CD <- str_sub(A, 2462, 2466)
HAT21MET <- str_sub(A, 2467, 2469)
HAT22S <- str_sub(A, 2470, 2473)
HAT23CD <- str_sub(A, 2474, 2478)
HAT23MET <- str_sub(A, 2479, 2481)
HAT24S <- str_sub(A, 2482, 2485)
HAT25CD <- str_sub(A, 2486, 2490)
HAT25MET <- str_sub(A, 2491, 2493)
HAT26S <- str_sub(A, 2494, 2497)
HAT27 <- str_sub(A, 2498, 2498)
HAT28 <- str_sub(A, 2499, 2499)
HAT29 <- str_sub(A, 2500, 2500)
HAT30 <- str_sub(A, 2501, 2501)
HAV1S <- str_sub(A, 2502, 2505)
HAV2S <- str_sub(A, 2506, 2510)
HAV3S <- str_sub(A, 2511, 2515)
HAV4S <- str_sub(A, 2516, 2519)
HAV5 <- str_sub(A, 2520, 2520)
HAV6S <- str_sub(A, 2521, 2524)
HAV7R <- str_sub(A, 2525, 2528)
HAV8 <- str_sub(A, 2529, 2530)
HAV9 <- str_sub(A, 2531, 2531)
HAV10R <- str_sub(A, 2532, 2532)
HAV11 <- str_sub(A, 2533, 2534)
HAV12R <- str_sub(A, 2535, 2535)
HAV13R <- str_sub(A, 2536, 2538)
HAX1A <- str_sub(A, 2539, 2539)
HAX1B <- str_sub(A, 2540, 2540)
HAX1C <- str_sub(A, 2541, 2541)
HAX2A <- str_sub(A, 2542, 2543)
HAX2B <- str_sub(A, 2544, 2545)
HAX2C <- str_sub(A, 2546, 2547)
HAX3CG <- str_sub(A, 2548, 2549)
HAX3DG <- str_sub(A, 2550, 2551)
HAX6SG <- str_sub(A, 2552, 2555)
HAX8SG <- str_sub(A, 2556, 2559)
HAX3CH <- str_sub(A, 2560, 2561)
HAX3DH <- str_sub(A, 2562, 2563)
HAX6SH <- str_sub(A, 2564, 2567)
HAX8SH <- str_sub(A, 2568, 2571)
HAX3CI <- str_sub(A, 2572, 2573)
HAX3DI <- str_sub(A, 2574, 2575)
HAX6SI <- str_sub(A, 2576, 2579)
HAX8SI <- str_sub(A, 2580, 2583)
HAX3CJ <- str_sub(A, 2584, 2585)
HAX3DJ <- str_sub(A, 2586, 2587)
HAX6SJ <- str_sub(A, 2588, 2591)
HAX8SJ <- str_sub(A, 2592, 2595)
HAX3CK <- str_sub(A, 2596, 2597)
HAX3DK <- str_sub(A, 2598, 2599)
HAX6SK <- str_sub(A, 2600, 2603)
HAX8SK <- str_sub(A, 2604, 2607)
HAX3CL <- str_sub(A, 2608, 2609)
HAX3DL <- str_sub(A, 2610, 2611)
HAX6SL <- str_sub(A, 2612, 2615)
HAX8SL <- str_sub(A, 2616, 2619)
HAX3CM <- str_sub(A, 2620, 2621)
HAX3DM <- str_sub(A, 2622, 2623)
HAX6SM <- str_sub(A, 2624, 2627)
HAX8SM <- str_sub(A, 2628, 2631)
HAX3CN <- str_sub(A, 2632, 2633)
HAX3DN <- str_sub(A, 2634, 2635)
HAX6SN <- str_sub(A, 2636, 2639)
HAX8SN <- str_sub(A, 2640, 2643)
HAX3CO <- str_sub(A, 2644, 2645)
HAX3DO <- str_sub(A, 2646, 2647)
HAX6SO <- str_sub(A, 2648, 2651)
HAX8SO <- str_sub(A, 2652, 2655)
HAX3CP <- str_sub(A, 2656, 2657)
HAX3DP <- str_sub(A, 2658, 2659)
HAX6SP <- str_sub(A, 2660, 2663)
HAX8SP <- str_sub(A, 2664, 2667)
HAX3CQ <- str_sub(A, 2668, 2669)
HAX3DQ <- str_sub(A, 2670, 2671)
HAX6SQ <- str_sub(A, 2672, 2675)
HAX8SQ <- str_sub(A, 2676, 2679)
HAX3CR <- str_sub(A, 2680, 2681)
HAX3DR <- str_sub(A, 2682, 2683)
HAX6SR <- str_sub(A, 2684, 2687)
HAX8SR <- str_sub(A, 2688, 2691)
HAX3CS <- str_sub(A, 2692, 2693)
HAX3DS <- str_sub(A, 2694, 2695)
HAX6SS <- str_sub(A, 2696, 2699)
HAX8SS <- str_sub(A, 2700, 2703)
HAX3CT <- str_sub(A, 2704, 2705)
HAX3DT <- str_sub(A, 2706, 2707)
HAX6ST <- str_sub(A, 2708, 2711)
HAX8ST <- str_sub(A, 2712, 2715)
HAX3CU <- str_sub(A, 2716, 2717)
HAX3DU <- str_sub(A, 2718, 2719)
HAX6SU <- str_sub(A, 2720, 2723)
HAX8SU <- str_sub(A, 2724, 2727)
HAX3CV <- str_sub(A, 2728, 2729)
HAX3DV <- str_sub(A, 2730, 2731)
HAX6SV <- str_sub(A, 2732, 2735)
HAX8SV <- str_sub(A, 2736, 2739)
HAX3CW <- str_sub(A, 2740, 2741)
HAX3DW <- str_sub(A, 2742, 2743)
HAX6SW <- str_sub(A, 2744, 2747)
HAX8SW <- str_sub(A, 2748, 2751)
HAX9DG <- str_sub(A, 2752, 2755)
HAX9EG <- str_sub(A, 2756, 2759)
HAX9FG <- str_sub(A, 2760, 2763)
HAX11AG <- str_sub(A, 2764, 2769)
HAX12SG <- str_sub(A, 2770, 2774)
HAX9DH <- str_sub(A, 2775, 2778)
HAX9EH <- str_sub(A, 2779, 2782)
HAX9FH <- str_sub(A, 2783, 2786)
HAX11AH <- str_sub(A, 2787, 2792)
HAX12SH <- str_sub(A, 2793, 2797)
HAX9DI <- str_sub(A, 2798, 2801)
HAX9EI <- str_sub(A, 2802, 2805)
HAX9FI <- str_sub(A, 2806, 2809)
HAX11AI <- str_sub(A, 2810, 2815)
HAX12SI <- str_sub(A, 2816, 2820)
HAX9DJ <- str_sub(A, 2821, 2824)
HAX9EJ <- str_sub(A, 2825, 2828)
HAX9FJ <- str_sub(A, 2829, 2832)
HAX11AJ <- str_sub(A, 2833, 2838)
HAX12SJ <- str_sub(A, 2839, 2843)
HAX9DK <- str_sub(A, 2844, 2847)
HAX9EK <- str_sub(A, 2848, 2851)
HAX9FK <- str_sub(A, 2852, 2855)
HAX11AK <- str_sub(A, 2856, 2861)
HAX12SK <- str_sub(A, 2862, 2866)
HAX9DL <- str_sub(A, 2867, 2870)
HAX9EL <- str_sub(A, 2871, 2874)
HAX9FL <- str_sub(A, 2875, 2878)
HAX11AL <- str_sub(A, 2879, 2884)
HAX12SL <- str_sub(A, 2885, 2889)
HAX9DM <- str_sub(A, 2890, 2893)
HAX9EM <- str_sub(A, 2894, 2897)
HAX9FM <- str_sub(A, 2898, 2901)
HAX11AM <- str_sub(A, 2902, 2907)
HAX12SM <- str_sub(A, 2908, 2912)
HAX9DN <- str_sub(A, 2913, 2916)
HAX9EN <- str_sub(A, 2917, 2920)
HAX9FN <- str_sub(A, 2921, 2924)
HAX11AN <- str_sub(A, 2925, 2930)
HAX12SN <- str_sub(A, 2931, 2935)
HAX9DO <- str_sub(A, 2936, 2939)
HAX9EO <- str_sub(A, 2940, 2943)
HAX9FO <- str_sub(A, 2944, 2947)
HAX11AO <- str_sub(A, 2948, 2953)
HAX12SO <- str_sub(A, 2954, 2958)
HAX9DP <- str_sub(A, 2959, 2962)
HAX9EP <- str_sub(A, 2963, 2966)
HAX9FP <- str_sub(A, 2967, 2970)
HAX11AP <- str_sub(A, 2971, 2976)
HAX12SP <- str_sub(A, 2977, 2981)
HAX9DQ <- str_sub(A, 2982, 2985)
HAX9EQ <- str_sub(A, 2986, 2989)
HAX9FQ <- str_sub(A, 2990, 2993)
HAX11AQ <- str_sub(A, 2994, 2999)
HAX12SQ <- str_sub(A, 3000, 3004)
HAX9DR <- str_sub(A, 3005, 3008)
HAX9ER <- str_sub(A, 3009, 3012)
HAX9FR <- str_sub(A, 3013, 3016)
HAX11AR <- str_sub(A, 3017, 3022)
HAX12SR <- str_sub(A, 3023, 3027)
HAX9DS <- str_sub(A, 3028, 3031)
HAX9ES <- str_sub(A, 3032, 3035)
HAX9FS <- str_sub(A, 3036, 3039)
HAX11AS <- str_sub(A, 3040, 3045)
HAX12SS <- str_sub(A, 3046, 3050)
HAX9DT <- str_sub(A, 3051, 3054)
HAX9ET <- str_sub(A, 3055, 3058)
HAX9FT <- str_sub(A, 3059, 3062)
HAX11AT <- str_sub(A, 3063, 3068)
HAX12ST <- str_sub(A, 3069, 3073)
HAX9DU <- str_sub(A, 3074, 3077)
HAX9EU <- str_sub(A, 3078, 3081)
HAX9FU <- str_sub(A, 3082, 3085)
HAX11AU <- str_sub(A, 3086, 3091)
HAX12SU <- str_sub(A, 3092, 3096)
HAX9DV <- str_sub(A, 3097, 3100)
HAX9EV <- str_sub(A, 3101, 3104)
HAX9FV <- str_sub(A, 3105, 3108)
HAX11AV <- str_sub(A, 3109, 3114)
HAX12SV <- str_sub(A, 3115, 3119)
HAX13AG <- str_sub(A, 3120, 3122)
HAX15SG <- str_sub(A, 3123, 3126)
HAX16AG <- str_sub(A, 3127, 3128)
HAX16A1G <- str_sub(A, 3129, 3130)
HAX17SG <- str_sub(A, 3131, 3134)
HAX13AH <- str_sub(A, 3135, 3137)
HAX15SH <- str_sub(A, 3138, 3141)
HAX16AH <- str_sub(A, 3142, 3143)
HAX16A1H <- str_sub(A, 3144, 3145)
HAX17SH <- str_sub(A, 3146, 3149)
HAX13AI <- str_sub(A, 3150, 3152)
HAX15SI <- str_sub(A, 3153, 3156)
HAX16AI <- str_sub(A, 3157, 3158)
HAX16A1I <- str_sub(A, 3159, 3160)
HAX17SI <- str_sub(A, 3161, 3164)
HAX13AJ <- str_sub(A, 3165, 3167)
HAX15SJ <- str_sub(A, 3168, 3171)
HAX16AJ <- str_sub(A, 3172, 3173)
HAX16A1J <- str_sub(A, 3174, 3175)
HAX17SJ <- str_sub(A, 3176, 3179)
HAX18A <- str_sub(A, 3180)
HAX19AS <- str_sub(A, 3181, 3183)
HAX18B <- str_sub(A, 3184)
HAX19BS <- str_sub(A, 3185, 3187)
HAX18C <- str_sub(A, 3188)
HAX19CS <- str_sub(A, 3189, 3191)
HAX18D <- str_sub(A, 3192, 3192)
HAX18DB <- str_sub(A, 3193, 3194)
HAX19DS <- str_sub(A, 3195, 3197)
HAX18E <- str_sub(A, 3198, 3198)
HAX18EB <- str_sub(A, 3199, 3200)
HAX19ES <- str_sub(A, 3201, 3203)
HAX18F <- str_sub(A, 3204, 3204)
HAX18FB <- str_sub(A, 3205, 3206)
HAX19FS <- str_sub(A, 3207, 3209)
HAX18G <- str_sub(A, 3210, 3210)
HAX18GB <- str_sub(A, 3211, 3212)
HAX19GS <- str_sub(A, 3213, 3215)
HAY6 <- str_sub(A, 3216, 3217)
HAY7 <- str_sub(A, 3218, 3219)
HAY8 <- str_sub(A, 3220, 3220)
HAY9 <- str_sub(A, 3221, 3221)
HAY10 <- str_sub(A, 3222, 3222)
HAY11A <- str_sub(A, 3223, 3223)
HAY11B <- str_sub(A, 3224, 3224)
HAY11C <- str_sub(A, 3225, 3225)
HAY11D <- str_sub(A, 3226, 3226)
HAY11E <- str_sub(A, 3227, 3227)
HAY11F <- str_sub(A, 3228, 3228)
HAY11G <- str_sub(A, 3229, 3229)
HAY11H <- str_sub(A, 3230, 3230)
HAY11I <- str_sub(A, 3231, 3231)
HAY11J <- str_sub(A, 3232, 3232)
HAZA1 <- str_sub(A, 3233, 3233)
HAZA1A <- str_sub(A, 3234, 3234)
HAZA1CC <- str_sub(A, 3235, 3264)
HAZA2 <- str_sub(A, 3265, 3265)
HAZA2A1 <- str_sub(A, 3266, 3266)
HAZA2A2 <- str_sub(A, 3267, 3267)
HAZA2A3 <- str_sub(A, 3268, 3268)
HAZA2A4 <- str_sub(A, 3269, 3269)
HAZA3 <- str_sub(A, 3270, 3270)
HAZA4 <- str_sub(A, 3271, 3271)
HAZA4A <- str_sub(A, 3272, 3272)
HAZA5 <- str_sub(A, 3273, 3275)
HAZA5R <- str_sub(A, 3276, 3278)
HAZA6 <- str_sub(A, 3279, 3279)
HAZA7A <- str_sub(A, 3280, 3282)
HAZA7AA <- str_sub(A, 3283, 3283)
HAZA7B <- str_sub(A, 3284, 3286)
HAZA7BA <- str_sub(A, 3287, 3287)
HAZA8AK1 <- str_sub(A, 3288, 3290)
HAZA8AK5 <- str_sub(A, 3291, 3293)
HAZA8A3 <- str_sub(A, 3294, 3294)
HAZA8A4 <- str_sub(A, 3295, 3295)
HAZA8BK1 <- str_sub(A, 3296, 3298)
HAZA8BK5 <- str_sub(A, 3299, 3301)
HAZA8B3 <- str_sub(A, 3302, 3302)
HAZA8B4 <- str_sub(A, 3303, 3303)
HAZA8CK1 <- str_sub(A, 3304, 3306)
HAZA8CK5 <- str_sub(A, 3307, 3309)
HAZA8C3 <- str_sub(A, 3310, 3310)
HAZA8C4 <- str_sub(A, 3311, 3311)
HAZA8DK1 <- str_sub(A, 3312, 3314)
HAZA8DK5 <- str_sub(A, 3315, 3317)
HAZA8D3 <- str_sub(A, 3318, 3318)
HAZA8D4 <- str_sub(A, 3319, 3319)
HAZA9 <- str_sub(A, 3320, 3321)
HAZA10 <- str_sub(A, 3322, 3323)
HAZA11A <- str_sub(A, 3324, 3326)
HAZA11AR <- str_sub(A, 3327, 3329)
HAZA11B <- str_sub(A, 3330, 3332)
HAZA11BR <- str_sub(A, 3333, 3335)
HAZA12 <- str_sub(A, 3336, 3336)
HAZMNK1R <- str_sub(A, 3337, 3339)
HAZNOK1R <- str_sub(A, 3340, 3341)
HAZMNK5R <- str_sub(A, 3342, 3344)
HAZNOK5R <- str_sub(A, 3345, 3346)

df <- cbind(
SEQN,
DMPFSEQ,
DMPSTAT,
DMARETHN,
DMARACER,
DMAETHNR,
HSSEX,
HSDOIMO,
HSAGEIR,
HSAGEU,
HSAITMOR,
HSFSIZER,
HSHSIZER,
DMPCNTYR,
DMPFIPSR,
DMPMETRO,
DMPCREGN,
DMPPIR,
SDPPHASE,
SDPPSU6,
SDPSTRA6,
SDPPSU1,
SDPSTRA1,
SDPPSU2,
SDPSTRA2,
WTPFQX6,
WTPFEX6,
WTPFHX6,
WTPFALG6,
WTPFCNS6,
WTPFSD6,
WTPFMD6,
WTPFHSD6,
WTPFHMD6,
WTPFQX1,
WTPFEX1,
WTPFHX1,
WTPFALG1,
WTPFCNS1,
WTPFSD1,
WTPFMD1,
WTPFHSD1,
WTPFHMD1,
WTPFQX2,
WTPFEX2,
WTPFHX2,
WTPFALG2,
WTPFCNS2,
WTPFSD2,
WTPFMD2,
WTPFHSD2,
WTPFHMD2,
WTPQRP1,
WTPQRP2,
WTPQRP3,
WTPQRP4,
WTPQRP5,
WTPQRP6,
WTPQRP7,
WTPQRP8,
WTPQRP9,
WTPQRP10,
WTPQRP11,
WTPQRP12,
WTPQRP13,
WTPQRP14,
WTPQRP15,
WTPQRP16,
WTPQRP17,
WTPQRP18,
WTPQRP19,
WTPQRP20,
WTPQRP21,
WTPQRP22,
WTPQRP23,
WTPQRP24,
WTPQRP25,
WTPQRP26,
WTPQRP27,
WTPQRP28,
WTPQRP29,
WTPQRP30,
WTPQRP31,
WTPQRP32,
WTPQRP33,
WTPQRP34,
WTPQRP35,
WTPQRP36,
WTPQRP37,
WTPQRP38,
WTPQRP39,
WTPQRP40,
WTPQRP41,
WTPQRP42,
WTPQRP43,
WTPQRP44,
WTPQRP45,
WTPQRP46,
WTPQRP47,
WTPQRP48,
WTPQRP49,
WTPQRP50,
WTPQRP51,
WTPQRP52,
WTPXRP1,
WTPXRP2,
WTPXRP3,
WTPXRP4,
WTPXRP5,
WTPXRP6,
WTPXRP7,
WTPXRP8,
WTPXRP9,
WTPXRP10,
WTPXRP11,
WTPXRP12,
WTPXRP13,
WTPXRP14,
WTPXRP15,
WTPXRP16,
WTPXRP17,
WTPXRP18,
WTPXRP19,
WTPXRP20,
WTPXRP21,
WTPXRP22,
WTPXRP23,
WTPXRP24,
WTPXRP25,
WTPXRP26,
WTPXRP27,
WTPXRP28,
WTPXRP29,
WTPXRP30,
WTPXRP31,
WTPXRP32,
WTPXRP33,
WTPXRP34,
WTPXRP35,
WTPXRP36,
WTPXRP37,
WTPXRP38,
WTPXRP39,
WTPXRP40,
WTPXRP41,
WTPXRP42,
WTPXRP43,
WTPXRP44,
WTPXRP45,
WTPXRP46,
WTPXRP47,
WTPXRP48,
WTPXRP49,
WTPXRP50,
WTPXRP51,
WTPXRP52,
HYAITMO,
MXPLANG,
MXPSESSR,
MXPTIMO,
MXPTIDW,
MXPAXTMR,
HXPSESSR,
HXPTIMO,
HXPTIDW,
HXPAXTMR,
HFVERS,
HFINTVR,
HFLANG,
HFA6XCR,
HFA8R,
HFA12,
HFA13,
HFB1,
HFB2,
HFB3,
HFB4,
HFB5,
HFB6,
HFB7,
HFB8,
HFB9,
HFB10,
HFB11,
HFB11A,
HFB11B,
HFB11C,
HFB11D,
HFB11E,
HFB12,
HFB13,
HFB14AB,
HFB14AC,
HFB14AD,
HFB14AE,
HFB14AF,
HFB14AG,
HFB14AI,
HFB14BA,
HFB14BB,
HFB14BC,
HFB14BD,
HFB14BE,
HFB14BF,
HFB14BG,
HFB14BH,
HFB16A,
HFB16B,
HFB17,
HFC1,
HFC2S,
HFC3S,
HFC4S,
HFC5S,
HFC6A,
HFC6A1,
HFC6B,
HFC6B1,
HFC6C,
HFC6C1,
HFC6D,
HFC6D1,
HFC6E,
HFC6E1,
HFC7S,
HFC8S,
HFC9,
HFC10,
HFC11,
HFD1,
HFD2,
HFD3,
HFD4,
HFD5,
HFD9R,
HFD10R,
HFD12,
HFE1,
HFE2,
HFE3,
HFE4,
HFE5,
HFE6,
HFE7,
HFE8A,
HFE8B,
HFE8C,
HFE8D,
HFE8E,
HFE9,
HFE10,
HFE11,
HFE12,
HFE13,
HFE14,
HFE15,
HFE16,
HFE17,
HFE18,
HFF1,
HFF2R,
HFF3A,
HFF3B,
HFF3C,
HFF3D,
HFF3E,
HFF3F,
HFF4,
HFF5,
HFF6A,
HFF6B,
HFF6C,
HFF6D,
HFF7,
HFF8,
HFF9,
HFF10,
HFF11,
HFF12A,
HFF12B,
HFF13A,
HFF13B,
HFF13DA,
HFF13DB,
HFF13E,
HFF14A,
HFF14B,
HFF14D,
HFF15A,
HFF15B,
HFF16A,
HFF16B,
HFF16D,
HFF16E,
HFF17A,
HFF17B,
HFF18,
HFF19R,
HFF20R,
HFHSEQN,
HFHAGER,
HFHSEX,
HFHFIPCR,
HFHEDUCR,
HFHEMPL,
HFHMRST,
HFHMLSV,
HFRELR,
HFAGERR,
HAVERS,
HAINTVR,
HALANG,
HAA1,
HAA2,
HAA2A,
HAA3,
HAA4,
HAA5,
HAA6A,
HAA6B,
HAA6C,
HAA6D,
HAB1,
HAB2,
HAB3,
HAB4,
HAB5,
HAB6S,
HAB7,
HAC1A,
HAC1B,
HAC1C,
HAC1D,
HAC1E,
HAC1F,
HAC1G,
HAC1H,
HAC1I,
HAC1J,
HAC1K,
HAC1L,
HAC1M,
HAC1N,
HAC1O,
HAC2E,
HAC2F,
HAC2H,
HAC2J,
HAC2K,
HAC3AR,
HAC3CR,
HAC3DR,
HAC3ER,
HAC3FR,
HAC3GR,
HAC3HR,
HAC3IR,
HAC3JR,
HAC3KR,
HAC3LR,
HAC3MR,
HAC3NR,
HAC3OR,
HAC3OS,
HAC4A,
HAC4B,
HAC5A1,
HAC5A2,
HAC5A3,
HAC5A4,
HAC5A5,
HAC5A6,
HAC5A7,
HAC5A8,
HAC5A9,
HAC5A10,
HAC5A11,
HAC5A12,
HAC5B1,
HAC5B2,
HAC5B3,
HAC5B4,
HAC5B5,
HAC5B6,
HAC5B7,
HAC5B8,
HAC5B9,
HAC5B10,
HAC5B11,
HAC5B12,
HAC6,
HAC7,
HAC7A,
HAC8,
HAD1,
HAD2,
HAD3,
HAD4,
HAD5R,
HAD6,
HAD7S,
HAD8,
HAD9S,
HAD10,
HAD11AS,
HAD11BS,
HAD12S,
HAD13S,
HAD14,
HAD15,
HAE1,
HAE2,
HAE3,
HAE4A,
HAE4B,
HAE4C,
HAE4D,
HAE4D1,
HAE4D2,
HAE4D3,
HAE4D4,
HAE4D5,
HAE4D6,
HAE5A,
HAE5B,
HAE5C,
HAE5D1,
HAE5D2,
HAE5D3,
HAE5D4,
HAE5D5,
HAE5D6,
HAE6,
HAE7,
HAE8A,
HAE8B,
HAE8C,
HAE8D,
HAE9A,
HAE9B,
HAE9C,
HAE9D,
HAE10,
HAE11A,
HAE11B,
HAE11C,
HAF1,
HAF2,
HAF3,
HAF4,
HAF5,
HAF6,
HAF7A,
HAF7B,
HAF7C,
HAF7D,
HAF7E,
HAF7F,
HAF7G,
HAF7H,
HAF9,
HAF10,
HAF11,
HAF12R,
HAF13R,
HAF14,
HAF15,
HAF16,
HAF17,
HAF18,
HAF19,
HAF20,
HAF21,
HAF22,
HAF23,
HAF24,
HAF25,
HAF26,
HAF27,
HAG1,
HAG2,
HAG3,
HAG4A,
HAG4B,
HAG4C,
HAG5A,
HAG5B,
HAG5C,
HAG6A,
HAG6B,
HAG6C,
HAG7,
HAG8A,
HAG8B,
HAG8C,
HAG8D,
HAG8E,
HAG8F,
HAG9AR,
HAG9BR,
HAG9CR,
HAG9DR,
HAG9ER,
HAG9FR,
HAG10A,
HAG10B,
HAG10C,
HAG10D,
HAG10E,
HAG10F,
HAG11,
HAG12,
HAG13,
HAG14,
HAG15,
HAG16,
HAG17A,
HAG17B,
HAG17C,
HAG17D,
HAG17E,
HAG17F,
HAG17G,
HAG17H,
HAG17I,
HAG17J,
HAG17K,
HAG17L,
HAG17M,
HAG17N,
HAG17O,
HAG17FF,
HAG17P,
HAG17Q,
HAG17R,
HAG17S,
HAG17T,
HAG17U,
HAG17V,
HAG17W,
HAG17X,
HAG17Y,
HAG17Z,
HAG17AA,
HAG17BB,
HAG17CC,
HAG17DD,
HAG17EE,
HAG18,
HAG19A,
HAG19B,
HAG19C,
HAG19D,
HAG19E,
HAG19F,
HAG19G,
HAG19H,
HAG19I,
HAG19J,
HAG19K,
HAG19L,
HAG19M,
HAG19N,
HAG19O,
HAG19FF,
HAG19P,
HAG19Q,
HAG19R,
HAG19S,
HAG19T,
HAG19U,
HAG19V,
HAG19W,
HAG19X,
HAG19Y,
HAG19Z,
HAG19AA,
HAG19BB,
HAG19CC,
HAG19DD,
HAG19EE,
HAG20,
HAG21,
HAG22,
HAG23,
HAG24,
HAG25,
HAG26,
HAG27,
HAG28,
HAG29,
HAG30,
HAG31,
HAG32,
HAG33,
HAG34,
HAH1,
HAH2,
HAH3,
HAH4,
HAH5,
HAH6,
HAH7,
HAH8,
HAH9,
HAH10,
HAH11,
HAH12,
HAH13,
HAH14,
HAH15,
HAH16,
HAH17,
HAJ0,
HAJ1,
HAJ2A,
HAJ2B,
HAJ2C,
HAJ3S,
HAJ4,
HAJ5,
HAJ6,
HAJ7,
HAJ8,
HAJ9,
HAJ10,
HAJ11,
HAJ12,
HAJ13,
HAJ14,
HAJ15,
HAJ16,
HAJ17,
HAJ18R,
HAK1,
HAK2,
HAK3A,
HAK3A1,
HAK3B,
HAK3B1R,
HAK3C,
HAK3C1R,
HAK4,
HAK5,
HAK6,
HAK7,
HAK8,
HAK9,
HAK10,
HAK11,
HAK12,
HAK13,
HAK14,
HAL1,
HAL2,
HAL3,
HAL4,
HAL5,
HAL6,
HAL7,
HAL8,
HAL9,
HAL10,
HAL11A,
HAL11B,
HAL12,
HAL13,
HAL14A,
HAL14B,
HAL14C,
HAL14D,
HAL14E,
HAL15A,
HAL15B,
HAL15C,
HAL15D,
HAL15E,
HAL15F,
HAL15G,
HAL15H,
HAL15I,
HAL15J,
HAL15K,
HAL15L,
HAL15M,
HAL16A,
HAL16B,
HAL17,
HAL18,
HAL19A,
HAL19B,
HAL19C,
HAL20A,
HAL20B,
HAL20C,
HAM1,
HAM2,
HAM3,
HAM4,
HAM5S,
HAM6S,
HAM7,
HAM8S,
HAM9S,
HAM10S,
HAM11,
HAM12,
HAM13,
HAM14,
HAM15A,
HAM15B,
HAM15C,
HAM15D,
HAM15E,
HAM15F,
HAM15G,
HAM15H,
HAM15K,
HAM15L,
HAM15M,
HAM15N,
HAM15O,
HAM15P,
HAM15Q,
HAM15R,
HAM15S,
HAM15T,
HAM15U,
HAM15V,
HAM15W,
HAM15X,
HAM15Y,
HAM15Z,
HAN1AS,
HAN1BS,
HAN1C,
HAN1D,
HAN1ES,
HAN1FS,
HAN1GS,
HAN1HS,
HAN1IS,
HAN2AS,
HAN2BS,
HAN2CS,
HAN2DS,
HAN2ES,
HAN2FS,
HAN2GS,
HAN2HS,
HAN2IS,
HAN2JS,
HAN3AS,
HAN3BS,
HAN3CS,
HAN3DS,
HAN3ES,
HAN3FS,
HAN4AS,
HAN4BS,
HAN4CS,
HAN4DS,
HAN4ES,
HAN4FS,
HAN4GS,
HAN4HS,
HAN4IS,
HAN4JS,
HAN4KS,
HAN4LS,
HAN5AS,
HAN5BS,
HAN5CS,
HAN5DS,
HAN5ES,
HAN5FS,
HAN5GS,
HAN5HS,
HAN5IS,
HAN5JS,
HAN5KS,
HAN5LS,
HAN6AS,
HAN6BS,
HAN6CS,
HAN6DS,
HAN6ES,
HAN6FS,
HAN6GS,
HAN6HS,
HAN6IS,
HAN6JS,
HAN7AS,
HAN7BS,
HAN7CS,
HAN8,
HAN8ACD,
HAN8AS,
HAN8BCD,
HAN8BS,
HAN8CCD,
HAN8CS,
HAN8DCD,
HAN8DS,
HAN8ECD,
HAN8ES,
HAN8FCD,
HAN8FS,
HAN9,
HAN10A,
HAN10B,
HAN10C,
HAN10D,
HAN10E,
HAP1,
HAP1A,
HAP2,
HAP3,
HAP4,
HAP5,
HAP6,
HAP7,
HAP8,
HAP9,
HAP10,
HAP10A,
HAP11,
HAP12,
HAP13,
HAP14,
HAP15,
HAP16,
HAP17A1,
HAP17A2,
HAP17A3,
HAP17B,
HAP18A,
HAP18B,
HAP18C,
HAP18D,
HAP18E,
HAP19A,
HAP19B,
HAP19C,
HAQ1,
HAQ2A,
HAQ2B,
HAQ2C,
HAQ2D,
HAQ2E,
HAQ2F,
HAQ2G,
HAQ2I,
HAQ2K,
HAQ2L,
HAQ3S,
HAQ4,
HAQ5,
HAQ6,
HAQ7,
HAQ8,
HAQ9,
HAR1,
HAR2,
HAR3,
HAR4S,
HAR5,
HAR6,
HAR7S,
HAR8,
HAR9,
HAR10,
HAR11R,
HAR12S,
HAR13,
HAR14,
HAR15,
HAR16,
HAR17,
HAR18AS,
HAR18BS,
HAR19A,
HAR19B,
HAR20R,
HAR21,
HAR22,
HAR23,
HAR24,
HAR25,
HAR26,
HAR27,
HAR28,
HAS1,
HAS2,
HAS3,
HAS4,
HAS5,
HAS8R,
HAS9R,
HAS11,
HAS12S,
HAS13,
HAS14,
HAS15,
HAS16A,
HAS16B,
HAS16C,
HAS16D,
HAS17,
HAS17R,
HAS18,
HAS19,
HAS19R,
HAS21,
HAS22,
HAS23,
HAS24,
HAS25,
HAS26,
HAS27A,
HAS27B,
HAS27C,
HAS27D,
HAS27E,
HAS27F,
HAS27G,
HAS27H,
HAS27HCD,
HAS28,
HAS29,
HAT1S,
HAT1MET,
HAT2,
HAT2MET,
HAT3S,
HAT4,
HAT4MET,
HAT5S,
HAT6,
HAT6MET,
HAT7S,
HAT8,
HAT8MET,
HAT9S,
HAT10,
HAT10MET,
HAT11S,
HAT12,
HAT12MET,
HAT13S,
HAT14,
HAT14MET,
HAT15S,
HAT16,
HAT16MET,
HAT17S,
HAT18,
HAT19CD,
HAT19MET,
HAT20S,
HAT21CD,
HAT21MET,
HAT22S,
HAT23CD,
HAT23MET,
HAT24S,
HAT25CD,
HAT25MET,
HAT26S,
HAT27,
HAT28,
HAT29,
HAT30,
HAV1S,
HAV2S,
HAV3S,
HAV4S,
HAV5,
HAV6S,
HAV7R,
HAV8,
HAV9,
HAV10R,
HAV11,
HAV12R,
HAV13R,
HAX1A,
HAX1B,
HAX1C,
HAX2A,
HAX2B,
HAX2C,
HAX3CG,
HAX3DG,
HAX6SG,
HAX8SG,
HAX3CH,
HAX3DH,
HAX6SH,
HAX8SH,
HAX3CI,
HAX3DI,
HAX6SI,
HAX8SI,
HAX3CJ,
HAX3DJ,
HAX6SJ,
HAX8SJ,
HAX3CK,
HAX3DK,
HAX6SK,
HAX8SK,
HAX3CL,
HAX3DL,
HAX6SL,
HAX8SL,
HAX3CM,
HAX3DM,
HAX6SM,
HAX8SM,
HAX3CN,
HAX3DN,
HAX6SN,
HAX8SN,
HAX3CO,
HAX3DO,
HAX6SO,
HAX8SO,
HAX3CP,
HAX3DP,
HAX6SP,
HAX8SP,
HAX3CQ,
HAX3DQ,
HAX6SQ,
HAX8SQ,
HAX3CR,
HAX3DR,
HAX6SR,
HAX8SR,
HAX3CS,
HAX3DS,
HAX6SS,
HAX8SS,
HAX3CT,
HAX3DT,
HAX6ST,
HAX8ST,
HAX3CU,
HAX3DU,
HAX6SU,
HAX8SU,
HAX3CV,
HAX3DV,
HAX6SV,
HAX8SV,
HAX3CW,
HAX3DW,
HAX6SW,
HAX8SW,
HAX9DG,
HAX9EG,
HAX9FG,
HAX11AG,
HAX12SG,
HAX9DH,
HAX9EH,
HAX9FH,
HAX11AH,
HAX12SH,
HAX9DI,
HAX9EI,
HAX9FI,
HAX11AI,
HAX12SI,
HAX9DJ,
HAX9EJ,
HAX9FJ,
HAX11AJ,
HAX12SJ,
HAX9DK,
HAX9EK,
HAX9FK,
HAX11AK,
HAX12SK,
HAX9DL,
HAX9EL,
HAX9FL,
HAX11AL,
HAX12SL,
HAX9DM,
HAX9EM,
HAX9FM,
HAX11AM,
HAX12SM,
HAX9DN,
HAX9EN,
HAX9FN,
HAX11AN,
HAX12SN,
HAX9DO,
HAX9EO,
HAX9FO,
HAX11AO,
HAX12SO,
HAX9DP,
HAX9EP,
HAX9FP,
HAX11AP,
HAX12SP,
HAX9DQ,
HAX9EQ,
HAX9FQ,
HAX11AQ,
HAX12SQ,
HAX9DR,
HAX9ER,
HAX9FR,
HAX11AR,
HAX12SR,
HAX9DS,
HAX9ES,
HAX9FS,
HAX11AS,
HAX12SS,
HAX9DT,
HAX9ET,
HAX9FT,
HAX11AT,
HAX12ST,
HAX9DU,
HAX9EU,
HAX9FU,
HAX11AU,
HAX12SU,
HAX9DV,
HAX9EV,
HAX9FV,
HAX11AV,
HAX12SV,
HAX13AG,
HAX15SG,
HAX16AG,
HAX16A1G,
HAX17SG,
HAX13AH,
HAX15SH,
HAX16AH,
HAX16A1H,
HAX17SH,
HAX13AI,
HAX15SI,
HAX16AI,
HAX16A1I,
HAX17SI,
HAX13AJ,
HAX15SJ,
HAX16AJ,
HAX16A1J,
HAX17SJ,
HAX18A,
HAX19AS,
HAX18B,
HAX19BS,
HAX18C,
HAX19CS,
HAX18D,
HAX18DB,
HAX19DS,
HAX18E,
HAX18EB,
HAX19ES,
HAX18F,
HAX18FB,
HAX19FS,
HAX18G,
HAX18GB,
HAX19GS,
HAY6,
HAY7,
HAY8,
HAY9,
HAY10,
HAY11A,
HAY11B,
HAY11C,
HAY11D,
HAY11E,
HAY11F,
HAY11G,
HAY11H,
HAY11I,
HAY11J,
HAZA1,
HAZA1A,
HAZA1CC,
HAZA2,
HAZA2A1,
HAZA2A2,
HAZA2A3,
HAZA2A4,
HAZA3,
HAZA4,
HAZA4A,
HAZA5,
HAZA5R,
HAZA6,
HAZA7A,
HAZA7AA,
HAZA7B,
HAZA7BA,
HAZA8AK1,
HAZA8AK5,
HAZA8A3,
HAZA8A4,
HAZA8BK1,
HAZA8BK5,
HAZA8B3,
HAZA8B4,
HAZA8CK1,
HAZA8CK5,
HAZA8C3,
HAZA8C4,
HAZA8DK1,
HAZA8DK5,
HAZA8D3,
HAZA8D4,
HAZA9,
HAZA10,
HAZA11A,
HAZA11AR,
HAZA11B,
HAZA11BR,
HAZA12,
HAZMNK1R,
HAZNOK1R,
HAZMNK5R,
HAZNOK5R)
df <- as.data.frame(df)
readr::write_csv(df, path = "dat/adult.csv")