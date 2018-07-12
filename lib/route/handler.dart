import "dart:core";
import "package:fluro/fluro.dart";
import "package:flutter/material.dart";
import "../container/index.dart";
import "../container/topic.dart";
import "../container/publish.dart";

Map<String, Handler> handlers = {
  '/': new Handler(
      handlerFunc: (BuildContext context, _) {
    return new IndexContainer();
  }),
  '/topic/:id': new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new TopicContainer(id: params['id'][0]);
    }
  ),
  '/publish': new Handler(
    handlerFunc: (BuildContext context, _) {
      return new PublishContainer();
    }
  ),
  '/publish/:id': new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new PublishContainer(id: params['id'][0]);
    }
  )
};

var notFoundHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  print('not found');
});
