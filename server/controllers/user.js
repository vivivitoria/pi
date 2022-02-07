const bcrypt = require('bcrypt');
const mongoose = require('mongoose');
const modelUser = mongoose.model('User');

let userController = {};

userController.allUsers = (req, res) => {
    modelUser.find()
    .then(results => res.json(results))
    .catch(err => res.send(err));
};

module.exports = userController;

userController.newUser = (req, res) => {
    if(req.body.email && req.body.password) {
        if(req.body.password2 && req.body.password == req.body.password2) {
            
            modelUser.findOne({ 'email': req.body.email})
                .then(user => {
                    if(user) {
                        res.json({ sucess: false, message: 'This email has no avaliable'});
                    } else {
                    
                        bcrypt.hash(req.body.password, 10)
                        .then(hash => {

                            let encryptedPassword = hash;

                            let newUser = new modelUser({
                                username: req.body.username,
                                password: encryptedPassword,
                                email: req.body.email
                            });

                            newUser.save()
                                .then(() => res.json({ success: true, message: 'Usuário criado com sucesso', statusCode: 201}))
                                .catch(err => res.json({ success: false, message: err, statusCode: 500}));
                        })
                        .catch(err => res.json({ success: false, message: err, statusCode: 500}));
                        
                    }
                })
            } else {
                res.json({ success: false, message: 'As senhas não são iguais', statusCode: 400});
        }
    } else {
        res.json({ success: false, message: 'Digite um email e uma senha', statusCode: 400});
    }
}