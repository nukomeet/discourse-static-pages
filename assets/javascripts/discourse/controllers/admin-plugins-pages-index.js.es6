import Page from 'discourse/plugins/pages/admin/models/page';

export default Ember.ArrayController.extend({
  sortProperties: ['updated_at'],
  sortAscending: false,

  actions: {
    refresh() {
      Page.findAll()
        .then((result) => {
          this.set('model', result.pages);
        });
    },

    delete(model) {
      if (confirm('Are you sure?')) {
        this.set('model', this.get('model').filter((page) => page !== model));
        Page.delete(model);
      }
    }
  }
});
