export default {
  resource: 'admin.adminPlugins',
  path: '/plugins',
  map() {
    this.route('pages', function () {
      this.route('new');
    });
  }
};
