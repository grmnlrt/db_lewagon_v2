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
  content: %q$<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://localhost:3000/db_schemas/35 -->
<sql>
<datatypes db="postgresql">
  <group label="Numeric" color="rgb(238,238,170)">
    <type label="Integer" length="0" sql="INTEGER" re="INT" quote=""/>
    <type label="Small Integer" length="0" sql="SMALLINT" quote=""/>
    <type label="Big Integer" length="0" sql="BIGINT" quote=""/>
    <type label="Decimal" length="1" sql="DECIMAL" re="numeric" quote=""/>
    <type label="Serial" length="0" sql="SERIAL" re="SERIAL4" fk="Integer" quote=""/>
    <type label="Big Serial" length="0" sql="BIGSERIAL" re="SERIAL8" fk="Big Integer" quote=""/>
    <type label="Real" length="0" sql="BIGINT" quote=""/>
    <type label="Single precision" length="0" sql="FLOAT" quote=""/>
    <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
  </group>

  <group label="Character" color="rgb(255,200,200)">
    <type label="Char" length="1" sql="CHAR" quote="'"/>
    <type label="Varchar" length="1" sql="VARCHAR" re="CHARACTER VARYING" quote="'"/>
    <type label="Text" length="0" sql="TEXT" quote="'"/>
    <type label="Binary" length="1" sql="BYTEA" quote="'"/>
    <type label="Boolean" length="0" sql="BOOLEAN" quote="'"/>
  </group>

  <group label="Date &amp; Time" color="rgb(200,255,200)">
    <type label="Date" length="0" sql="DATE" quote="'"/>
    <type label="Time" length="1" sql="TIME" quote="'"/>
    <type label="Time w/ TZ" length="0" sql="TIME WITH TIME ZONE" quote="'"/>
    <type label="Interval" length="1" sql="INTERVAL" quote="'"/>
    <type label="Timestamp" length="1" sql="TIMESTAMP" quote="'"/>
    <type label="Timestamp w/ TZ" length="0" sql="TIMESTAMP WITH TIME ZONE" quote="'"/>
    <type label="Timestamp wo/ TZ" length="0" sql="TIMESTAMP WITHOUT TIME ZONE" quote="'"/>
  </group>

  <group label="Miscellaneous" color="rgb(200,200,255)">
    <type label="XML" length="1" sql="XML" quote="'"/>
    <type label="Bit" length="1" sql="BIT" quote="'"/>
    <type label="Bit Varying" length="1" sql="VARBIT" re="BIT VARYING" quote="'"/>
    <type label="Inet Host Addr" length="0" sql="INET" quote="'"/>
    <type label="Inet CIDR Addr" length="0" sql="CIDR" quote="'"/>
    <type label="Geometry" length="0" sql="GEOMETRY" quote="'"/>
  </group>
</datatypes><table x="707" y="179" name="tests">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>
$
)

