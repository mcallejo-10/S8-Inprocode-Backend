import { Request, Response } from "express";
import Theatre from "../models/teatro";
import { Sequelize } from "sequelize";

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
