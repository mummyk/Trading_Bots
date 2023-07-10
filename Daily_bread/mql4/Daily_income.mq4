//+------------------------------------------------------------------+
//|                                                 Daily_income.mq4 |
//|                                   Copyright 2023, Uzo Group Ltd. |
//|                                               Authore:-  Chibuzo |
//|                                       https://www.uzotrading.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Uzo Group."
#property link      "https://www.uzotrading.com"
#property version   "1.00"
#property strict


/*
=======================================
=      Inputs and Global Varable      =
=======================================
*/

//--- External input parameters
// External input variables
extern double LotSize = 0.01;
extern int number_of_pips=12;
extern int number_of_days=1;
extern int ema_slow=14;
extern int ema_fast=7;
extern int mini_pips=30;

// Other global variables
int MagicNumber = 2442896;

/*
=========================================
= Get all Account information this is a =
=        constant in all my Ea          =
=========================================

*/




/*
==========================================
= calculate the lot size for the Account =
=  balance. 0.01 per 300 Account balance =
=========================================

*/



/*
=========================================
= Indicators calculations  > int 1 or 0 =
=========================================

*/
//--- add ema
double EmaFast=iMA(NULL,0,ema_fast,0,MODE_EMA,PRICE_CLOSE,1);
double EmaSlow=iMA(NULL,0,ema_slow,0,MODE_EMA,PRICE_CLOSE,1);

/*
========================================
= Get previous day candle high and low =
========================================
*/


/*
========================================
= check if trades are on get odertype  =
= and lot size. ==> dict{odertype:lot} =
========================================

*/

/*
=======================================
=  check is the lot size and order    =
=     are equal ==> 1=buy > sell      =
=  0 = buy == sell, -1= buy < sell    =
=======================================

*/

/*
=======================================
=      perform trading logic          =
=  ==> new trade or closed trades     =
= this also monitor/handle trades     =
=======================================
*/

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- create timer
   EventSetTimer(60);

//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
   EventKillTimer();

  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {



  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---

  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---

  }
