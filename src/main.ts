import express, { Request, Response } from "express";
import dotenv from "dotenv";
import { PrismaClient } from "@prisma/client";

const app = express();
const host = process.env.HOST || "localhost";
const port = process.env.PORT || 3000;

dotenv.config();

const prisma = new PrismaClient();

app.get("/users", async (req: Request, res: Response) => {
	const users = await prisma.user.findMany();
	res.send(users);
});

app.listen(port, () => {
	console.log("-----------------------");
	console.log(`http://${host}:${port}/`);
	console.log("-----------------------");
	console.log(`For get users: http://${host}:${port}/users`);
});
