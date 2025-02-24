import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import referralRoutes from './routes/referralRoutes.js';

dotenv.config();

const app = express();

app.use(express.json());
app.use(cors());

app.use('/api/referrals', referralRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));