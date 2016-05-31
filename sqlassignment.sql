1)



select CountryLanguage.CountryCode,count(CountryLanguage.Language)
from Country,CountryLanguage WHERE CountryLanguage.CountryCode=Country.Code GROUP by CountryLanguage.CountryCode HAVING COUNT(CountryLanguage.Language)=
(
SELECT MAX(cnt.count)from
(
SELECT   
 CountryLanguage.CountryCode AS contr,
 count(CountryLanguage.Language) As count
FROM
  `CountryLanguage`,
  Country
WHERE
  CountryLanguage.CountryCode = Country.Code
group by CountryLanguage.CountryCode)cnt)
+-------------+---------------------------------+
| CountryCode | count(CountryLanguage.Language) |
+-------------+---------------------------------+
| CAN         |                              12 |
| CHN         |                              12 |
| IND         |                              12 |
| RUS         |                              12 |
| USA         |                              12 |
+-------------+---------------------------------+
5 rows in set (0.29 sec)






2)
mysql> select coun.name,city.name,max(city.population) from Country coun,City city where coun.Code=city.CountryCode group by coun.name;
+---------------------------------------+------------------------------------+----------------------+
| name                                  | name                               | max(city.population) |
+---------------------------------------+------------------------------------+----------------------+
| Afghanistan                           | Kabul                              |              1780000 |
| Albania                               | Tirana                             |               270000 |
| Algeria                               | Alger                              |              2168000 |
| American Samoa                        | Tafuna                             |                 5200 |
| Andorra                               | Andorra la Vella                   |                21189 |
| Angola                                | Luanda                             |              2022000 |
| Anguilla                              | South Hill                         |                  961 |
| Antigua and Barbuda                   | Saint John´s                       |                24000 |
| Argentina                             | Buenos Aires                       |              2982146 |
| Armenia                               | Yerevan                            |              1248700 |
| Aruba                                 | Oranjestad                         |                29034 |
| Australia                             | Sydney                             |              3276207 |
| Austria                               | Wien                               |              1608144 |
| Azerbaijan                            | Baku                               |              1787800 |
| Bahamas                               | Nassau                             |               172000 |
| Bahrain                               | al-Manama                          |               148000 |
| Bangladesh                            | Dhaka                              |              3612850 |
| Barbados                              | Bridgetown                         |                 6070 |
| Belarus                               | Minsk                              |              1674000 |
| Belgium                               | Antwerpen                          |               446525 |
| Belize                                | Belize City                        |                55810 |
| Benin                                 | Cotonou                            |               536827 |
| Bermuda                               | Saint George                       |                 1800 |
| Bhutan                                | Thimphu                            |                22000 |
| Bolivia                               | Santa Cruz de la Sierra            |               935361 |
| Bosnia and Herzegovina                | Sarajevo                           |               360000 |
| Botswana                              | Gaborone                           |               213017 |
| Brazil                                | São Paulo                          |              9968485 |
| Brunei                                | Bandar Seri Begawan                |                21484 |
| Bulgaria                              | Sofija                             |              1122302 |
| Burkina Faso                          | Ouagadougou                        |               824000 |
| Burundi                               | Bujumbura                          |               300000 |
| Cambodia                              | Phnom Penh                         |               570155 |
| Cameroon                              | Douala                             |              1448300 |
| Canada                                | Montréal                           |              1016376 |
| Cape Verde                            | Praia                              |                94800 |
| Cayman Islands                        | George Town                        |                19600 |
| Central African Republic              | Bangui                             |               524000 |
| Chad                                  | N´Djaména                          |               530965 |
| Chile                                 | Santiago de Chile                  |              4703954 |
| China                                 | Shanghai                           |              9696300 |
| Christmas Island                      | Flying Fish Cove                   |                  700 |
| Cocos (Keeling) Islands               | Bantam                             |                  503 |
| Colombia                              | Santafé de Bogotá                  |              6260862 |
| Comoros                               | Moroni                             |                36000 |
| Congo                                 | Brazzaville                        |               950000 |
| Congo, The Democratic Republic of the | Kinshasa                           |              5064000 |
| Cook Islands                          | Avarua                             |                11900 |
| Costa Rica                            | San José                           |               339131 |
| Côte dIvoire                         | Abidjan                            |              2500000 |
| Croatia                               | Zagreb                             |               706770 |
| Cuba                                  | La Habana                          |              2256000 |
| Cyprus                                | Nicosia                            |               195000 |
| Czech Republic                        | Praha                              |              1181126 |
| Denmark                               | København                          |               495699 |
| Djibouti                              | Djibouti                           |               383000 |
| Dominica                              | Roseau                             |                16243 |
| Dominican Republic                    | Santo Domingo de Guzmán            |              1609966 |
| East Timor                            | Dili                               |                47900 |
| Ecuador                               | Guayaquil                          |              2070040 |
| Egypt                                 | Cairo                              |              6789479 |
| El Salvador                           | San Salvador                       |               415346 |
| Equatorial Guinea                     | Malabo                             |                40000 |
| Eritrea                               | Asmara                             |               431000 |
| Estonia                               | Tallinn                            |               403981 |
| Ethiopia                              | Addis Abeba                        |              2495000 |
| Falkland Islands                      | Stanley                            |                 1636 |
| Faroe Islands                         | Tórshavn                           |                14542 |
| Fiji Islands                          | Suva                               |                77366 |
| Finland                               | Helsinki [Helsingfors]             |               555474 |
| France                                | Paris                              |              2125246 |
| French Guiana                         | Cayenne                            |                50699 |
| French Polynesia                      | Faaa                               |                25888 |
| Gabon                                 | Libreville                         |               419000 |
| Gambia                                | Serekunda                          |               102600 |
| Georgia                               | Tbilisi                            |              1235200 |
| Germany                               | Berlin                             |              3386667 |
| Ghana                                 | Accra                              |              1070000 |
| Gibraltar                             | Gibraltar                          |                27025 |
| Greece                                | Athenai                            |               772072 |
| Greenland                             | Nuuk                               |                13445 |
| Grenada                               | Saint George´s                     |                 4621 |
| Guadeloupe                            | Les Abymes                         |                62947 |
| Guam                                  | Tamuning                           |                 9500 |
| Guatemala                             | Ciudad de Guatemala                |               823301 |
| Guinea                                | Conakry                            |              1090610 |
| Guinea-Bissau                         | Bissau                             |               241000 |
| Guyana                                | Georgetown                         |               254000 |
| Haiti                                 | Port-au-Prince                     |               884472 |
| Holy See (Vatican City State)         | Città del Vaticano                 |                  455 |
| Honduras                              | Tegucigalpa                        |               813900 |
| Hong Kong                             | Kowloon and New Kowloon            |              1987996 |
| Hungary                               | Budapest                           |              1811552 |
| Iceland                               | Reykjavík                          |               109184 |
| India                                 | Mumbai (Bombay)                    |             10500000 |
| Indonesia                             | Jakarta                            |              9604900 |
| Iran                                  | Teheran                            |              6758845 |
| Iraq                                  | Baghdad                            |              4336000 |
| Ireland                               | Dublin                             |               481854 |
| Israel                                | Jerusalem                          |               633700 |
| Italy                                 | Roma                               |              2643581 |
| Jamaica                               | Spanish Town                       |               110379 |
| Japan                                 | Tokyo                              |              7980230 |
| Jordan                                | Amman                              |              1000000 |
| Kazakstan                             | Almaty                             |              1129400 |
| Kenya                                 | Nairobi                            |              2290000 |
| Kiribati                              | Bikenibeu                          |                 5055 |
| Kuwait                                | al-Salimiya                        |               130215 |
| Kyrgyzstan                            | Bishkek                            |               589400 |
| Laos                                  | Vientiane                          |               531800 |
| Latvia                                | Riga                               |               764328 |
| Lebanon                               | Beirut                             |              1100000 |
| Lesotho                               | Maseru                             |               297000 |
| Liberia                               | Monrovia                           |               850000 |
| Libyan Arab Jamahiriya                | Tripoli                            |              1682000 |
| Liechtenstein                         | Schaan                             |                 5346 |
| Lithuania                             | Vilnius                            |               577969 |
| Luxembourg                            | Luxembourg [Luxemburg/Lëtzebuerg]  |                80700 |
| Macao                                 | Macao                              |               437500 |
| Macedonia                             | Skopje                             |               444299 |
| Madagascar                            | Antananarivo                       |               675669 |
| Malawi                                | Blantyre                           |               478155 |
| Malaysia                              | Kuala Lumpur                       |              1297526 |
| Maldives                              | Male                               |                71000 |
| Mali                                  | Bamako                             |               809552 |
| Malta                                 | Birkirkara                         |                21445 |
| Marshall Islands                      | Dalap-Uliga-Darrit                 |                28000 |
| Martinique                            | Fort-de-France                     |                94050 |
| Mauritania                            | Nouakchott                         |               667300 |
| Mauritius                             | Port-Louis                         |               138200 |
| Mayotte                               | Mamoutzou                          |                12000 |
| Mexico                                | Ciudad de México                   |              8591309 |
| Micronesia, Federated States of       | Weno                               |                22000 |
| Moldova                               | Chisinau                           |               719900 |
| Monaco                                | Monte-Carlo                        |                13154 |
| Mongolia                              | Ulan Bator                         |               773700 |
| Montserrat                            | Plymouth                           |                 2000 |
| Morocco                               | Casablanca                         |              2940623 |
| Mozambique                            | Maputo                             |              1018938 |
| Myanmar                               | Rangoon (Yangon)                   |              3361700 |
| Namibia                               | Windhoek                           |               169000 |
| Nauru                                 | Yangor                             |                 4050 |
| Nepal                                 | Kathmandu                          |               591835 |
| Netherlands                           | Amsterdam                          |               731200 |
| Netherlands Antilles                  | Willemstad                         |                 2345 |
| New Caledonia                         | Nouméa                             |                76293 |
| New Zealand                           | Auckland                           |               381800 |
| Nicaragua                             | Managua                            |               959000 |
| Niger                                 | Niamey                             |               420000 |
| Nigeria                               | Lagos                              |              1518000 |
| Niue                                  | Alofi                              |                  682 |
| Norfolk Island                        | Kingston                           |                  800 |
| North Korea                           | Pyongyang                          |              2484000 |
| Northern Mariana Islands              | Garapan                            |                 9200 |
| Norway                                | Oslo                               |               508726 |
| Oman                                  | al-Sib                             |               155000 |
| Pakistan                              | Karachi                            |              9269265 |
| Palau                                 | Koror                              |                12000 |
| Palestine                             | Gaza                               |               353632 |
| Panama                                | Ciudad de Panamá                   |               471373 |
| Papua New Guinea                      | Port Moresby                       |               247000 |
| Paraguay                              | Asunción                           |               557776 |
| Peru                                  | Lima                               |              6464693 |
| Philippines                           | Quezon                             |              2173831 |
| Pitcairn                              | Adamstown                          |                   42 |
| Poland                                | Warszawa                           |              1615369 |
| Portugal                              | Lisboa                             |               563210 |
| Puerto Rico                           | San Juan                           |               434374 |
| Qatar                                 | Doha                               |               355000 |
| Réunion                               | Saint-Denis                        |               131480 |
| Romania                               | Bucuresti                          |              2016131 |
| Russian Federation                    | Moscow                             |              8389200 |
| Rwanda                                | Kigali                             |               286000 |
| Saint Helena                          | Jamestown                          |                 1500 |
| Saint Kitts and Nevis                 | Basseterre                         |                11600 |
| Saint Lucia                           | Castries                           |                 2301 |
| Saint Pierre and Miquelon             | Saint-Pierre                       |                 5808 |
| Saint Vincent and the Grenadines      | Kingstown                          |                17100 |
| Samoa                                 | Apia                               |                35900 |
| San Marino                            | Serravalle                         |                 4802 |
| Sao Tome and Principe                 | São Tomé                           |                49541 |
| Saudi Arabia                          | Riyadh                             |              3324000 |
| Senegal                               | Pikine                             |               855287 |
| Seychelles                            | Victoria                           |                41000 |
| Sierra Leone                          | Freetown                           |               850000 |
| Singapore                             | Singapore                          |              4017733 |
| Slovakia                              | Bratislava                         |               448292 |
| Slovenia                              | Ljubljana                          |               270986 |
| Solomon Islands                       | Honiara                            |                50100 |
| Somalia                               | Mogadishu                          |               997000 |
| South Africa                          | Cape Town                          |              2352121 |
| South Korea                           | Seoul                              |              9981619 |
| Spain                                 | Madrid                             |              2879052 |
| Sri Lanka                             | Colombo                            |               645000 |
| Sudan                                 | Omdurman                           |              1271403 |
| Suriname                              | Paramaribo                         |               112000 |
| Svalbard and Jan Mayen                | Longyearbyen                       |                 1438 |
| Swaziland                             | Mbabane                            |                61000 |
| Sweden                                | Stockholm                          |               750348 |
| Switzerland                           | Zürich                             |               336800 |
| Syria                                 | Damascus                           |              1347000 |
| Taiwan                                | Taipei                             |              2641312 |
| Tajikistan                            | Dushanbe                           |               524000 |
| Tanzania                              | Dar es Salaam                      |              1747000 |
| Thailand                              | Bangkok                            |              6320174 |
| Togo                                  | Lomé                               |               375000 |
| Tokelau                               | Fakaofo                            |                  300 |
| Tonga                                 | Nuku´alofa                         |                22400 |
| Trinidad and Tobago                   | Chaguanas                          |                56601 |
| Tunisia                               | Tunis                              |               690600 |
| Turkey                                | Istanbul                           |              8787958 |
| Turkmenistan                          | Ashgabat                           |               540600 |
| Turks and Caicos Islands              | Cockburn Town                      |                 4800 |
| Tuvalu                                | Funafuti                           |                 4600 |
| Uganda                                | Kampala                            |               890800 |
| Ukraine                               | Kyiv                               |              2624000 |
| United Arab Emirates                  | Dubai                              |               669181 |
| United Kingdom                        | London                             |              7285000 |
| United States                         | New York                           |              8008278 |
| Uruguay                               | Montevideo                         |              1236000 |
| Uzbekistan                            | Toskent                            |              2117500 |
| Vanuatu                               | Port-Vila                          |                33700 |
| Venezuela                             | Caracas                            |              1975294 |
| Vietnam                               | Ho Chi Minh City                   |              3980000 |
| Virgin Islands, British               | Road Town                          |                 8000 |
| Virgin Islands, U.S.                  | Charlotte Amalie                   |                13000 |
| Wallis and Futuna                     | Mata-Utu                           |                 1137 |
| Western Sahara                        | El-Aaiún                           |               169000 |
| Yemen                                 | Sanaa                              |               503600 |
| Yugoslavia                            | Beograd                            |              1204000 |
| Zambia                                | Lusaka                             |              1317000 |
| Zimbabwe                              | Harare                             |              1410000 |
+---------------------------------------+------------------------------------+----------------------+
232 rows in set (0.00 sec)



