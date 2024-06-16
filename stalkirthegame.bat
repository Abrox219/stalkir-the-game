@echo off
title stalkir the game
color 0a

:menu
cls 
echo Witaj, jesli chcesz przezyc, wpisz cyfre jeden 
echo 

set /p "cho=>"
if "%cho%"=="1" goto gra 

:gra 
cls
echo welcom:


echo Witaj, stalkirze
echo Otrzymujesz sygnal o nadchodzacej apokalipsie.
echo musisz teraz isc do jednego z dwoch dowow 1-dom1 2-dom2

echo  1. dom1 2. dom2

set kasa=0
set hp=100
set level = 1

set /p "cho=>"
if "%cho%"=="1" goto dom1
if "%cho%"=="2" goto dom2

:dom1
cls 
echo Zauwazyłes sus ruchy. Zanim zdazysz zareagowac, zostajesz zaatakowany przez mutanty(nauczycieli z twojej szkoly(powod ataku: uzywanie telefonu na lekcji)).
echo %nazwa%, niestety, nie udalo ci sie przetrwac . 
PING localhost -n 5 >NUL
goto exit

:dom2

cls 
echo Odkrywasz opuszczony obooz. Nagle z rogu wychodzi zmutowany pies(okazuje sie ze to twoj wlasny pies).
echo Udalo ci sie obronici uciec ale i tak straciles troche hp.
if %hp% lss -20 goto debet 
echo Twoje zdrowie wynosi %hp%
timeout /t 5
goto powrot

:powrot
set /a "hp=hp-20"
if %hp% leq 0 goto debet 
echo przezyles
echo twoje zdrowie: %hp%
echo poszedles do glownej bazy w twojej okolicy i okazalo sie
echo  ze masz kolejne zadanie  musisz wrocic do pierwszego domu i pokonac tego pierwszego domu i pokonac te mutanty 
echo wybierz swoja bron
echo 1.snajperka 2.pistolet
set /p "cho=>"
if "%cho%"=="1" goto pistolet
if "%cho%"=="2" goto karabin

:pistolet
cls
echo pistolet  byl mało efektywny i niestety mutanty cie pokonaly
echo niestety umierasz
timeout /t 6
goto exit

:karabin
cls
echo karabinem udalo ci se duzo zdialac i nawet zdobyles troche pieniedzy
set /a "kasa=kasa+55"
echo twoj stan kasty to: %kasa%
echo twoj stan zdrowia to %hp%
timeout /t 4
goto powrot2

:powrot2
echo liderzy bazy sa zachwyceni twoim sprytem hehe i twoim zaangazowaniem
echo chojnie sie wynagrodzono
set /a "kasa=kasa+68"
echo twoj stan kasty to: %kasa%
echo postanowiono tez sie wyslac do jednej z pieciu lekarek ktore sa w bazie przetrwania musisz wybrac jedna z nich
echo wybierz jedna z 5 
 
echo Jolanta cechy: Empatyczna, cierpliwa, zawsze gotowa do pomocy
echo Magdalena cechy: Bardzo kompetentna, szybka w podejmowaniu decyzji, energiczna.
echo  Barbara cechy:  Zawsze zachowuje spokoj pod presja, zdolna do utrzymania chlodnej glowy.
echo Katarzyna cechy: Pełna energii, zawsze gotowa do dzialania, umie radzic sobie w trudnych sytuacjach
echo ela Starannie analizuje sytuacje, podejmuje madre decyzje, sklonna do refleksji.
set /p "cho=>"
if "%cho%"=="1" goto Jolanta
if "%cho%"=="2" goto Magdalena
if "%cho%"=="3" goto Barbara
if "%cho%"=="4" goto Katarzyna
if "%cho%"=="5" goto ela 

:Jolanta
echo Jola niesety cie zadzgala
echo giniesz
timeout /t 4
goto exit

:Magdalena
echo Magda niestety zatrula cie 
echo giniesz 
timeout /t 5
goto exit

:Katarzyna
echo katarzyna podala ci proszki nassene
echo Katarzyna cie udusila
echo giniesz
timeout /t 5
goto exit 

:ela
echo Ela postanowila gdy na chwile  odwrociles uwage cie zastrzelic
echo giniesz
timeout /t 7
goto exit

:Barbara
echo Barbara cie normalnie wyleczyla
set /a "hp=hp+20"
echo twoje zdrowie: %hp%
timeout /t 4
goto menu3




:menu3
cls
echo przywodcy prosza sie o pojscie do sprzedawcy i kupienie apteczki
echo 1.Idziesz 2.czekasz na inne zlecenie
set /p "cho=>"
if "%cho%"=="1" goto Idziesz
if "%cho%"=="2" goto czekasz

:czekasz
cls
echo to czekaj 
timeout /t 10
goto menu4

:Idziesz
cls
echo poszles 
timeout /t 3 
echo i kupiles kosztowlao to cie 30zl
set /a "kasa=kasa-30"
timeout /t 3 
echo spolecznosc jest bardzo z ciebie zadowolona i zalicasz awans spoleczny
set /a "level=level+2"
echo twoj poziom to teraz %level%
timeout /t 10
goto menu4

:menu4
cls
echo dali ci zlecenie do  pogadanie z nowa osoba
idzesz czy nie?
1.idziesz 2.odmaiwasz
echo 1.idziesz 2.zostajesz
set /p "cho=>"
if "%cho%"=="1" goto Idziesz
if "%cho%"=="2" goto zostajesz 

:zostajesz
echo ok:>
timeout /t 4 
goto menu5


:Idziesz 
cls 
echo musisz porozmawiac z Frankiem na poczatek masz go zapytac o podstawowe dane wybiersz dana wypowiedz
timeout /t 2
echo dowiedziales sie ze Frank jest z innej bazy
echo podczas apokalipsy przydalo by sie wyciagnac od niego jak najwiecej informacji
echo jednak frank mowi ze musisz odszyfrowac jego zagadki zeby sie doiwedziec
timeout /t 1
echo zgadzasz sie
timeout /t 4
echo Zagadka  franka lodka+lodka+lodka = 12
echo lodka + kotwica + kotwica = 8
echo kotwica + gwiazda + gwiazda = 12
echo to ile  to lodka+kotwica+gwiazda

echo a = 11 b = 7 c = 15 d = 22

set /p "cho=>"
if "%cho%"=="a" goto jedenastka
if "%cho%"=="b" goto siodemka
if "%cho%"=="c" goto pietnaska
if "%cho%"=="d" goto dwadzeisciadwa

:jedenastka
echo gratulacje zdobyles informacje takie jak odleglosc,czlonkowie,przywodcy,plany innej bazy
echo przywodcy chojnie cie obdarowali
set /a "kasa=kasa+90"
echo twoja kasa teraz to: %kasa%
goto menu5



:siodemka

echo odpadasz
timeout /t 6
goto exit

:pietnastka
echo odpadasz
timeout /t 6
goto exit

:dwadzeisciadwa
echo odpadasz
timeout /t 6
goto exit



:menu5
echo witam zpowrotem w bazie!












:debet
echo Twoje zdrowie spadlo o -20.
PING localhost -n 50 >NUL
exit

