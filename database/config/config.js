module.exports={
  "development": {
    "username": "root",
    "password": null,
    "database": "p2tec",
    "host": "127.0.0.1",
    "dialect": "mysql",
    "define":{ //no hace busqueda de create y data_id
      "paranoid" : true, //si encuentra deleted-at fecha de borrado
    }
  },
  "test": {
    "username": "root",
    "password": null,
    "database": "database_test",
    "host": "127.0.0.1",
    "dialect": "mysql"
  },
  "production": {
    "username": "root",
    "password": null,
    "database": "database_production",
    "host": "127.0.0.1",
    "dialect": "mysql"
  }
}