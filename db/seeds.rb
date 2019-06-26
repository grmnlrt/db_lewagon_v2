# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

puts "Destroy all"

Sharing.destroy_all
DbSchema.destroy_all
User.destroy_all

puts "Create User"

damien    = User.create!(email: "damien@lewagon.com", password: "azerty")
thomas    = User.create!(email: "thomas@lewagon.com", password: "azerty")
germain   = User.create!(email: "germain@lewagon.com", password: "azerty")
alexandre = User.create!(email: "alexandre@lewagon.com", password: "azerty")

puts "Create Schema"

schema_damien = DbSchema.create!(
  user: damien,
  name: "Snailrisk",
  content: "<?xmlversion=\"1.0\"encoding=\"utf-8\"?><!--SQLXMLcreatedbyWWWSQLDesigner,https://github.com/ondras/wwwsqldesigner/--><!--ActiveURL:https://kitt.lewagon.com/db/928--><sql><datatypesdb=\"mysql\"><groupcolor=\"rgb(238,238,170)\"label=\"Numeric\"><typelabel=\"TINYINT\"length=\"0\"quote=\"\"sql=\"TINYINT\"/><typelabel=\"SMALLINT\"length=\"0\"quote=\"\"sql=\"SMALLINT\"/><typelabel=\"MEDIUMINT\"length=\"0\"quote=\"\"sql=\"MEDIUMINT\"/><typelabel=\"INT\"length=\"0\"quote=\"\"sql=\"INT\"/><typelabel=\"Integer\"length=\"0\"quote=\"\"sql=\"INTEGER\"/><typelabel=\"BIGINT\"length=\"0\"quote=\"\"sql=\"BIGINT\"/><typelabel=\"Decimal\"length=\"1\"quote=\"\"re=\"DEC\"sql=\"DECIMAL\"/><typelabel=\"Singleprecision\"length=\"0\"quote=\"\"sql=\"FLOAT\"/><typelabel=\"Doubleprecision\"length=\"0\"quote=\"\"re=\"DOUBLE\"sql=\"DOUBLE\"/></group><groupcolor=\"rgb(255,200,200)\"label=\"Character\"><typelabel=\"Char\"length=\"1\"quote=\"'\"sql=\"CHAR\"/><typelabel=\"Varchar\"length=\"1\"quote=\"'\"sql=\"VARCHAR\"/><typelabel=\"Text\"length=\"0\"quote=\"'\"re=\"TEXT\"sql=\"MEDIUMTEXT\"/><typelabel=\"Binary\"length=\"1\"quote=\"'\"sql=\"BINARY\"/><typelabel=\"Varbinary\"length=\"1\"quote=\"'\"sql=\"VARBINARY\"/><typelabel=\"BLOB\"length=\"0\"quote=\"'\"re=\"BLOB\"sql=\"BLOB\"/></group><groupcolor=\"rgb(200,255,200)\"label=\"Date&amp;Time\"><typelabel=\"Date\"length=\"0\"quote=\"'\"sql=\"DATE\"/><typelabel=\"Time\"length=\"0\"quote=\"'\"sql=\"TIME\"/><typelabel=\"Datetime\"length=\"0\"quote=\"'\"sql=\"DATETIME\"/><typelabel=\"Year\"length=\"0\"quote=\"\"sql=\"YEAR\"/><typelabel=\"Timestamp\"length=\"0\"quote=\"'\"sql=\"TIMESTAMP\"/></group><groupcolor=\"rgb(200,200,255)\"label=\"Miscellaneous\"><typelabel=\"ENUM\"length=\"1\"quote=\"\"sql=\"ENUM\"/><typelabel=\"SET\"length=\"1\"quote=\"\"sql=\"SET\"/><typelabel=\"Bit\"length=\"0\"quote=\"\"sql=\"bit\"/></group></datatypes><tablex=\"443\"y=\"217\"name=\"users\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"email\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"password\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"824\"y=\"206\"name=\"db_schemas\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"content\"null=\"1\"autoincrement=\"0\"><datatype>MEDIUMTEXT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"629\"y=\"43\"name=\"sharings\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><rowname=\"db_shema_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"db_schemas\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table></sql>"
)

