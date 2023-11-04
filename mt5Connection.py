from datetime import datetime
import pandas as pd
import MetaTrader5 as mt5
import logging

# Logging setings
FORMAT = '%(asctime)s %(levelname)-8s %(message)s'
logging.basicConfig(format=FORMAT)
logger = logging.getLogger('./MetaTrader5.log')

# Connect to Metatrader 5


class Mt5Connect:
    if not mt5.initialize():
        logger.critical('MetaTrader5 was unable to start')
        mt5.shutdown()
    else:
        logger.info('MetaTrader5 strated successfully')


Mt5Connect()
