void main(){
  // 对字符进行编码和解码，但具有特殊含义的字符除外 URI
  print("===============uri解码的方法==========================");
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri);
  var encoded1 = Uri.encodeComponent(uri);
  var decoded = Uri.decodeComponent(encoded);
  print(encoded);
  print(encoded1);
  print(decoded);
  var decoded1 = Uri.decodeFull(encoded);
  print(uri);
   print("===============================================");

   print("===============uri解析=========================");
  var uri1 = Uri.parse('https://example.org:8080/foo/bar#frag');
  print('原URI:$uri1');
  print(uri1.scheme );
  print(uri1.host);
  print(uri1.path);
  print(uri1.fragment);
  print(uri1.origin);  
  print("===============================================");

  print("===========构建URI==============================");
  var uri2 = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag',
    queryParameters: {'lang': 'dart'});
    print(uri2.toString());

    // 其他方式
    var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
    var httpsUri1 = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

    print(httpUri.toString());
    print(httpsUri1.toString());
  print("===============================================");
}