schema_germain = DbSchema.create!(
  user: germain,
  name: "Slaplink",
  content: "<?xmlversion=\"1.0\"encoding=\"utf-8\"?><!--SQLXMLcreatedbyWWWSQLDesigner,https://github.com/ondras/wwwsqldesigner/--><!--ActiveURL:https://kitt.lewagon.com/db/928--><sql><datatypesdb=\"mysql\"><groupcolor=\"rgb(238,238,170)\"label=\"Numeric\"><typelabel=\"TINYINT\"length=\"0\"quote=\"\"sql=\"TINYINT\"/><typelabel=\"SMALLINT\"length=\"0\"quote=\"\"sql=\"SMALLINT\"/><typelabel=\"MEDIUMINT\"length=\"0\"quote=\"\"sql=\"MEDIUMINT\"/><typelabel=\"INT\"length=\"0\"quote=\"\"sql=\"INT\"/><typelabel=\"Integer\"length=\"0\"quote=\"\"sql=\"INTEGER\"/><typelabel=\"BIGINT\"length=\"0\"quote=\"\"sql=\"BIGINT\"/><typelabel=\"Decimal\"length=\"1\"quote=\"\"re=\"DEC\"sql=\"DECIMAL\"/><typelabel=\"Singleprecision\"length=\"0\"quote=\"\"sql=\"FLOAT\"/><typelabel=\"Doubleprecision\"length=\"0\"quote=\"\"re=\"DOUBLE\"sql=\"DOUBLE\"/></group><groupcolor=\"rgb(255,200,200)\"label=\"Character\"><typelabel=\"Char\"length=\"1\"quote=\"'\"sql=\"CHAR\"/><typelabel=\"Varchar\"length=\"1\"quote=\"'\"sql=\"VARCHAR\"/><typelabel=\"Text\"length=\"0\"quote=\"'\"re=\"TEXT\"sql=\"MEDIUMTEXT\"/><typelabel=\"Binary\"length=\"1\"quote=\"'\"sql=\"BINARY\"/><typelabel=\"Varbinary\"length=\"1\"quote=\"'\"sql=\"VARBINARY\"/><typelabel=\"BLOB\"length=\"0\"quote=\"'\"re=\"BLOB\"sql=\"BLOB\"/></group><groupcolor=\"rgb(200,255,200)\"label=\"Date&amp;Time\"><typelabel=\"Date\"length=\"0\"quote=\"'\"sql=\"DATE\"/><typelabel=\"Time\"length=\"0\"quote=\"'\"sql=\"TIME\"/><typelabel=\"Datetime\"length=\"0\"quote=\"'\"sql=\"DATETIME\"/><typelabel=\"Year\"length=\"0\"quote=\"\"sql=\"YEAR\"/><typelabel=\"Timestamp\"length=\"0\"quote=\"'\"sql=\"TIMESTAMP\"/></group><groupcolor=\"rgb(200,200,255)\"label=\"Miscellaneous\"><typelabel=\"ENUM\"length=\"1\"quote=\"\"sql=\"ENUM\"/><typelabel=\"SET\"length=\"1\"quote=\"\"sql=\"SET\"/><typelabel=\"Bit\"length=\"0\"quote=\"\"sql=\"bit\"/></group></datatypes><tablex=\"443\"y=\"217\"name=\"users\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"email\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"password\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"824\"y=\"206\"name=\"db_schemas\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"content\"null=\"1\"autoincrement=\"0\"><datatype>MEDIUMTEXT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"629\"y=\"43\"name=\"sharings\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><rowname=\"db_shema_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"db_schemas\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table></sql>"
)


