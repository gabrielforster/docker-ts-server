const app = require("express")()

const PORT = process.env.PORT || 8080

app.get("/", (_, res) => {
	res.send("Hello from docker")
})

app.listen(PORT, () => console.log("Running the nodejs server on docker"))
