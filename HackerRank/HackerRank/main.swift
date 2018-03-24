//
//  main.swift
//  HackerRank
//
//  Created by rahul mahajan on 16/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation

let numbers = "0123456789"
let lower_case = "abcdefghijklmnopqrstuvwxyz"
let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let special_characters = "!@#$%^&*()-+"


//Reduced string
var ip = ["aaabccddd","aa","baab","a"]
for s in ip{
    reduce(string: s)
}

//strong password
var spIp = ["Ab1","#HackerRank","4700"]
for s in spIp{
    print(isStrong(password: s))
}


var string = "NUEVO LEON, Austin-Bergstrom Int’1 Airport\u{01}, Austin. TX 78719\u{03}, (512) 382-2340, 1/7/15, #839273, 5:13 PM, Server: A FLORES, Brisket Tacos炢, $14.49, Coke, $2.50, • Subtotal+, $16.99, | Tax (, (8.25%), $1.40, $18.39"

string = "lûRflNTE, da bn i no, Graf-Adolf-Str /bí, 40210 DLisseldi r fþ, Telefon 0211 / 302 OC, Rechnung翿, lisch i, 11.00, Pasta, 9 00, Pasta, 2 50, Insalata, 4 00, Uein, 2 00, S Pei legnno 0 251, 28 50, Unsatz 1R, nuSTl 19 I翿, 4 55, Netto 1, 23 95, Gesantrech -Bctrag, 28 50, Bar EURO, Z8.50, Rechnungs-Numrncr 15, 21-10-10"

string = "7CIll,v,Aroyouamombor?,AESPONSIBLELUXURY\u{01},Enrollnoworquoteyour䉐,,membershipnumberto,/,ITCGARDINI/\\,credit\"GreenPotni»\',toyouroccowni,bengalohj,I\\|K>iOIJJCHOSllon.l,INFORMATIONINVOICE,Mr.HimanshuTewari,-TowersBalconyDoubleNonSmoking,RoomType￿,J-5/223.GaliNo-Ii,-1536,Room#,WestSagarpur,-07-SEP-1423:59,Hours,Arrival,NewDelhiDL110045,-10-SEP-14,Hours,Departure,-1/0,Pax,AppleComputers,-INK11500,RoomRatep,ConfirmationIInvoice#*5644888,EmailId-htcwari@gmail.com,Staypointscreditedtoyourcard;CITCCI4A9I4I,LuxuryTax#L04312022TIN#29780085331ServiceTaxRegistrationKAAACI595OLSTO52PAN«AAACI5950L,Debit,Date,Description,Reference,(AmountinINRi,13,747.84,07-09-14AppleComputersContractedRate,13,747.84,08-09-14z\\pplcComputersContractedRate,13,747.84,09-09-14AppleComputersContractedRatee,41.243.52,09-09-14AmericanExpressCard,XXXXXXXXXXXI004X3CXX,4U43.52,41,243.52,Total,0.00INR,Balance,34.500.00INR,RoomCharges,Food&Beverage,0.00INR0,Other,0.00INR0,Tax,6.743.52INR,BillingInstructionsInformation-,Iagreethatmyliabilityforthisbillisnotwaivedandagreetobeheldpersonallyliableintheeventthattheindicatedperson,companyorassociationfails,topayforanyorthefullamountofthesecharges.Ialsoagreethatallchargescontainedinthisaccountarccorrectandanydisputesorrequestsforcopiesl,ofchargesmustbemadewithinfivedaysofmydeparture.,Av,5,Moatevohdoieyour,Mr.HinunshuTcwari,m«fnb«rth(pnumber&,emoil»dloeniu/ecredilof,po«nl»toyou*OCCOunt.,r,«:6065036,PageIof1,PrintedAt•.09-SEP-1421:04Hours,PrintedBy:z\\shuKumar,’YoucreateaPositiveFootprintuhenyoustaywithus.BecauseITCistheonlycompanyintheworldofitssize,toachievethethreemajorglobalenvironmental,distinctionsofbeingwaterpositive,carbonpositiveandsolidwasterecyclingpositive\",CorporateIdentityNumber;LIÔOOSWBIOIOPLCOOIOKS,c-mail;cnduringvaluc\'S.ilc.in,Visitu.vatwww.iKportal.com,Visitusat;tvww.itcportal.com•CorporateIdentityNumber:L16005WBI910PLC001985,RegisteredOffice:ITCLimited.VirginiaHouse,37JawaharlalNehruRoad,Kolkata700071,India,=1,ResidencyRoad,Bengaluru560025,Indiaid+918022119898fax+918022119999,Email;itcgardeniatÿitchotels.in.Visitusatwww.ilchotels.in.,IfC(iardenio.Btngaluru-itLuxuryCollectionhotelisindependentlyonncdandoperatedbyITCLimitedandoperatedunderlicencefromSheratonhiternotii"


