// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

// The current database to use.
use('Supermercado');
db.categoria.find()
db.categoria.drop()

// Create a new document in the collection.
db.getCollection('supermercado').insertOne({

});

// Insertar categorías
use('Supermercado');
db.categoria.insertOne({ nombre: "aseo" });
db.categoria.insertOne({ nombre: "lacteos" });
db.categoria.insertOne({ nombre: "enlatados" });

// Insertar productos
use('Supermercado');
db.producto.insertOne({ nombre: "Jabon", precio: 2.500, descripcion: "Jabón de lavandería", unidades_disponibles: 200 });
db.producto.insertOne({ nombre: "Leche", precio: 3.200, descripcion: "Leche descremada", unidades_disponibles: 50 });
db.producto.insertOne({ nombre: "Atun", precio: 6.750, descripcion: "Atún en conserva", unidades_disponibles: 10 });

// Insertar canal
use('Supermercado');
db.canal.insertOne({ nombre: "whatsapp" });

// Insertar clientes
use('Supermercado');
db.cliente.insertOne({ nombre: "Juan Pérez", telefono: "123456789", direccion: "Calle 123-32" });
db.cliente.insertOne({ nombre: "María López", telefono: "987654321", direccion: "Avenida 56Asur" });
db.cliente.insertOne({ nombre: "Ana Castrillon", telefono: "7894561234", direccion: "Calle 45sur-64" });
db.cliente.insertOne({ nombre: "Victor Mejia", telefono: "3216549789", direccion: "Carrera 21-45a32" });
db.cliente.insertOne({ nombre: "Sofia Zapata", telefono: "7412589639", direccion: "Avenida 6-87" });

