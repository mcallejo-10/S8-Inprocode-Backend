import { Request, Response } from "express";
import Theatre from "../models/teatro";
import { Sequelize, QueryTypes } from "sequelize";
import sequelize from "../db/connections";


export const getTheatres = async (req: Request, res: Response) => {
    const theatreList = await Theatre.findAll();

    res.json(theatreList);
};

export const getTheatre = async (req: Request, res: Response) => {
    const { id } = req.params;
    const theatre = await Theatre.findByPk(id);

    if (theatre) {
        res.json(theatre);
    } else {
        res.status(404).json({
            msg: `No existe un producto con el id ${id}.`,
        });
    }
};

export const deleteTheatre = async (req: Request, res: Response) => {
    const { id } = req.params;
    const theatre = await Theatre.findByPk(id);
    if (!theatre) {
        res.status(404).json({
            msg: `No existe un producto con el id ${id}.`,
        });
    } else {
        await theatre.destroy();
        res.json({
            msg: "El producto fue elimibado con exito",
        });
    }
};

export const postTheatre = async (req: Request, res: Response) => {
    const { body } = req;
    try {
        await Theatre.create(body)
        res.json({
            msg: "Theatre agregado con éxito"
        });
    } catch (error) {
        console.log(error);

        res.json({
            msg: "Ocurrió un error al agregar"
        });
    }


};

export const updateTheatre = async (req: Request, res: Response) => {
    const { body } = req;
    const { id } = req.params;

    try {
        const theatre = await Theatre.findByPk(id);

        if (theatre) {
            await theatre.update(body);
            res.json({
                msg: "Theatre actualizado con éxito"
            });
        } else {
            res.status(404).json({
                msg: `No existe un producto con el id ${id}.`,
            });
        }
    } catch (error) {
        console.log(error);

        res.json({
            msg: "Ocurrió un error al actualizar"
        });
    }
    
};

export const getAccessibility = async (req: Request, res: Response) => {
    const accessibilityList = await Theatre.findAll({
        attributes: [
            'accessible',
          [Sequelize.fn('COUNT', Sequelize.col('accessible')), 'count']
        ],
        group: ['accessible']
      });

    res.json(accessibilityList);
};


export const getSeatCount = async (req: Request, res: Response) => {
    const counts = await sequelize.query(`
        SELECT 
          SUM(CASE WHEN seat_count < 100 THEN 1 ELSE 0 END) AS less_than_100,
          SUM(CASE WHEN seat_count BETWEEN 100 AND 299 THEN 1 ELSE 0 END) AS between_100_and_300,
          SUM(CASE WHEN seat_count BETWEEN 300 AND 499 THEN 1 ELSE 0 END) AS between_300_and_500,
          SUM(CASE WHEN seat_count BETWEEN 500 AND 999 THEN 1 ELSE 0 END) AS between_500_and_999,
          SUM(CASE WHEN seat_count >= 1000 THEN 1 ELSE 0 END) AS greater_than_1000
        FROM salas;
      `, { type: QueryTypes.SELECT });
      res.json(counts);

};
