const db = require('../data/connection.js');


module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

// resolves to an array of users
function find() {
    return db('schemes');
};

// resolves to single user or null
function findById(id) {
    return db('schemes').where({ id }).first();
};

function findSteps(id) {
    return db('steps').where("scheme_id", id)
    // .join('steps', 'steps.scheme_id', '=', 'schemes.id')
    // .select('schemes.scheme_name','steps.instructions')
};

function add(scheme) {
    return db('schemes')
    .insert(scheme, 'id')
    .then(ids => {
        const id = ids[0];

        return findById(id);
    });
};

function addStep(step, scheme_id) {

};

function update(changes, id) {
    return db('schemes').where({id}).update(changes)
};

function remove(id) {
    return db('schemes').where({id}).del()
};