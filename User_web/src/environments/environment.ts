/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Foodies Full App Flutter
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2022-present initappz.
*/
// This file can be replaced during build by using the `fileReplacements` array.
// `ng build` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

export const environment = {
  production: true,
  baseURL: 'https://your-api.com/public/api/', // your API endpoint don't forgot to add public/api at the end of it
  mediaURL: 'https://your-api.com/public/storage/images/', // your api endpoint don't forgot to add public/storage/image at the end of it
  app_name: 'Foodies',
  websiteURL: 'https://initappz.com',
  websiteName: 'initappz',
  default_country_code: '91',
  firebase: {
    apiKey: "YOUR KEYS",
    authDomain: "YOUR KEYS",
    databaseURL: "YOUR KEYS",
    projectId: "YOUR KEYS",
    storageBucket: "YOUR KEYS",
    messagingSenderId: "YOUR KEYS",
    appId: "YOUR KEYS",
    measurementId: "YOUR KEYS"
  }
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/plugins/zone-error';  // Included with Angular CLI.