schema_germain = DbSchema.create!(
  user: germain,
  name: "Slaplink",
  content: %q$<?xmlversion="1.0"encoding="utf-8"?><!--SQLXMLcreatedbyWWWSQLDesigner,https://github.com/ondras/wwwsqldesigner/--><!--ActiveURL:https://kitt.lewagon.com/db/928--><sql><datatypesdb="mysql"><groupcolor="rgb(238,238,170)"label="Numeric"><typelabel="TINYINT"length="0"quote=""sql="TINYINT"/><typelabel="SMALLINT"length="0"quote=""sql="SMALLINT"/><typelabel="MEDIUMINT"length="0"quote=""sql="MEDIUMINT"/><typelabel="INT"length="0"quote=""sql="INT"/><typelabel="Integer"length="0"quote=""sql="INTEGER"/><typelabel="BIGINT"length="0"quote=""sql="BIGINT"/><typelabel="Decimal"length="1"quote=""re="DEC"sql="DECIMAL"/><typelabel="Singleprecision"length="0"quote=""sql="FLOAT"/><typelabel="Doubleprecision"length="0"quote=""re="DOUBLE"sql="DOUBLE"/></group><groupcolor="rgb(255,200,200)"label="Character"><typelabel="Char"length="1"quote="'"sql="CHAR"/><typelabel="Varchar"length="1"quote="'"sql="VARCHAR"/><typelabel="Text"length="0"quote="'"re="TEXT"sql="MEDIUMTEXT"/><typelabel="Binary"length="1"quote="'"sql="BINARY"/><typelabel="Varbinary"length="1"quote="'"sql="VARBINARY"/><typelabel="BLOB"length="0"quote="'"re="BLOB"sql="BLOB"/></group><groupcolor="rgb(200,255,200)"label="Date&amp;Time"><typelabel="Date"length="0"quote="'"sql="DATE"/><typelabel="Time"length="0"quote="'"sql="TIME"/><typelabel="Datetime"length="0"quote="'"sql="DATETIME"/><typelabel="Year"length="0"quote=""sql="YEAR"/><typelabel="Timestamp"length="0"quote="'"sql="TIMESTAMP"/></group><groupcolor="rgb(200,200,255)"label="Miscellaneous"><typelabel="ENUM"length="1"quote=""sql="ENUM"/><typelabel="SET"length="1"quote=""sql="SET"/><typelabel="Bit"length="0"quote=""sql="bit"/></group></datatypes><tablex="443"y="217"name="users"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="email"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="password"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default></row><keytype="PRIMARY"name=""><part>id</part></key></table><tablex="824"y="206"name="db_schemas"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="content"null="1"autoincrement="0"><datatype>MEDIUMTEXT</datatype><default>NULL</default></row><rowname="user_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="users"row="id"/></row><keytype="PRIMARY"name=""><part>id</part></key></table><tablex="629"y="43"name="sharings"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="user_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="users"row="id"/></row><rowname="db_shema_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="db_schemas"row="id"/></row><keytype="PRIMARY"name=""><part>id</part></key></table></sql>$
)


schema_thomas = DbSchema.create!(
  user: thomas,
  name: "Stalkify",
  content: %q$<?xmlversion="1.0"encoding="utf-8"?><!--SQLXMLcreatedbyWWWSQLDesigner,https://github.com/ondras/wwwsqldesigner/--><!--ActiveURL:https://kitt.lewagon.com/db/928--><sql><datatypesdb="mysql"><groupcolor="rgb(238,238,170)"label="Numeric"><typelabel="TINYINT"length="0"quote=""sql="TINYINT"/><typelabel="SMALLINT"length="0"quote=""sql="SMALLINT"/><typelabel="MEDIUMINT"length="0"quote=""sql="MEDIUMINT"/><typelabel="INT"length="0"quote=""sql="INT"/><typelabel="Integer"length="0"quote=""sql="INTEGER"/><typelabel="BIGINT"length="0"quote=""sql="BIGINT"/><typelabel="Decimal"length="1"quote=""re="DEC"sql="DECIMAL"/><typelabel="Singleprecision"length="0"quote=""sql="FLOAT"/><typelabel="Doubleprecision"length="0"quote=""re="DOUBLE"sql="DOUBLE"/></group><groupcolor="rgb(255,200,200)"label="Character"><typelabel="Char"length="1"quote="'"sql="CHAR"/><typelabel="Varchar"length="1"quote="'"sql="VARCHAR"/><typelabel="Text"length="0"quote="'"re="TEXT"sql="MEDIUMTEXT"/><typelabel="Binary"length="1"quote="'"sql="BINARY"/><typelabel="Varbinary"length="1"quote="'"sql="VARBINARY"/><typelabel="BLOB"length="0"quote="'"re="BLOB"sql="BLOB"/></group><groupcolor="rgb(200,255,200)"label="Date&amp;Time"><typelabel="Date"length="0"quote="'"sql="DATE"/><typelabel="Time"length="0"quote="'"sql="TIME"/><typelabel="Datetime"length="0"quote="'"sql="DATETIME"/><typelabel="Year"length="0"quote=""sql="YEAR"/><typelabel="Timestamp"length="0"quote="'"sql="TIMESTAMP"/></group><groupcolor="rgb(200,200,255)"label="Miscellaneous"><typelabel="ENUM"length="1"quote=""sql="ENUM"/><typelabel="SET"length="1"quote=""sql="SET"/><typelabel="Bit"length="0"quote=""sql="bit"/></group></datatypes><tablex="443"y="217"name="users"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="email"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="password"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default></row><keytype="PRIMARY"name=""><part>id</part></key></table><tablex="824"y="206"name="db_schemas"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="content"null="1"autoincrement="0"><datatype>MEDIUMTEXT</datatype><default>NULL</default></row><rowname="user_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="users"row="id"/></row><keytype="PRIMARY"name=""><part>id</part></key></table><tablex="629"y="43"name="sharings"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="user_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="users"row="id"/></row><rowname="db_shema_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="db_schemas"row="id"/></row><keytype="PRIMARY"name=""><part>id</part></key></table></sql>$
)

