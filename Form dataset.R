#Read in datasets and combine for each station
Adelaide1 <- read.csv("Data23000Adelaide.csv", header = TRUE)
Adelaide2 <- read.csv("Data23090Adelaide.csv", header = TRUE)
Adelaide <- join_stations(Adelaide1, Adelaide2)

Albany1 <- read.csv("Data9999Albany.csv", header = TRUE)
Albany2 <- read.csv("Data9500Albany.csv", header = TRUE)
Albany3 <- read.csv("Data9741Albany.csv", header = TRUE)
Albanytemp <- join_stations(Albany1, Albany2)
Albany <- join_stations(Albanytemp, Albany3)

AliceSprings1 <- read.csv("Data15590AliceSprings.csv", header = TRUE)
AliceSprings2 <- read.csv("Data15540AliceSprings.csv", header = TRUE)
AliceSprings <- join_stations(AliceSprings1, AliceSprings2)

Amberley <- read.csv("Data40004Amberley.csv", header = TRUE)

Barcaldine <- read.csv("Data36007Barcaldine.csv", header = TRUE)

Bathurst <- read.csv("Data63005Bathurst.csv", header = TRUE)

Birdsville1 <- read.csv("Data38026Birdsville.csv", header = TRUE)
Birdsville2 <- read.csv("Data38002Birdsville.csv", header = TRUE)
Birdsville <- join_stations(Birdsville1, Birdsville2)

Boulia <- read.csv("Data38003Boulia.csv", header = TRUE)

Bourke1 <- read.csv("Data48245Bourke.csv", header = TRUE)
Bourke2 <- read.csv("Data48013Bourke.csv", header = TRUE)
Bourke3 <- read.csv("Data48239Bourke.csv", header = TRUE)
Bourketemp <- join_stations(Bourke1, Bourke2)
Bourke <- join_stations(Bourketemp, Bourke3)

Bridgetown1 <- read.csv("Data9617Bridgetown.csv", header = TRUE)
Bridgetown2 <- read.csv("Data9510Bridgetown.csv", header = TRUE)
Bridgetown <- join_stations(Bridgetown1, Bridgetown2)

BrisbaneAirport1 <- read.csv("Data40842BrisbaneAirport.csv", header = TRUE)
BrisbaneAirport2 <- read.csv("Data40223BrisbaneAirport.csv", header = TRUE)
BrisbaneAirport <- join_stations(BrisbaneAirport1, BrisbaneAirport2)

Broome1 <- read.csv("Data3003Broome.csv", header = TRUE)
Broome2 <- read.csv("Data3002Broome.csv", header = TRUE)
Broome <- join_stations(Broome1, Broome2)

Bundaberg1 <- read.csv("Data39128Bundaberg.csv", header = TRUE)
Bundaberg2 <- read.csv("Data39015Bundaberg.csv", header = TRUE)
Bundaberg <- join_stations(Bundaberg1, Bundaberg2)

Burketown1 <- read.csv("Data29077Burketown.csv", header = TRUE)
Burketown2 <- read.csv("Data29004Burketown.csv", header = TRUE)
Burketown <- join_stations(Burketown1, Burketown2)

ButlersGorge1 <- read.csv("Data96003ButlersGorge.csv", header = TRUE)
ButlersGorge2 <- read.csv("Data96071ButlersGorge.csv", header = TRUE)
ButlersGorge <- join_stations(ButlersGorge1, ButlersGorge2)

Cabramurra1 <- read.csv("Data72161Cabramurra.csv", header = TRUE)
Cabramurra2 <- read.csv("Data72091Cabramurra.csv", header = TRUE)
Cabramurra <- join_stations(Cabramurra1, Cabramurra2)

Cairns1 <- read.csv("Data31011Cairns.csv", header = TRUE)
Cairns2 <- read.csv("Data31010Cairns.csv", header = TRUE)
Cairns <- join_stations(Cairns1, Cairns2)

Camooweal <- read.csv("Data37010Camooweal.csv", header = TRUE)

Canberra1 <- read.csv("Data70351Canberra.csv", header = TRUE)
Canberra2 <- read.csv("Data70014Canberra.csv", header = TRUE)
Canberra3 <- read.csv("Data70099Canberra.csv", header = TRUE)
Canberratemp <- join_stations(Canberra1, Canberra2)
Canberra <- join_stations(Canberratemp, Canberra3)

