//cd api
//npm install express
//yarn add express nodemon mysql cors
//yarn add styled-components axios react-icons react-toastify
//(api) yarn start
//(frontend) yarn start
//node .\api\index.js


//https://www.youtube.com/watch?v=voXTVTW73E8&ab_channel=WillDev

import mysql from "mysql"

export const db = mysql.createConnection({
    host: "locahost",
    user: "root",
    password: "root",
    database: "crud"
})