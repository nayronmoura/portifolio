import 'package:flutter/foundation.dart';

String parseAsset(String asset) {
  if (kReleaseMode) {
    return 'assets/$asset';
  } else {
    return asset;
  }
}