CapeBorda1 <- read.csv("Data22823CapeBorda.csv", header = TRUE)
CapeBorda2 <- read.csv("Data22801CapeBorda.csv", header = TRUE)
CapeBorda <- join_stations(CapeBorda1, CapeBorda2)

CapeBruny1 <- read.csv("Data94198CapeBruny.csv", header = TRUE)
CapeBruny2 <- read.csv("Data94010CapeBruny.csv", header = TRUE)
CapeBruny <- join_stations(CapeBruny1, CapeBruny2)

CapeLeeuwin <- read.csv("Data9518CapeLeeuwin.csv", header = TRUE)

CapeMoreton <- read.csv("Data40043CapeMoreton.csv", header = TRUE)

CapeOtway <- read.csv("Data90015CapeOtway.csv", header = TRUE)

Carnarvon1 <- read.csv("Data6011Carnarvon.csv", header = TRUE)
Carnarvon2 <- read.csv("Data6062Carnarvon.csv", header = TRUE)
Carnarvon <- join_stations(Carnarvon1, Carnarvon2)

Ceduna <- read.csv("Data18012Ceduna.csv", header = TRUE)

Charleville1 <- read.csv("Data44021Charleville.csv", header = TRUE)
Charleville2 <- read.csv("Data44022Charleville.csv", header = TRUE)
Charleville <- join_stations(Charleville1, Charleville2)

ChartersTowers1 <- read.csv("Data34084ChartersTowers.csv", header = TRUE)
ChartersTowers2 <- read.csv("Data34002ChartersTowers.csv", header = TRUE)
ChartersTowers <- join_stations(ChartersTowers1, ChartersTowers2)

Cobar1 <- read.csv("Data48027Cobar.csv", header = TRUE)
Cobar2 <- read.csv("Data48030Cobar.csv", header = TRUE)
Cobar <- join_stations(Cobar1, Cobar2)

CoffsHarbour1 <- read.csv("Data59151CoffsHarbour.csv", header = TRUE)
CoffsHarbour2 <- read.csv("Data59040CoffsHarbour.csv", header = TRUE)
CoffsHarbour <- join_stations(CoffsHarbour1, CoffsHarbour2)

Cunderdin1 <- read.csv("Data10286Cunderdin.csv", header = TRUE)
Cunderdin2 <- read.csv("Data10035Cunderdin.csv", header = TRUE)
Cunderdin <- join_stations(Cunderdin1, Cunderdin2)

Dalwallinu1 <- read.csv("Data8297Dalwallinu.csv", header = TRUE)
Dalwallinu2 <- read.csv("Data8039Dalwallinu.csv", header = TRUE)
Dalwallinu <- join_stations(Dalwallinu1, Dalwallinu2)

Darwin1 <- read.csv("Data14015Darwin.csv", header = TRUE)
Darwin2 <- read.csv("Data14016Darwin.csv", header = TRUE)
Darwin <- join_stations(Darwin1, Darwin2)

Deniliquin1 <- read.csv("Data74258Deniliquin.csv", header = TRUE)
Deniliquin2 <- read.csv("Data74128Deniliquin.csv", header = TRUE)
Deniliquin <- join_stations(Deniliquin1, Deniliquin2)

Dubbo1 <- read.csv("Data65070Dubbo.csv", header = TRUE)
Dubbo2 <- read.csv("Data65012Dubbo.csv", header = TRUE)
Dubbo <- join_stations(Dubbo1, Dubbo2)

Esperance1 <- read.csv("Data9789Esperance.csv", header = TRUE)
Esperance2 <- read.csv("Data9541Esperance.csv", header = TRUE)
Esperance <- join_stations(Esperance1, Esperance2)

Eucla <- read.csv("Data11003Eucla.csv", header = TRUE)

Forrest1 <- read.csv("Data11052Forrest.csv", header = TRUE)
Forrest2 <- read.csv("Data11004Forrest.csv", header = TRUE)
Forrest <- join_stations(Forrest1, Forrest2)

GaboIsland <- read.csv("Data84016GaboIsland.csv", header = TRUE)

Gayndah1 <- read.csv("Data39066Gayndah.csv", header = TRUE)
Gayndah2 <- read.csv("Data39039Gayndah.csv", header = TRUE)
Gayndah <- join_stations(Gayndah1, Gayndah2)

Georgetown1 <- read.csv("Data30124Georgetown.csv", header = TRUE)
Georgetown2 <- read.csv("Data30018Georgetown.csv", header = TRUE)
Georgetown <- join_stations(Georgetown1, Georgetown2)

