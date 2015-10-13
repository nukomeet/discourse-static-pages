import Page from '../models/page';

export default Discourse.Route.extend({
  model(params) {
    return Page.findById(params.id).then((result) => {
      return result.page;
    });
  },

  setupController(controller, model) {
    model.body = new Handlebars.SafeString(Discourse.Markdown.cook(model.body));
    controller.setProperties({ model });
  }
});