let data = (string.components(separatedBy: CharacterSet.decimalDigits.inverted)).filter { (str) -> Bool in
    if !str.isEmpty, let n = Int(str),n >= 100000 , n <= 999999{
        return true
    }
    return false
}
print(data)


//NSDateComponents *components;
//NSInteger days;
//
//components = [[NSCalendar currentCalendar] components: NSDayCalendarUnit
//    fromDate: startDate toDate: endDate options: 0];
//days = [components day];


let today = Date()
let tom = today.addingTimeInterval(TimeInterval(86400*4))
let comps = Calendar.current.dateComponents([Calendar.Component.day], from: today
    , to: tom)
if let diff = comps.day{
    print(diff)
}


var textData = ["Hilton", "Garden Inn-", "Austin NW/Arboretum", "^cscrvaiions", "Name & Address", "^v\\v.austinnwartx)rcüflD.ha.com or I 877 STAY HGI", "TEWARI, HIMANSHU", "Room", "337/K1", "Arrival Daleᧀ", "8/27/2017 12:36:00 AM琉", "Departure Date", "8/29/2017 7:54:00 AM", "Adull/ChiW", "1/0", "Room Raie", "129.00", "Rate Plan:", "CACIS0", "HH »", "AL", "Car:", "Confirmation Number. 3374449289", "n", "8/29/2017", "Hilton", "DATE", "REFERENCE", "DESCRIPTION", "AMOUNT", "8^7/2017", "1631416", "•PANTRY", "S2.00", "WAiDORf", "8/27/2017", "1631465", "GUEST ROOM\u{01}", "ASIOtilK", "5129.00", "8/27/2017", "1631465", "CITY TAXO", "511.61", "8/27/2017", "1631465", "STATE TAX", "57.74", "CONRAD", "8/28/2017", "5129.00", "1631694", "GUEST ROOM", "8/28/2017", "1631694", "511.61", "CITY TAXO", "canopy\"", "57.74", "8/28/2017", "1631694", "STATE TAX", "(5298.70)", "8/29/2017", "1631800", "AX \"1004X", "50.00", "■\"BALANCE\"\"", "Hilton", "EXPENSE Rl EPORT SUMM/ RY", "STAY TOTAL", "8/28/2017", "8/27/2017", "CtRK)", "$296.70", "$148.35", "5148.35", "ROOM AND AX", "$2.00", "$0.00", "$2.00", "MISCELLANEOUS", "$298.70", "$148.35", "$150.35", "DAILY TOTA.", "O", "DOUBLÏTREE", "A", "TAPESTRV", "COLUCnOH", "0", "!", "BMHA8SY", "FOLIO NO/CHECK NO", "DATE OF CHARGE", "ACCOUNTNO", "406440 A", "8/29/2017", "AX-1004", "INITIAL", "AUTHORIZATION", "CARD MEMBER NAME", "577850", "TEWARI, HIMANSHU", "PURCHASES & SERVICES", "rui rxYwixr", "rsr aolxu Qflxr Aoua to n*>wn to c*ao hoc", "■ H’", "ESTABLISHMENT NO 4 LOCATION", "TAXES", "T1PS&", "Hilton", "Gnind Vacations", "-298.70", "TOTAI, AMOUNT", "CARD MEMBER\'S SIGNATURE", "— I Hilton I", "X", "r.iMM\'t", "ur win o« «nimi’in row a ( ash mrimn", "‘—HONORS—J", "m.. card uuu. not nr", "MEACIUNDIiC"]