Geraldton1 <- read.csv("Data8315Geraldton.csv", header = TRUE)
Geraldton2 <- read.csv("Data8050Geraldton.csv", header = TRUE)
Geraldton3 <- read.csv("Data8051Geraldton.csv", header = TRUE)
Geraldtontemp <- join_stations(Geraldton1, Geraldton2)
Geraldton <- join_stations(Geraldtontemp, Geraldton3)

Giles <- read.csv("Data13017Giles.csv", header = TRUE)

Grove1 <- read.csv("Data94220Grove.csv", header = TRUE)
Grove2 <- read.csv("Data94069Grove.csv", header = TRUE)
Grove <- join_stations(Grove1, Grove2)

Gunnedah <- read.csv("Data55024Gunnedah.csv", header = TRUE)

HallsCreek1 <- read.csv("Data2079HallsCreek.csv", header = TRUE)
HallsCreek2 <- read.csv("Data2011HallsCreek.csv", header = TRUE)
HallsCreek3 <- read.csv("Data2012HallsCreek.csv", header = TRUE)
HallsCreektemp <- join_stations(HallsCreek1, HallsCreek2)
HallsCreek <- join_stations(HallsCreektemp, HallsCreek3)

Hobart <- read.csv("Data94029Hobart.csv", header = TRUE)

HornIsland1 <- read.csv("Data27058HornIsland.csv", header = TRUE)
HornIsland2 <- read.csv("Data27021HornIsland.csv", header = TRUE)
HornIsland3 <- read.csv("Data27022HornIsland.csv", header = TRUE)
HornIslandtemp <- join_stations(HornIsland1, HornIsland2)
HornIsland <- join_stations(HornIslandtemp, HornIsland3)

Inverell1 <- read.csv("Data56242Inverell.csv", header = TRUE)
Inverell2 <- read.csv("Data56017Inverell.csv", header = TRUE)
Inverell <- join_stations(Inverell1, Inverell2)

KalgoorlieBoulder1 <- read.csv("Data12038KalgoorlieBoulder.csv", header = TRUE)
KalgoorlieBoulder2 <- read.csv("Data12039KalgoorlieBoulder.csv", header = TRUE)
KalgoorlieBoulder <- join_stations(KalgoorlieBoulder1, KalgoorlieBoulder2)

Kalumburu1 <- read.csv("Data1019Kalumburu.csv", header = TRUE)
Kalumburu2 <- read.csv("Data1021Kalumburu.csv", header = TRUE)
Kalumburu <- join_stations(Kalumburu1, Kalumburu2)

Karijini1 <- read.csv("Data5098Karijini.csv", header = TRUE)
Karijini2 <- read.csv("Data5026Karijini.csv", header = TRUE)
Karijini <- join_stations(Karijini1, Karijini2)

Katanning1 <- read.csv("Data10916Katanning.csv", header = TRUE)
Katanning2 <- read.csv("Data10579Katanning.csv", header = TRUE)
Katanning <- join_stations(Katanning1, Katanning2)

Kerang <- read.csv("Data80023Kerang.csv", header = TRUE)

Kyancutta <- read.csv("Data18044Kyancutta.csv", header = TRUE)

Larapuna <- read.csv("Data92045Larapuna.csv", header = TRUE)

Launceston1 <- read.csv("Data91311Launceston.csv", header = TRUE)
Launceston2 <- read.csv("Data91049Launceston.csv", header = TRUE)
Launceston3 <- read.csv("Data91104Launceston.csv", header = TRUE)
Launcestontemp <- join_stations(Launceston1, Launceston2)
Launceston <- join_stations(Launcestontemp, Launceston3)

Laverton <- read.csv("Data87031Laverton.csv", header = TRUE)

Learmonth <- read.csv("Data5007Learmonth.csv", header = TRUE)

Longreach1 <- read.csv("Data36031Longreach.csv", header = TRUE)
Longreach2 <- read.csv("Data36030Longreach.csv", header = TRUE)
Longreach <- join_stations(Longreach1, Longreach2)

LowHead1 <- read.csv("Data91293LowHead.csv", header = TRUE)
LowHead2 <- read.csv("Data91057LowHead.csv", header = TRUE)
LowHead <- join_stations(LowHead1, LowHead2)

Mackay1 <- read.csv("Data33119Mackay.csv", header = TRUE)
Mackay2 <- read.csv("Data33046Mackay.csv", header = TRUE)
Mackay3 <- read.csv("Data33047Mackay.csv", header = TRUE)
Mackaytemp <- join_stations(Mackay1, Mackay2)
Mackay <- join_stations(Mackaytemp, Mackay3)

