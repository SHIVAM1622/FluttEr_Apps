// import 'package:flutter/material.dart';
//  import 'package:video_player/video_player.dart';
//  import 'package:chewie/chewie.dart';



// class NewVideo extends StatefulWidget {

//     final String url;
//   NewVideo({Key key ,@required this.url}):super(key:key);
  
  
//   @override
//   _NewVideoState createState() => _NewVideoState(url:url);
// }

// class _NewVideoState extends State<NewVideo> {
//           VideoPlayerController videoPlayerController;
//     ChewieController _chewieController;

  
//  @override
//   void initState() {
//     super.initState();
//     _videoPlayerController1 = VideoPlayerController.network(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
   
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController,
//       aspectRatio: 3 / 2,
//       autoPlay: true,
//       looping: true,
     
//     );
//   }

// String url;




//   _NewVideoState({Key key ,@required this.url});
 


   
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
      
//        body: Center(
//           child: _videoPlayerController1.value.initialized
//               ? AspectRatio(
//                   aspectRatio: _videoPlayerController1.value.aspectRatio,
//                   child: VideoPlayer( _videoPlayerController1),
//                 ) 
//               : Container(),
//         ),
      
//     );
//   }
// }