export default {
  findAll() {
    return Discourse.ajax('/pages');
  },

  findById(id) {
    return Discourse.ajax(`/pages/${id}`);
  }
};