MarbleBar1 <- read.csv("Data4106MarbleBar.csv", header = TRUE)
MarbleBar2 <- read.csv("Data4020MarbleBar.csv", header = TRUE)
MarbleBar <- join_stations(MarbleBar1, MarbleBar2)

Marree1 <- read.csv("Data17126Marree.csv", header = TRUE)
Marree2 <- read.csv("Data17024Marree.csv", header = TRUE)
Marree3 <- read.csv("Data17031Marree.csv", header = TRUE)
Marreetemp <- join_stations(Marree1, Marree2)
Marree <- join_stations(Marreetemp, Marree3)

Meekatharra1 <- read.csv("Data7045Meekatharra.csv", header = TRUE)
Meekatharra2 <- read.csv("Data7046Meekatharra.csv", header = TRUE)
Meekatharra <- join_stations(Meekatharra1, Meekatharra2)

Melbourne1 <- read.csv("Data86338Melbourne.csv", header = TRUE)
Melbourne2 <- read.csv("Data86071Melbourne.csv", header = TRUE)
Melbourne <- join_stations(Melbourne1, Melbourne2)

Merredin1 <- read.csv("Data10092Merredin.csv", header = TRUE)
Merredin2 <- read.csv("Data10093Merredin.csv", header = TRUE)
Merredin <- join_stations(Merredin1, Merredin2)

Mildura1 <- read.csv("Data76031Mildura.csv", header = TRUE)
Mildura2 <- read.csv("Data76077Mildura.csv", header = TRUE)
Mildura <- join_stations(Mildura1, Mildura2)

Miles1 <- read.csv("Data42112Miles.csv", header = TRUE)
Miles2 <- read.csv("Data42023Miles.csv", header = TRUE)
Miles <- join_stations(Miles1, Miles2)

Morawa1 <- read.csv("Data8296Morawa.csv", header = TRUE)
Morawa2 <- read.csv("Data8093Morawa.csv", header = TRUE)
Morawa <- join_stations(Morawa1, Morawa2)

Moree1 <- read.csv("Data53115Moree.csv", header = TRUE)
Moree2 <- read.csv("Data53027Moree.csv", header = TRUE)
Moree3 <- read.csv("Data53048Moree.csv", header = TRUE)
Moreetemp <- join_stations(Moree1, Moree2)
Moree <- join_stations(Moreetemp, Moree3)

MoruyaHeads <- read.csv("Data69018Moruya.csv", header = TRUE)

MountGambier1 <- read.csv("Data26021MountGambier.csv", header = TRUE)
MountGambier2 <- read.csv("Data26020MountGambier.csv", header = TRUE)
MountGambier <- join_stations(MountGambier1, MountGambier2)

Nhill1 <- read.csv("Data78015Nhill.csv", header = TRUE)
Nhill2 <- read.csv("Data78031Nhill.csv", header = TRUE)
Nhill <- join_stations(Nhill1, Nhill2)

Normanton1 <- read.csv("Data29063Normanton.csv", header = TRUE)
Normanton2 <- read.csv("Data29041Normanton.csv", header = TRUE)
Normanton <- join_stations(Normanton1, Normanton2)

Nowra1 <- read.csv("Data68072Nowra.csv", header = TRUE)
Nowra2 <- read.csv("Data68076Nowra.csv", header = TRUE)
Nowra <- join_stations(Nowra1, Nowra2)

Nuriootpa1 <- read.csv("Data23373Nuriootpa.csv", header = TRUE)
Nuriootpa2 <- read.csv("Data23321Nuriootpa.csv", header = TRUE)
Nuriootpa <- join_stations(Nuriootpa1, Nuriootpa2)

Oodnadatta1 <- read.csv("Data17043Oodnadatta.csv", header = TRUE)
Oodnadatta2 <- read.csv("Data17114Oodnadatta.csv", header = TRUE)
Oodnadatta <- join_stations(Oodnadatta1, Oodnadatta2)

Orbost1 <- read.csv("Data84145Orbost.csv", header = TRUE)
Orbost2 <- read.csv("Data84030Orbost.csv", header = TRUE)
Orbost <- join_stations(Orbost1, Orbost2)

Palmerville <- read.csv("Data28004Palmerville.csv", header = TRUE)

