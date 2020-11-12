# Installation :rocket:

::: danger WARNING

Currently, Safari is **_causing infinite loop issues with the hot reload_**. To save on our API expenses, **please use Google Chrome or run the backend locally**. Alternatively, just visit our site at [https://www.casafair.org/](https://www.casafair.org/) if you're just browsing.

:::

Follow this guide to install the development environment locally.

## macOS :apple:

You need `npm` which you can find guides to install [here](https://changelog.com/posts/install-node-js-with-homebrew-on-os-x) using [Homebrew](https://brew.sh/). Other than that, it's as simple as:

```bash
# Change directory to root Casafair folder:
$ cd casafair

# install dependencies: Run this on first run.
$ npm install

# Subsequently, to run on localhost:3000, run the below command:
$ npm run dev
```

## Windows

You need to download Node.js in your system [here](https://nodejs.org/en/download/). After that, follow these steps: 

```bash
# Change directory to root Casafair folder:
$ cd casafair

# install dependencies: Run this on first run.
$ npm install

# Subsequently, to run on localhost:3000, run the below command:
$ npm run dev
```

## Backend

To configure the backend for the first time, run `install_dev.sh`. This will install all necessary dependencies for the backend. Then, paste the code provided to you separately here:

```sh
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# COPY EXPORTS ENV VARS HERE
# HEREEEEE

# add in services here and change the folder name and app name below to your services, using "user" service as a sample

cd "$parent_path"/services/v1/user
python3 user.py &
```


Then run `run_dev.sh`. When completed, stop all services by running `stop_dev.sh`.

Change the frontend to use local backend instead. In the frontend folder, go to casafair/plugins/api.js

```js
// api.js
export const devBASE = "http://localhost";
export const prodBASE = "https://www.casafair.org/api/";

// export const BASE = prodBASE;    # comment this and change to devBASE to run your backend locally
export const BASE = devBASE;

export const USER = BASE == devBASE ? BASE + ":7001/user" : BASE + "user";
export const SHOP = BASE == devBASE ? BASE + ":7002/shop" : BASE + "shop";
export const ORDER = BASE == devBASE ? BASE + ":7003/order" : BASE + "order";
```