schema_thomas = DbSchema.create!(
  user: thomas,
  name: "Stalkify",
  content: "<?xmlversion=\"1.0\"encoding=\"utf-8\"?><!--SQLXMLcreatedbyWWWSQLDesigner,https://github.com/ondras/wwwsqldesigner/--><!--ActiveURL:https://kitt.lewagon.com/db/928--><sql><datatypesdb=\"mysql\"><groupcolor=\"rgb(238,238,170)\"label=\"Numeric\"><typelabel=\"TINYINT\"length=\"0\"quote=\"\"sql=\"TINYINT\"/><typelabel=\"SMALLINT\"length=\"0\"quote=\"\"sql=\"SMALLINT\"/><typelabel=\"MEDIUMINT\"length=\"0\"quote=\"\"sql=\"MEDIUMINT\"/><typelabel=\"INT\"length=\"0\"quote=\"\"sql=\"INT\"/><typelabel=\"Integer\"length=\"0\"quote=\"\"sql=\"INTEGER\"/><typelabel=\"BIGINT\"length=\"0\"quote=\"\"sql=\"BIGINT\"/><typelabel=\"Decimal\"length=\"1\"quote=\"\"re=\"DEC\"sql=\"DECIMAL\"/><typelabel=\"Singleprecision\"length=\"0\"quote=\"\"sql=\"FLOAT\"/><typelabel=\"Doubleprecision\"length=\"0\"quote=\"\"re=\"DOUBLE\"sql=\"DOUBLE\"/></group><groupcolor=\"rgb(255,200,200)\"label=\"Character\"><typelabel=\"Char\"length=\"1\"quote=\"'\"sql=\"CHAR\"/><typelabel=\"Varchar\"length=\"1\"quote=\"'\"sql=\"VARCHAR\"/><typelabel=\"Text\"length=\"0\"quote=\"'\"re=\"TEXT\"sql=\"MEDIUMTEXT\"/><typelabel=\"Binary\"length=\"1\"quote=\"'\"sql=\"BINARY\"/><typelabel=\"Varbinary\"length=\"1\"quote=\"'\"sql=\"VARBINARY\"/><typelabel=\"BLOB\"length=\"0\"quote=\"'\"re=\"BLOB\"sql=\"BLOB\"/></group><groupcolor=\"rgb(200,255,200)\"label=\"Date&amp;Time\"><typelabel=\"Date\"length=\"0\"quote=\"'\"sql=\"DATE\"/><typelabel=\"Time\"length=\"0\"quote=\"'\"sql=\"TIME\"/><typelabel=\"Datetime\"length=\"0\"quote=\"'\"sql=\"DATETIME\"/><typelabel=\"Year\"length=\"0\"quote=\"\"sql=\"YEAR\"/><typelabel=\"Timestamp\"length=\"0\"quote=\"'\"sql=\"TIMESTAMP\"/></group><groupcolor=\"rgb(200,200,255)\"label=\"Miscellaneous\"><typelabel=\"ENUM\"length=\"1\"quote=\"\"sql=\"ENUM\"/><typelabel=\"SET\"length=\"1\"quote=\"\"sql=\"SET\"/><typelabel=\"Bit\"length=\"0\"quote=\"\"sql=\"bit\"/></group></datatypes><tablex=\"443\"y=\"217\"name=\"users\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"email\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"password\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"824\"y=\"206\"name=\"db_schemas\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"content\"null=\"1\"autoincrement=\"0\"><datatype>MEDIUMTEXT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"629\"y=\"43\"name=\"sharings\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><rowname=\"db_shema_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"db_schemas\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table></sql>"
)

