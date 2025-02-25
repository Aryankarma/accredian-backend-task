import { Router } from "express";
const router = Router();
import { PrismaClient } from "@prisma/client";
import nodemailer from "nodemailer";

const prisma = new PrismaClient()

router.post('/referral', async (req, res) => {
    try {
        const { referrerName, refereeName, refereeEmail, course } = req.body;

        console.log("data recieved on server: ", referrerName, refereeName, refereeEmail, course);

        if (!referrerName || !refereeName || !refereeEmail || !course) {
            return res.status(400).json({ error: 'All fields are required' });
        }

        await sendReferralEmail(refereeEmail, referrerName, refereeName, course);

        const referral = await prisma.referral.create({
            data: { referrerName, refereeName, refereeEmail, course }
        });

        console.log("Referral submitted successfully")
        res.status(201).json({ message: 'Referral submitted successfully', referral });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});


async function sendReferralEmail(toEmail, referrerName, refereeName, course) {
    const transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
            user: process.env.MAIL_USERNAME,
            pass: process.env.MAIL_PASSWORD
        }
    });

    const mailOptions = {
        from: process.env.MAIL_USERNAME,
        to: toEmail,
        subject: 'You Have Been Referred!',
        text: `Hi ${refereeName}! 
        ${referrerName} has referred you for the ${course} course. Check it out!`
    };

    console.log("Sending mail...")
    await transporter.sendMail(mailOptions);
}

export default router