from dataclasses import dataclass


@dataclass
class HigLlow:
    """Class for the strategy for high low"""

    def __init__(self) -> None:
        """Initializing of the class
        set connection between script and mt4
        Check if any trade is on the pair else get the high and low of the previous day and save it"""

    def monitor_trade(self):
        """ get trade of all pairs and check trade conditions"""

    def re_enter(self, conditon: str = "daily"):
        """The re-entery function"""

    def get_next_high_low(self):
        """Get the next low or high after a trade has closed"""

    def trailing_stop(self):
        """Trailing stop function"""

    def lot_calculation(self, percentage: int = 1):
        """lot size Calculation for every new Trades
        percentage: int, default 1"""

    def close_trade(self):
        """Close trade function"""