schema_alexandre = DbSchema.create!(
  user: alexandre,
  name: "Talk.app",
  content: %q$<?xmlversion="1.0"encoding="utf-8"?><!--SQLXMLcreatedbyWWWSQLDesigner,https://github.com/ondras/wwwsqldesigner/--><!--ActiveURL:https://kitt.lewagon.com/db/928--><sql><datatypesdb="mysql"><groupcolor="rgb(238,238,170)"label="Numeric"><typelabel="TINYINT"length="0"quote=""sql="TINYINT"/><typelabel="SMALLINT"length="0"quote=""sql="SMALLINT"/><typelabel="MEDIUMINT"length="0"quote=""sql="MEDIUMINT"/><typelabel="INT"length="0"quote=""sql="INT"/><typelabel="Integer"length="0"quote=""sql="INTEGER"/><typelabel="BIGINT"length="0"quote=""sql="BIGINT"/><typelabel="Decimal"length="1"quote=""re="DEC"sql="DECIMAL"/><typelabel="Singleprecision"length="0"quote=""sql="FLOAT"/><typelabel="Doubleprecision"length="0"quote=""re="DOUBLE"sql="DOUBLE"/></group><groupcolor="rgb(255,200,200)"label="Character"><typelabel="Char"length="1"quote="'"sql="CHAR"/><typelabel="Varchar"length="1"quote="'"sql="VARCHAR"/><typelabel="Text"length="0"quote="'"re="TEXT"sql="MEDIUMTEXT"/><typelabel="Binary"length="1"quote="'"sql="BINARY"/><typelabel="Varbinary"length="1"quote="'"sql="VARBINARY"/><typelabel="BLOB"length="0"quote="'"re="BLOB"sql="BLOB"/></group><groupcolor="rgb(200,255,200)"label="Date&amp;Time"><typelabel="Date"length="0"quote="'"sql="DATE"/><typelabel="Time"length="0"quote="'"sql="TIME"/><typelabel="Datetime"length="0"quote="'"sql="DATETIME"/><typelabel="Year"length="0"quote=""sql="YEAR"/><typelabel="Timestamp"length="0"quote="'"sql="TIMESTAMP"/></group><groupcolor="rgb(200,200,255)"label="Miscellaneous"><typelabel="ENUM"length="1"quote=""sql="ENUM"/><typelabel="SET"length="1"quote=""sql="SET"/><typelabel="Bit"length="0"quote=""sql="bit"/></group></datatypes><tablex="443"y="217"name="users"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="email"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="password"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default></row><keytype="PRIMARY"name=""><part>id</part></key></table><tablex="824"y="206"name="meals"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="content"null="1"autoincrement="0"><datatype>MEDIUMTEXT</datatype><default>NULL</default></row><rowname="user_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="users"row="id"/></row><keytype="PRIMARY"name=""><part>id</part></key></table><tablex="629"y="43"name="orders"><rowname="id"null="1"autoincrement="1"><datatype>TINYINT</datatype><default>NULL</default></row><rowname="user_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="users"row="id"/></row><rowname="meal_id"null="1"autoincrement="0"><datatype>TINYINT</datatype><default>NULL</default><relationtable="meals"row="id"/></row><keytype="PRIMARY"name=""><part>id</part></key></table></sql>$
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