schema_alexandre = DbSchema.create!(
  user: alexandre,
  name: "Talk.app",
  content: "<?xmlversion=\"1.0\"encoding=\"utf-8\"?><!--SQLXMLcreatedbyWWWSQLDesigner,https://github.com/ondras/wwwsqldesigner/--><!--ActiveURL:https://kitt.lewagon.com/db/928--><sql><datatypesdb=\"mysql\"><groupcolor=\"rgb(238,238,170)\"label=\"Numeric\"><typelabel=\"TINYINT\"length=\"0\"quote=\"\"sql=\"TINYINT\"/><typelabel=\"SMALLINT\"length=\"0\"quote=\"\"sql=\"SMALLINT\"/><typelabel=\"MEDIUMINT\"length=\"0\"quote=\"\"sql=\"MEDIUMINT\"/><typelabel=\"INT\"length=\"0\"quote=\"\"sql=\"INT\"/><typelabel=\"Integer\"length=\"0\"quote=\"\"sql=\"INTEGER\"/><typelabel=\"BIGINT\"length=\"0\"quote=\"\"sql=\"BIGINT\"/><typelabel=\"Decimal\"length=\"1\"quote=\"\"re=\"DEC\"sql=\"DECIMAL\"/><typelabel=\"Singleprecision\"length=\"0\"quote=\"\"sql=\"FLOAT\"/><typelabel=\"Doubleprecision\"length=\"0\"quote=\"\"re=\"DOUBLE\"sql=\"DOUBLE\"/></group><groupcolor=\"rgb(255,200,200)\"label=\"Character\"><typelabel=\"Char\"length=\"1\"quote=\"'\"sql=\"CHAR\"/><typelabel=\"Varchar\"length=\"1\"quote=\"'\"sql=\"VARCHAR\"/><typelabel=\"Text\"length=\"0\"quote=\"'\"re=\"TEXT\"sql=\"MEDIUMTEXT\"/><typelabel=\"Binary\"length=\"1\"quote=\"'\"sql=\"BINARY\"/><typelabel=\"Varbinary\"length=\"1\"quote=\"'\"sql=\"VARBINARY\"/><typelabel=\"BLOB\"length=\"0\"quote=\"'\"re=\"BLOB\"sql=\"BLOB\"/></group><groupcolor=\"rgb(200,255,200)\"label=\"Date&amp;Time\"><typelabel=\"Date\"length=\"0\"quote=\"'\"sql=\"DATE\"/><typelabel=\"Time\"length=\"0\"quote=\"'\"sql=\"TIME\"/><typelabel=\"Datetime\"length=\"0\"quote=\"'\"sql=\"DATETIME\"/><typelabel=\"Year\"length=\"0\"quote=\"\"sql=\"YEAR\"/><typelabel=\"Timestamp\"length=\"0\"quote=\"'\"sql=\"TIMESTAMP\"/></group><groupcolor=\"rgb(200,200,255)\"label=\"Miscellaneous\"><typelabel=\"ENUM\"length=\"1\"quote=\"\"sql=\"ENUM\"/><typelabel=\"SET\"length=\"1\"quote=\"\"sql=\"SET\"/><typelabel=\"Bit\"length=\"0\"quote=\"\"sql=\"bit\"/></group></datatypes><tablex=\"443\"y=\"217\"name=\"users\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"email\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"password\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"824\"y=\"206\"name=\"meals\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"content\"null=\"1\"autoincrement=\"0\"><datatype>MEDIUMTEXT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table><tablex=\"629\"y=\"43\"name=\"orders\"><rowname=\"id\"null=\"1\"autoincrement=\"1\"><datatype>TINYINT</datatype><default>NULL</default></row><rowname=\"user_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"users\"row=\"id\"/></row><rowname=\"meal_id\"null=\"1\"autoincrement=\"0\"><datatype>TINYINT</datatype><default>NULL</default><relationtable=\"meals\"row=\"id\"/></row><keytype=\"PRIMARY\"name=\"\"><part>id</part></key></table></sql>"
)

puts "Create Sharing"

Sharing.create!(
  user: damien,
  db_schema: schema_germain,
)

Sharing.create!(
  user: thomas,
  db_schema: schema_germain,
)

Sharing.create!(
  user: germain,
  db_schema: schema_alexandre,
)
