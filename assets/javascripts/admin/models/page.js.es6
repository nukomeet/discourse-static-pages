export default {
  findAll() {
    return Discourse.ajax('/pages/admin/pages');
  },

  findById(id) {
    return Discourse.ajax(`/pages/admin/pages/${id}`);
  },

  create(model) {
    return Discourse.ajax('/pages/admin/pages', {
      method: 'POST',
      contentType: 'application/json',
      data: JSON.stringify({ page: model })
    });
  },

  update(model) {
    return Discourse.ajax(`/pages/admin/pages/${model.id}`, {
      method: 'PATCH',
      contentType: 'application/json',
      data: JSON.stringify({ page: model })
    })
  },

  delete(model) {
    return Discourse.ajax(`/pages/admin/pages/${model.id}`, {
      method: 'DELETE'
    });
  }
};
