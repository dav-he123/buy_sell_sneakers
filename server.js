// load .env data into process.env
require("dotenv").config();

// Web server config
const PORT = process.env.PORT || 8080;
const ENV = process.env.ENV || "development";
const express = require("express");
const bodyParser = require("body-parser");
const cookieParser = require("cookie-parser");
const sass = require("node-sass-middleware");
const app = express();
const morgan = require("morgan");
const cookieSession = require("cookie-session");

//Routes
const sneakersRouter = require("./routes/sneakersRouter");
const usersRouter = require("./routes/usersRouter");
const loginRouter = require("./routes/loginRouter");
const messagesRouter = require("./routes/messagesRouter");
const routesSMS = require("./routes/smsMessages");

// const db = require("./db/database");

// Load the logger first so all (static) HTTP requests are logged to STDOUT
// 'dev' = Concise output colored by response status for development use.
//         The :status token will be colored red for server error codes, yellow for client error codes, cyan for redirection codes, and uncolored for all other codes.
app.use(morgan("dev"));

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({ extended: true }));
app.use(
  "/styles",
  sass({
    src: __dirname + "/styles",
    dest: __dirname + "/public/styles",
    debug: true,
    outputStyle: "expanded",
  })
);
app.use(express.static("public"));
app.use(cookieParser());
app.use(cookieSession({ name: "user_id", secret: "asdfg" }));

// endpoints
app.use("/", sneakersRouter);
app.use("/users", usersRouter);
app.use("/login", loginRouter);
app.use("/messages", messagesRouter);
app.use("/sms", routesSMS);

app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT} 😎`);
});