3)
a)
mysql> select name"Cities in TamilNadu" from City where state='Tamil nadu';
+---------------------+
| Cities in TamilNadu |
+---------------------+
| Chennai (Madras)    |
| Madurai             |
| Coimbatore          |
| Tiruchirapalli      |
| Salem               |
| Tiruppur (Tirupper) |
| Ambattur            |
| Thanjavur           |
| Tuticorin           |
| Nagar Coil          |
| Avadi               |
| Dindigul            |
| Vellore             |
| Tiruvottiyur        |
| Erode               |
| Cuddalore           |
| Kanchipuram         |
| Kumbakonam          |
| Tirunelveli         |
| Alandur             |
| Neyveli             |
| Rajapalaiyam        |
| Pallavaram          |
| Tiruvannamalai      |
| Tambaram            |
| Valparai            |
| Pudukkottai         |
| Palayankottai       |
+---------------------+
28 rows in set (0.01 sec)




b)
mysql> select sum(population)"Population of TamilNadu" from City where state='Tamil nadu';
+-------------------------+
| Population of TamilNadu |
+-------------------------+
|                 9872164 |
+-------------------------+
1 row in set (0.01 sec)


c)
mysql> select sum(population)"Population of Coimbatore,Tiruchirapalli,Salem " from City where state='Tamil Nadu' && (name='Coimbatore' || name='Tiruchirapalli' || name='Salem');
+------------------------------------------------+
| Population of Coimbatore,Tiruchirapalli,Salem  |
+------------------------------------------------+
|                                        1570256 |
+------------------------------------------------+
1 row in set (0.01 sec)


4)


mysql> select name,population from City where name in ('Madurai','Salem','Tirunelveli','Erode','Coimbatore')  order by case name when 'Madurai' then 1 when 'Coimbatore' then 2 when 'Tirunelveli' then 3 when 'Salem' then 4 when 'Erode' then 5 end;
+-------------+------------+
| name        | population |
+-------------+------------+
| Madurai     |     977856 |
| Coimbatore  |     816321 |
| Tirunelveli |     135825 |
| Salem       |     366712 |
| Salem       |     136924 |
| Erode       |     159232 |
+-------------+------------+
6 rows in set (0.00 sec)
