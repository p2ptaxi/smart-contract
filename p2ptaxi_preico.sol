pragma solidity ^0.4.18;
/*
BURN all unsold tokens
ALL SOLD = 80% of TOTAL => investors
team => 15%
bonus => 5% 

minFillUp = 0.01 ETH

preIco
[0 week: 1 week) => +45% (11-17 dec)
[1 week: 3 week) => +40% (18-31 dec)
[3 week: 5 week) => +35% (01-14 jan)
[5 week: 7 week) => +30% (15-28 jan)
[7 week: 9 week) => +25% (29-30 jan)
softCap = 200 000 $
(total < softCap) && (time >= 9 week) => stop ICO & enable refund

ICO
softCAP = 2 000 000 $
hardCap = 8 000 000 $ 
[0 week: 1 week) => +30% (19-26 jan)
[1 week: 2 week) => +25% (27-02 feb)
[2 week: 3 week) => +20% (03-09 feb)
[3 week: 4 week) => +15% (10-16 feb)
[4 week: 5 week) => +10% (17-19 feb)

generate bonus tokens 
bonus = (ico*0.05)/0.80

team tokens freeaze -> 1 year (till 19-feb-2019)
team tokens = (ico*0.15)/0.80

auto pay via smartcontract
payout_from - eth address to make payout (every year)
payout_journal -> [year] -> {amount, payout address}
payout method -> address, amount to payout
*/

contract p2pTaxiPreIco {
    // 2PT token price is 50 cents
    uint public constant tokenPrice = 50;

    // BASE = 10^18
    uint public constant BASE = 1000000000000000000;
    
    uint public constant ETH2USDrate = 433;
    
    uint public constant preIcoStartTime = 1512950400;//11.12.2017 0:00:00 UTC
    uint public constant preIcoStopTime  = 1517270400;//30.01.2018 0:00:00 UTC
    uint public constant preIcoSoftCapUSD= 300000;// softCap = 300k$
    uint public constant preIcoSoftCap2PT= preIcoSoftCapUSD*2;// 2PT = 0.5 USD
    uint public constant preIcoSoftCapEth= preIcoSoftCapUSD*BASE/ETH2USDrate;//

}