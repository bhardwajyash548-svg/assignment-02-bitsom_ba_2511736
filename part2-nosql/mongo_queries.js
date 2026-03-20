// OP1: insertMany() — insert all documents
db.products.insertMany([
  {
    product_id: "ELEC101",
    name: "Smartphone",
    category: "Electronics",
    price: 30000
  },
  {
    product_id: "CLOT201",
    name: "T-Shirt",
    category: "Clothing",
    price: 799
  },
  {
    product_id: "GROC301",
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: new Date("2024-12-01")
  }
]);

// OP2: find Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: "ELEC101" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex()
db.products.createIndex({ category: 1 });
// This improves performance for category-based queries

