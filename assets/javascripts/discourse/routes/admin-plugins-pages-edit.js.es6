import Page from 'discourse/plugins/pages/admin/models/page';

export default Discourse.Route.extend({
  actions: {
    update(model) {
      Page.update(model).then(() => {
        this.transitionTo('adminPlugins.pages.index');
      });
    },

    cancel() {
      this.transitionTo('adminPlugins.pages.index');
    }
  },

  model(params) {
    return Page.findById(params.id).then((result) => {
      return result.page;
    });
  }
});