PerthAirport1 <- read.csv("Data9021PerthAirport.csv", header = TRUE)
PerthAirport2 <- read.csv("Data9034PerthAirport.csv", header = TRUE)
PerthAirport <- join_stations(PerthAirport1, PerthAirport2)

PointPerpendicular1 <- read.csv("Data68151PointPerpendicular.csv", header = TRUE)
PointPerpendicular2 <- read.csv("Data68034PointPerpendicular.csv", header = TRUE)
PointPerpendicular <- join_stations(PointPerpendicular1, PointPerpendicular2)

PortHedland1 <- read.csv("Data4032PortHedland.csv", header = TRUE)
PortHedland2 <- read.csv("Data4002PortHedland.csv", header = TRUE)
PortHedland <- join_stations(PortHedland1, PortHedland2)

PortLincoln1 <- read.csv("Data18192PortLincoln.csv", header = TRUE)
PortLincoln2 <- read.csv("Data18070PortLincoln.csv", header = TRUE)
PortLincoln <- join_stations(PortLincoln1, PortLincoln2)

PortMacquarie1 <- read.csv("Data60168PortMacquarie.csv", header = TRUE)
PortMacquarie2 <- read.csv("Data60139PortMacquarie.csv", header = TRUE)
PortMacquarie3 <- read.csv("Data60026PortMacquarie.csv", header = TRUE)
PortMacquarietemp <- join_stations(PortMacquarie1, PortMacquarie2)
PortMacquarie <- join_stations(PortMacquarietemp, PortMacquarie3)

RabbitFlat1 <- read.csv("Data15666RabbitFlat.csv", header = TRUE)
RabbitFlat2 <- read.csv("Data15548RabbitFlat.csv", header = TRUE)
RabbitFlat <- join_stations(RabbitFlat1, RabbitFlat2)

RichmondNSW1 <- read.csv("Data67105RichmondNSW.csv", header = TRUE)
RichmondNSW2 <- read.csv("Data67033RichmondNSW.csv", header = TRUE)
RichmondNSW <- join_stations(RichmondNSW1, RichmondNSW2)

RichmondQLD1 <- read.csv("Data30161RichmondQLD.csv", header = TRUE)
RichmondQLD2 <- read.csv("Data30045RichmondQLD.csv", header = TRUE)
RichmondQLD <- join_stations(RichmondQLD1, RichmondQLD2)

Robe <- read.csv("Data26026Robe.csv", header = TRUE)

Rockhampton <- read.csv("Data39083Rockhampton.csv", header = TRUE)

Rutherglen <- read.csv("Data82039Rutherglen.csv", header = TRUE)

Sale1 <- read.csv("Data85072Sale.csv", header = TRUE)
Sale2 <- read.csv("Data85133Sale.csv", header = TRUE)
Sale <- join_stations(Sale1, Sale2)

Scone1 <- read.csv("Data61363Scone.csv", header = TRUE)
Scone2 <- read.csv("Data61089Scone.csv", header = TRUE)
Scone <- join_stations(Scone1, Scone2)

Snowtown1 <- read.csv("Data21133Snowtown.csv", header = TRUE)
Snowtown2 <- read.csv("Data21046Snowtown.csv", header = TRUE)
Snowtown <- join_stations(Snowtown1, Snowtown2)

StGeorge1 <- read.csv("Data43109StGeorge.csv", header = TRUE)
StGeorge2 <- read.csv("Data43034StGeorge.csv", header = TRUE)
StGeorge <- join_stations(StGeorge1, StGeorge2)

Sydney1 <- read.csv("Data66214Sydney.csv", header = TRUE)
Sydney2 <- read.csv("Data66062Sydney.csv", header = TRUE)
Sydney <- join_stations(Sydney1, Sydney2)

Tarcoola1 <- read.csv("Data16098Tarcoola.csv", header = TRUE)
Tarcoola2 <- read.csv("Data16044Tarcoola.csv", header = TRUE)
Tarcoola <- join_stations(Tarcoola1, Tarcoola2)

TennantCreek1 <- read.csv("Data15135TennantCreek.csv", header = TRUE)
TennantCreek2 <- read.csv("Data15087TennantCreek.csv", header = TRUE)
TennantCreek <- join_stations(TennantCreek1, TennantCreek2)

Thargomindah1 <- read.csv("Data45025Thargomindah.csv", header = TRUE)
Thargomindah2 <- read.csv("Data45017Thargomindah.csv", header = TRUE)
Thargomindah <- join_stations(Thargomindah1, Thargomindah2)

