# Data

This project uses historical NIFTY-50 stock data from the following Kaggle dataset:

https://www.kaggle.com/datasets/rohanrao/nifty50-stock-market-data

Short description
- The dataset contains daily OHLCV (Open, High, Low, Close, Volume) data for NIFTY-50 constituent stocks.
- The project uses data for these stocks: ADANIPORTS, AXISBANK, BAJAJ-AUTO, RELIANCE.

Download instructions (recommended)
1. Install the Kaggle CLI: pip install kaggle
2. Create a Kaggle API token from https://www.kaggle.com/ (Account -> Create API Token) and place the file at ~/.kaggle/kaggle.json with permissions 600.
3. Run the included download script from the repository root:

    bash data/download_data.sh

Manual download command (if you prefer):

    kaggle datasets download -d rohanrao/nifty50-stock-market-data -p data/ --unzip

Notes
- The repository does not include the raw dataset to keep the git history small. The script will download and unzip the files into the data/ directory.
- You may keep a small sample file (data/sample.csv) committed if you want quick examples to run without the full dataset.