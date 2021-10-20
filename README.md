# golem-decomputing

1. install the yagna daemon using thee following command:
    
    ```
    curl -sSf https://join.golem.network/as-requestor | bash -
    ```

2. Start the yagna daemon using:

    ```
    yagna service run
    ```

3. Open another terminal or a new tab for the following steps.
    Generate the app-key to use as requestor using:

    ```
    yagna app-key create requestor

    ```

4. The app-key can be view again using:

    ```
    yagna app-key list
    ```

5. Get some funds to run the application on golem network

    ```
    yagna payment fund
    ```
    It takes some time to get the funds. Can verify if the funds have been received using:

    ```
    yagna payment status
    ```

6. Enable the daemon as requestor using:

    ```
    yagna payment init --sender
    ```

7. Open a new terminal in the folder with the requestor.py files or switch the new terminal/tab opened before to the folder. First need to set the yagna app key to use the daemon.

    ```
    export YAGNA_APPKEY=insert-the-32-char-app-key-here
    ```

8. Install the depencies using pip as the project requires and also install the following dependency
    
    ```
    pip install -U pip
    pip install requirements
    pip install yapapi
    ```

9. Run 
    ```
    python requestor.py
    ```