export default {
  resource: 'pages',
  path: '/pages',
  map() {
    this.route('show', { path: ':id' });
  }
};
