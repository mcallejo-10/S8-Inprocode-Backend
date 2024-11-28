import { DataTypes } from "sequelize";
import db from "../db/connections";

const Evento = db.define("eventos", {
    title: {
        type: DataTypes.STRING,
    },
    description: {
        type: DataTypes.STRING,
    },   
    startAt: {
        type: DataTypes.STRING,
    },
    endAt: {
        type: DataTypes.STRING,
    },
    allDay: {
        type: DataTypes.BOOLEAN
    }
},
{
    createdAt: false,
    updatedAt: false
}
)

export default Evento;