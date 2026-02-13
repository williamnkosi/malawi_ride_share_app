/// Socket namespace enumeration
enum SocketNamespace {
  trips('/trips'),
  location('/location');

  const SocketNamespace(this.path);
  final String path;
}
