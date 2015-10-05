import Page from 'discourse/plugins/pages/admin/models/page';

export default Discourse.Route.extend({
  _enabled: false,
  _stats: null,

  model() {
    return Page.findAll().then((result) => {
      return result.pages;
    });
  },

  setupController(controller, model) {
    controller.setProperties({ model });
  }
});
