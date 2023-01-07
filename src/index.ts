import express, { Response }from "express"
import "dotenv/config";

const app = express() 

const PORT = process.env.PORT || 8080

app.get("/", (_: any, res: Response) => {
	res.send("Hello from docker")
})

app.listen(PORT, () => {
	console.log(process.env.TEXT)
	console.log("Running the nodejs server on docker")
})