if let completeStreetString = textData.filter({$0.contains("Confirmation Numbe")}).first,
    let index = textData.index(of: completeStreetString){
    print("****")
    for str in textData[index..<textData.count]{
        print(str)
    }
}

let test = "Registered Office. ITC Limited. Virginia House, 37 Jawaharlal Nehru Road, Kolkata 700 071, Indiaa"

if let range = test.range(of: "37 Jawaharlal Nehru Road"){
    let str = test[range.lowerBound..<test.endIndex]
    print(str)
}

var random = "Courtyard San Jose Campbell, COURTYARD, 655 Creekside Wayʦ, Marriott, Campbell, CA 95008 US, +1 408-626-9590, Summary of Charges, Guest Information, Dates of Stay, 03/04/2018-03/10/2018, Room number, 725, Guest number, 51556, Rewards Number, Group Number, Credits, Description, Reference, Charges, Date, Data Service, 03/04/2018, IB0725, 6.95, Data Service Rebate, XT0725, 03/04/2018, 6.95, ROOM CHARGE, 03/04/2018, RB725, 189.00, Occupancy Sales Tax, T1725, 03/04/2018, 22.68, Convention and Tourism Tax, T5725, 03/04/2018, 0.37, Data Service, 03/05/2018, IB0725, 6.95, XT0725, Data Service Rebate, 03/05/2018, 6.95, ROOM CHARGE, 03/05/2018, RB725, 225.00, Occupancy Sales Tax, T1725, 03/05/2018, 27.00, Convention and Tourism Tax, T5725, 03/05/2018, 0.44, ROOM CHARGE, 03/06/2018, RB725, 225.00, Occupancy Sales Tax, T1725, 03/06/2018, 27.00, Convention and Tourism Tax, 03/06/2018, T5725, 0.44, Data Service, 03/07/2018, IB0725, 6.95, Data Service Rebate, XT0725, 03/07/2018, 6.95, Restaurant Room Charge, FD6945, 03/07/2018, 14.65, Market Beverage , 03/07/2018, PJ001, 4.58, Sales Tax, 03/07/2018, T9001, 0.42, ROOM CHARGE, 03/07/2018, RB725, 225.00, Occupancy Sales Tax, T1725, 03/07/2018, 27.00, Convention and Tourism Tax, 03/07/2018, T5725, 0.44, Data Service, 03/08/2018, IB0725, 6.95, Data Service Rebate, XT0725, 03/08/2018, 6.95, Restaurant Room Charge, FD7054, 03/08/2018, 15.20, ROOM CHARGE, 03/08/2018, RB725, 225.00, Questions about your bill? Please contact your hotel directly at +1 408-626-9590, Page 1 of 2"

//"Seattle, WA 98101瀘"
// "1635 8th Ave瞠"
var set = CharacterSet(charactersIn : "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 .,/").inverted
let arr = random.components(separatedBy: set)
random = arr.filter({!$0.isEmpty}).joined(separator: ", ")
print("Random String:\n \(random)")

var unsortedArr = [2, 3, 2, 4, 5, 12, 2, 3, 3, 3, 12]

//{3, 3, 3, 3, 2, 2, 2, 12, 12, 4, 5}.
sortByFrequency(arr: &unsortedArr)

