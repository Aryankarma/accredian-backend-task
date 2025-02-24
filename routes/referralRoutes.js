import { Router } from "express";
const router = Router();

router.post('/referral', async (req, res) => {
    try {
        const { referrerName, referrerEmail, refereeName, refereeEmail, course } = req.body;

        if (!referrerName || !referrerEmail || !refereeName || !refereeEmail || !course) {
            return res.status(400).json({ error: 'All fields are required' });
        }

        const referral = await prisma.referral.create({
            data: { referrerName, referrerEmail, refereeName, refereeEmail, course }
        });

        await sendReferralEmail(refereeEmail, referrerName, course);

        res.status(201).json({ message: 'Referral submitted successfully', referral });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});


async function sendReferralEmail(toEmail, referrerName, course) {
    const transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
            user: process.env.EMAIL_USER,
            pass: process.env.EMAIL_PASS
        }
    });

    const mailOptions = {
        from: process.env.EMAIL_USER,
        to: toEmail,
        subject: 'You Have Been Referred!',
        text: `Hi! ${referrerName} has referred you for the ${course} course. Check it out!`
    };

    await transporter.sendMail(mailOptions);
}

export default router