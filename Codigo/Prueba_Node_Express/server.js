//En los scripts de el pk del server se añade el start con el nombre del servidor (el js que creamos)
//Para probar el server ejecutamos hacemos node<<nombre del servidor>> metemos en el buscador "localhost:<<numero del puerto>>"

const express = require('express');

const app = express(); 

const port = 3001; //el puerto por el que se comprueba todo

app.get('/', (req,res) => {  //req es la peticion y res la respuesta, como en jsp
    res.send({
        data:"Prueba de nodeJS" //Hay que enviar un objeto con los datos 
    });
})
app.listen(port,() =>{
    console.log("La app esta en linea");
})