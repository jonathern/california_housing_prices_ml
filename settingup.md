## Setting up

### Kaggle Authentication Setup

To download datasets using the Kaggle API, you must first enable authentication. Follow these steps:

1. **Create a Kaggle account**  
   Go to [https://www.kaggle.com](https://www.kaggle.com) and sign up or log in.

2. **Generate an API token**  
   - Click on your profile picture (top right) → *Account*.  
   - Scroll down to the **API** section.  
   - Click **Create New API Token**.  
   - This will download a file named `kaggle.json`.

3. **Place the token in the correct location**  
   - On Linux/Mac: move `kaggle.json` to `~/.kaggle/`  
   - On Windows: move `kaggle.json` to `C:\Users\<YourUsername>\.kaggle\`  
   - Ensure the file has proper permissions:  
     ```bash
     chmod 600 ~/.kaggle/kaggle.json
     ```

4. **Verify installation**  
   Run the following command to confirm authentication works:  
   ```bash
   kaggle datasets list -s housing

### Downloading the Dataset Using cURL

Run the script in `scripts/download_california_housing.sh` to download and store the data csv in `data/raw`
