import { DataTypes } from "sequelize";
import db from "../db/connections";

const Theatre = db.define("salas", {
    name: {
        type: DataTypes.STRING,
    },
    address: {
        type: DataTypes.STRING,
    },
    phone: {
        type: DataTypes.STRING,
    },
    seat_count: {
        type: DataTypes.NUMBER,
    },
    accessible: {
        type: DataTypes.BOOLEAN,
    },
    latitude: {
        type: DataTypes.NUMBER,
    },
    longitude: {
        type: DataTypes.NUMBER,
    },


  

},
{
    createdAt: false,
    updatedAt: false
}
)

export default Theatre;