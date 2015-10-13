import HamburgerMenuComponent from 'discourse/components/hamburger-menu';
import Page from '../../discourse/models/page';

export default {
  name: 'static-pages-menu',

  initialize: function() {
    HamburgerMenuComponent.reopen({
      didInsertElement() {
        Page.findAll()
          .then((result) => {
            this.set('staticPages', result.pages);
          });

        this.set('staticPages', [{ title: 'Testing', id: 123 }]);
      }
    });
  }
};
