import * as bd from '../repository/clienteAgentaRepository.js';
import { Router } from 'express';
const endpoint =Router();

endpoint.post('/inserir/agenda', async (req,resp) => {
    let clienteObj = req.body;

    let registro = await bd.inserirAgenda(clienteObj);

    resp.send({
        id: registro
    })
})

export default endpoint;