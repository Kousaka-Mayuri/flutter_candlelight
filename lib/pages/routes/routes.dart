import 'package:com/pages/routes/bluetoothAudio.dart';
import 'package:com/pages/routes/Sound.dart';
import 'package:com/pages/routes/bigSound.dart';
import 'package:com/pages/routes/condenserMicS.dart';
import 'package:com/pages/routes/Mics.dart';
import 'package:com/pages/routes/headset.dart';
import 'package:flutter/cupertino.dart';
import 'package:com/main.dart';

List <WidgetBuilder>routesList = [(BuildContext context)=>bigSound(),(BuildContext context)=>bluetoothAudio(),(BuildContext context)=>cableMike(),
      (BuildContext context)=>cardPackageSound(),(BuildContext context)=>condenserMics(),(BuildContext context)=>headset()];
Map<String, WidgetBuilder> routes = {"bigSound":(BuildContext context)=>bigSound(),"bluetoothAudio":(BuildContext context)=>bluetoothAudio(),
"cableMike":(BuildContext context)=>cableMike(),"cardPackageSound":(BuildContext context)=>cardPackageSound(),
"condenserMics":(BuildContext context)=>condenserMics(),"headset":(BuildContext context)=>headset()};