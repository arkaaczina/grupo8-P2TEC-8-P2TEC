module.exports = (sequelize, dataTypes ) => {
    const alias = "Product";
    const cols = {
        name: dataTypes.STRING,
        descripcion: dataTypes.STRING,
        image: dataTypes.STRING,
        price: dataTypes.INTEGER,
        categoryId: dataTypes.INTEGER,
    }
    const Product = sequelize.define(alias, cols);
    Product.associate = function(models){
        Product.belongsTo(models.Category, {
                as: "category",
                foreingKey: "categoryId"
            });
    }

    return Product;
}