Tibooburra1 <- read.csv("Data46126Tibooburra.csv", header = TRUE)
Tibooburra2 <- read.csv("Data46037Tibooburra.csv", header = TRUE)
Tibooburra <- join_stations(Tibooburra1, Tibooburra2)

Townsville <- read.csv("Data32040Townsville.csv", header = TRUE)

VictoriaRiverDowns <- read.csv("Data14825VictoriaRiverDowns.csv", header = TRUE)

WaggaWagga1 <- read.csv("Data72150WaggaWagga.csv", header = TRUE)
WaggaWagga2 <- read.csv("Data72151WaggaWagga.csv", header = TRUE)
WaggaWagga <- join_stations(WaggaWagga1, WaggaWagga2)

Walgett1 <- read.csv("Data52088Walgett.csv", header = TRUE)
Walgett2 <- read.csv("Data52026Walgett.csv", header = TRUE)
Walgett <- join_stations(Walgett1, Walgett2)

Wandering1 <- read.csv("Data10917Wandering.csv", header = TRUE)
Wandering2 <- read.csv("Data10648Wandering.csv", header = TRUE)
Wandering <- join_stations(Wandering1, Wandering2)

Weipa1 <- read.csv("Data27045Weipa.csv", header = TRUE)
Weipa2 <- read.csv("Data27042Weipa.csv", header = TRUE)
Weipa <- join_stations(Weipa1, Weipa2)

WestWyalong1 <- read.csv("Data50017WestWyalong.csv", header = TRUE)
WestWyalong2 <- read.csv("Data73054WestWyalong.csv", header = TRUE)
WestWyalong <- join_stations(WestWyalong1, WestWyalong2)

Wilcannia1 <- read.csv("Data46012Wilcannia.csv", header = TRUE)
Wilcannia2 <- read.csv("Data46043Wilcannia.csv", header = TRUE)
Wilcannia <- join_stations(Wilcannia1, Wilcannia2)

Williamtown <- read.csv("Data61078Williamtown.csv", header = TRUE)

WilsonsPromontory <- read.csv("Data85096WilsonsPromontory.csv", header = TRUE)

Woomera <- read.csv("Data16001Woomera.csv", header = TRUE)

Yamba <- read.csv("Data58012Yamba.csv", header = TRUE)




#Clean data
Adelaide <- Adelaide%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Adelaide")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Albany <- Albany%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Albany")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

AliceSprings <- AliceSprings%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Alice Springs")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Amberley <- Amberley%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Amberley")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Barcaldine <- Barcaldine%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Barcaldine")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Bathurst <- Bathurst%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Bathurst")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Birdsville <- Birdsville%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Birdsville")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Boulia <- Boulia%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Boulia")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Bourke <- Bourke%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Bourke")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Bridgetown <- Bridgetown%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Bridgetown")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

BrisbaneAirport <- BrisbaneAirport%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Brisbane Airport")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Broome <- Broome%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Broome")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Bundaberg <- Bundaberg%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Bundaberg")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Burketown <- Burketown%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Burketown")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

ButlersGorge <- ButlersGorge%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Butlers Gorge")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Cabramurra <- Cabramurra%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cabramurra")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Cairns <- Cairns%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cairns")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Camooweal <- Camooweal%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Camooweal")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Canberra <- Canberra%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Canberra")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

CapeBorda <- CapeBorda%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cape Borda")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

CapeBruny <- CapeBruny%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cape Bruny")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

CapeLeeuwin <- CapeLeeuwin%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cape Leewin")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

CapeMoreton <- CapeMoreton%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cape Moreton")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

CapeOtway <- CapeOtway%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cape Otway")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Carnarvon <- Carnarvon%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Carnarvon")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Ceduna <- Ceduna%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Ceduna")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Charleville <- Charleville%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Charleville")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

ChartersTowers <- ChartersTowers%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Charters Towers")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Cobar <- Cobar%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cobar")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

CoffsHarbour <- CoffsHarbour%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Coffs Harbour")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Cunderdin <- Cunderdin%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Cunderdin")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Dalwallinu <- Dalwallinu%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Dalwallinu")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Darwin <- Darwin%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Darwin")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Deniliquin <- Deniliquin%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Deniliquin")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Dubbo <- Dubbo%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Dubbo")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Esperance <- Esperance%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Esperance")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Eucla <- Eucla%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Eucla")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Forrest <- Forrest%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Forrest")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

