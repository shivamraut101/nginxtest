const express = require('express')

const app = express()

app.get("/", (req,res)=>{
    res.send("Hii I am from nginx server")

})

app.listen(7777, ()=>{
    console.log("listenting at 7777")
})