from backtesting import Backtest


class Testing:
    """Class for testing strategies"""

    def __init__(self, commission=0.04, amount=10, lot_size=0.01, increament=2, data=0, strategy=None, display=False) -> None:
        """Initialize the class"""
        self.commission = commission
        self.lot_size = lot_size
        self.increament = increament
        self.data = data
        self.strategy = strategy
        self.amount = amount
        self.disply = display

    def run_data(self):
        """Run the backtesting"""
        bt = Backtest(self.data, self.strategy, cash=self.amount,
                      commission=self.commission)
        stats = bt.run()
        if self.disply is True:
            bt.plot()
        return stats

    def run_optimize(self):
        """Optimize Trading strategies"""
        bt = Backtest(self.data, self.strategy, cash=self.amount,
                      commission=self.commission)
        stats = bt.optimize(n1=range(5, 30, 5),
                            n2=range(10, 70, 5),
                            maximize='Equity Final [$]',
                            constraint=lambda param: param.n1 < param.n2)
        optimal_value = stats._strategy
        if self.disply is True:
            bt.plot(plot_volume=False, plot_pl=False)

        return stats, optimal_value
