export default {
  findAll() {
    return Discourse.ajax('/pages/admin/index.json');
  }
};
