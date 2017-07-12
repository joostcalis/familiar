Available keys in the objects array from funda:

AangebodenSindsTekst
AanmeldDatum
AantalBeschikbaar
AantalKamers
AantalKavels
Aanvaarding
Adres
Afstand
BronCode
ChildrenObjects
DatumAanvaarding
DatumOndertekeningAkte
Foto
FotoLarge
FotoLargest
FotoMedium
FotoSecure
GewijzigdDatum
GlobalId
GroupByObjectType
Heeft360GradenFoto
HeeftBrochure
HeeftOpenhuizenTopper
HeeftOverbruggingsgrarantie
HeeftPlattegrond
HeeftTophuis
HeeftVeiling
HeeftVideo
HuurPrijsTot
Huurprijs
HuurprijsFormaat
Id
InUnitsVanaf
IndProjectObjectType
IndTransactieMakelaarTonen
IsSearchable
IsVerhuurd
IsVerkocht
IsVerkochtOfVerhuurd
Koopprijs
KoopprijsFormaat
KoopprijsTot
MakelaarId
MakelaarNaam
MobileURL
Note
OpenHuis
Oppervlakte
Perceeloppervlakte
Postcode
Prijs
PrijsGeformatteerdHtml
PrijsGeformatteerdTextHuur
PrijsGeformatteerdTextKoop
Producten
Project
ProjectNaam
PromoLabel
PublicatieDatum
PublicatieStatus
SavedDate
Soort-aanbod
SoortAanbod
StartOplevering
TimeAgoText
TransactieAfmeldDatum
TransactieMakelaarId
TransactieMakelaarNaam
TypeProject
URL
VerkoopStatus
WGS84_X
WGS84_Y
WoonOppervlakteTot
Woonoppervlakte
Woonplaats
ZoekType

attributes example:

attrs = {
  :type=>"koop",
  :query=> {
    :basic_query => ["bussum"],
    :range => {
      :min => 0,
      :max => 250000
    }
  },
  :page_count=>0,
  :page_size=>25
}
