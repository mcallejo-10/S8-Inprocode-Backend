import express,  {Application, Request, Response} from "express";
import cors from 'cors';
import routesTeatro from '../routes/teatro';

import db from '../db/connections'


class Server {
    private app: express.Application;
    private port: string;


constructor() {    
    this.app = express();
    this.port = process.env.PORT || "3001";
    this.listen();
    this.middlewares();
    this.routes();
    this.dbConnect();
}

listen() {
    this.app.listen(this.port, () => {
      console.log(`Aplicación corriendo en el puerto ${this.port}`);
    });
  }

  routes() {
    this.app.get('/', (req:Request, res:Response) => {
      res.json({
        msg: 'API working'
      })
    })
    this.app.use('/api/teatro', routesTeatro) 
  }
  middlewares() {
    this.app.use(express.json()) 

    //Cors
    this.app.use(cors());

  }
  async dbConnect() {
    try {
      await db.authenticate();
      console.log('Base de datos conectada');    
    } catch(error) {
      console.log(error);
      console.log('Error al conectarse a la base de datos');   
    }
  }

}


export default Server;