GaboIsland <- GaboIsland%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Gabo Island")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Gayndah <- Gayndah%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Gayndah")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Georgetown <- Georgetown%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Georgetown")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Geraldton <- Geraldton%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Geraldton")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Giles <- Giles%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Giles")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Grove <- Grove%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Grove")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Gunnedah <- Gunnedah%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Gunnedah")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

HallsCreek <- HallsCreek%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Halls Creek")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Hobart <- Hobart%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Hobart")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

HornIsland <- HornIsland%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Horn Island")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Inverell <- Inverell%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Inverell")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

KalgoorlieBoulder <- KalgoorlieBoulder%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Kalgoorlie Boulder")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Kalumburu <- Kalumburu%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Kalumburu")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Karijini <- Karijini%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Karijini")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Katanning <- Katanning%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Katanning")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Kerang <- Kerang%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Kerang")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Kyancutta <- Kyancutta%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Kyancutta")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Larapuna <- Larapuna%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Larapuna")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Launceston <- Launceston%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Launceston")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Laverton <- Laverton%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Laverton")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Learmonth <- Learmonth%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Learmonth")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Longreach <- Longreach%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Longreach")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

LowHead <- LowHead%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Low Head")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Mackay <- Mackay%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Mackay")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

MarbleBar <- MarbleBar%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Marble Bar")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Marree <- Marree%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Marree")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Meekatharra <- Meekatharra%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Meekatharra")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Melbourne <- Melbourne%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Melbourne")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Merredin <- Merredin%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Merredin")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Mildura <- Mildura%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Mildura")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Miles <- Miles%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Miles")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Morawa <- Morawa%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Morawa")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Moree <- Moree%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Moree")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

MoruyaHeads <- MoruyaHeads%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Moruya")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

MountGambier <- MountGambier%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Mount Gambier")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Nhill <- Nhill%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Nhill")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Normanton <- Normanton%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Normanton")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Nowra <- Nowra%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Nowra")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Nuriootpa <- Nuriootpa%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Nuriootpa")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Oodnadatta <- Oodnadatta%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Oodnadatta")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Orbost <- Orbost%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Orbost")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Palmerville <- Palmerville%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Palmerville")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

PerthAirport <- PerthAirport%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Perth Airport")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

PointPerpendicular <- PointPerpendicular%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Point Perpendicular")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

PortHedland <- PortHedland%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Port Hedland")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

PortLincoln <- PortLincoln%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Port Lincoln")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

PortMacquarie <- PortMacquarie%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Port Macquarie")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

RabbitFlat <- RabbitFlat%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Rabbit Flat")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

RichmondNSW <- RichmondNSW%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Richmond (NSW)")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

RichmondQLD <- RichmondQLD%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Richmond (QLD)")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Robe <- Robe%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Robe")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Rockhampton <- Rockhampton%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Rockhampton")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Rutherglen <- Rutherglen%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Rutherglen")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Sale <- Sale%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Sale")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Scone <- Scone%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Scone")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Snowtown <- Snowtown%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Snowtown")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

StGeorge <- StGeorge%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "St George")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Sydney <- Sydney%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Sydney")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Tarcoola <- Tarcoola%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Tarcoola")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

TennantCreek <- TennantCreek%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Tennant Creek")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Thargomindah <- Thargomindah%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Thargomindah")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Tibooburra <- Tibooburra%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Tibooburra")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Townsville <- Townsville%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Townsville")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

VictoriaRiverDowns <- VictoriaRiverDowns%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Victoria River Downs")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

WaggaWagga <- WaggaWagga%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Wagga Wagga")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Walgett <- Walgett%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Walgett")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Wandering <- Wandering%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Wandering")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Weipa <- Weipa%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Weipa")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

WestWyalong <- WestWyalong%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "West Wyalong")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Wilcannia <- Wilcannia%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Wilcannia")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Williamtown <- Williamtown%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Williamtown")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

WilsonsPromontory <- WilsonsPromontory%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Wilsons Promontory")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Woomera <- Woomera%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Woomera")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()

Yamba <- Yamba%>%
  filter(Year >= 1970, Year <= 2024, !(Day == 29 & Month == 2))%>%
  rename(station_num = Bureau.of.Meteorology.station.number)%>%
  rename(max_temp = Maximum.temperature..Degree.C.)%>%
  mutate(station_name = "Yamba")%>%
  select(station_name, station_num, Year, Month, Day, max_temp)%>%
  rename_days()


#count missing maximum temperatures

