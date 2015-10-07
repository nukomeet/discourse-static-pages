export default {
  findById(id) {
    return Discourse.ajax(`/pages/${id}`);
  }
};
