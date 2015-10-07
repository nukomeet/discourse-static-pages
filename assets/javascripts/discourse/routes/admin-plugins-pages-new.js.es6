import Page from '../../admin/models/page';

export default Discourse.Route.extend({
  actions: {
    create(model) {
      Page.create(model).then(() => {
        this.transitionTo('adminPlugins.pages.index');
      });
    },

    cancel() {
      this.transitionTo('adminPlugins.pages.index');
    }
  },

  model() {
    return {};
  }
});
