export default {
  findAll() {
    return Discourse.ajax('/pages/admin/index.json');
  },

  create(model) {
    return Discourse.ajax('/pages/admin', {
      method: 'POST',
      contentType: 'application/json',
      data: JSON.stringify({ page: model })
    });
  }
};
