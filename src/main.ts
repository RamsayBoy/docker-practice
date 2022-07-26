import express, { Request, Response } from "express";
import dotenv from "dotenv";

const app = express();
const host = process.env.HOST || "localhost";
const port = process.env.PORT || 3000;

dotenv.config();

app.get("/", (req: Request, res: Response) => {
	res.send("Hello World!");
});

app.listen(port, () => {
	console.log(`http://${host}:${port}/`);
});
