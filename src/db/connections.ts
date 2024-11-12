import { Sequelize } from "sequelize";

const sequelize = new Sequelize ('teatro', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
  });

  export default sequelize;