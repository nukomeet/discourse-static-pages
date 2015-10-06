import Page from 'discourse/plugins/pages/admin/models/page';

export default Ember.ArrayController.extend({
  sortProperties: ['created_at'],
  sortAscending: false,
  performingAction: false,

  actions: {
    refresh() {
      this.set('performingAction', true);

      Page.findAll()
        .then((result) => {
          this.set('model', result.pages);
        })
        .finally(() => {
          this.set('performingAction', false);
        });
    }
  }
});
