const authID = "AC7649939fcdea3a9737e8acfaddd20fca";
const authtoken = "ea2fc51c3288b2de4e41ff7d8b040c95";

const client = require("twilio")(authID, authtoken);
client.messages
  .create({
    body: "Get your sneakers!!",
    from: "+12025197052",
    to: "+12899271833",
  })
  .then((message) => console.log(message.sid))
  .catch((err) => console.log(err));
