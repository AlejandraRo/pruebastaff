const {Router}=require('express');
const { route } = require('express/lib/application');
const router=Router();
const {Pool}=require('pg');

const pool=new Pool({
    host:'localhost',
    user:'postgres',
    password:'admin',
    database:'mascotasymascotas'
})
router.get('/mascotas',async (req,res)=>{
    const response=await pool.query('SELECT * from mascota');
    console.log(response.rows);
    res.status(200).json(response.rows);

})
module.exports=router;