Data_to_check <- list(Adelaide, Albany, AliceSprings, Amberley, Barcaldine, Bathurst,
             Birdsville, Boulia, Bourke, Bridgetown, BrisbaneAirport, Broome, Bundaberg, Burketown,
             ButlersGorge, Cabramurra, Cairns, Camooweal, Canberra, CapeBorda, CapeBruny, CapeLeeuwin,
             CapeMoreton, CapeOtway, Carnarvon, Ceduna, Charleville, ChartersTowers, Cobar,
             CoffsHarbour, Cunderdin, Dalwallinu, Darwin, Deniliquin, Dubbo, Esperance,
             Eucla, Forrest, GaboIsland, Gayndah, Georgetown, Geraldton, Giles, Grove, Gunnedah,
             HallsCreek, Hobart, HornIsland, Inverell, KalgoorlieBoulder, Kalumburu,
             Karijini, Katanning, Kerang, Kyancutta, Larapuna, Launceston, Laverton, Learmonth,
             Longreach, LowHead, Mackay, MarbleBar, Marree, Meekatharra, Melbourne, Merredin,
             Mildura, Miles, Morawa, Moree, MoruyaHeads, MountGambier, Nhill, Normanton,
             Nowra, Nuriootpa, Oodnadatta, Orbost, Palmerville, PerthAirport, PointPerpendicular, PortHedland,
             PortLincoln, PortMacquarie, RabbitFlat, RichmondNSW, RichmondQLD, Robe, Rockhampton, 
             Rutherglen, Sale, Scone, Snowtown, StGeorge, Sydney, Tarcoola, TennantCreek,
             Thargomindah, Tibooburra, Townsville, VictoriaRiverDowns, WaggaWagga, Walgett,
             Wandering, Weipa, WestWyalong, Wilcannia, Williamtown, WilsonsPromontory,
             Woomera, Yamba
)

Data_names <- c("Adelaide", "Albany", "AliceSprings", "Amberley", "Barcaldine", "Bathurst","
                      Birdsville", "Boulia", "Bourke", "Bridgetown", "BrisbaneAirport", "Broome", "Bundaberg", "Burketown","
                      ButlersGorge", "Cabramurra", "Cairns", "Camooweal", "Canberra", "CapeBorda", "CapeBruny", "CapeLeeuwin","
                      CapeMoreton", "CapeOtway", "Carnarvon", "Ceduna", "Charleville", "ChartersTowers", "Cobar","
                      CoffsHarbour", "Cunderdin", "Dalwallinu", "Darwin", "Deniliquin", "Dubbo", "Esperance","
                      Eucla", "Forrest", "GaboIsland", "Gayndah", "Georgetown", "Geraldton", "Giles", "Grove", "Gunnedah","
                      HallsCreek", "Hobart", "HornIsland", "Inverell", "KalgoorlieBoulder", "Kalumburu","
                      Karijini", "Katanning", "Kerang", "Kyancutta", "Larapuna", "Launceston", "Laverton", "Learmonth","
                      Longreach", "LowHead", "Mackay", "MarbleBar", "Marree", "Meekatharra", "Melbourne", "Merredin","
                      Mildura", "Miles", "Morawa", "Moree", "MoruyaHeads", "MountGambier", "Nhill", "Normanton","
                      Nowra", "Nuriootpa", "Oodnadatta", "Orbost", "Palmerville", "PerthAirport", "PointPerpendicular", "PortHedland","
                      PortLincoln", "PortMacquarie", "RabbitFlat", "RichmondNSW", "RichmondQLD", "Robe", "Rockhampton", "
                      Rutherglen", "Sale", "Scone", "Snowtown", "StGeorge", "Sydney", "Tarcoola", "TennantCreek","
                      Thargomindah", "Tibooburra", "Townsville", "VictoriaRiverDowns", "WaggaWagga", "Walgett","
                      Wandering", "Weipa", "WestWyalong", "Wilcannia", "Williamtown", "WilsonsPromontory","
                      Woomera", "Yamba"
)

count_na <- function(data) {
  sum(is.na(data$max_temp))
}

check_na <- data.frame("Station_name" = Data_names, "num_missing" = sapply(Data_to_check, count_na))

#palmerville later removed from analysis due to gap in data, so station with most missing is Burketown
max_percent_na <- 2070/ 19882

#5 of the 7 removed stations listed in over 5% missing, only 
over_0.05_missing <- filter(check_na, num_missing >= 0.05*19882)

