package {
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
    import flash.display.Sprite;
	import com.greensock.*; 
	import com.greensock.easing.*;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.display.*;
    import flash.display.Shape;
    import flash.events.MouseEvent;
    import flash.events.Event;
	import flash.media.Video;
	import flash.media.Camera;
	import flash.geom.Point;
	import flash.filters.BlurFilter;
	import flash.display.Graphics;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	import flash.system.fscommand;
	import flash.geom.Rectangle;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.StatusEvent;
	import flash.text.*; 
	import jp.maaash.ObjectDetection.ObjectDetector;
	import jp.maaash.ObjectDetection.ObjectDetectorOptions;
	import jp.maaash.ObjectDetection.ObjectDetectorEvent;
	import com.frocessing.*;
	
	public class Main extends MovieClip {
		
        public function Main() {
			this.addEventListener(Event.ENTER_FRAME, enterFrame);
		}
		
		public var dui:int; public var me:int; public var hana:int; public var kutibiru:int;
		
		public function enterFrame(e) {
			if (this.currentFrame == 43) {
				stop();		
				btn_text_left.addEventListener(MouseEvent.CLICK, buttonAction_1);
				btn_text_right.addEventListener(MouseEvent.CLICK, buttonAction_2);
				button_1.addEventListener(MouseEvent.CLICK, buttonAction_1);
				button_2.addEventListener(MouseEvent.CLICK, buttonAction_2);
				this.removeEventListener(Event.ENTER_FRAME, enterFrame);
			} 
		}
		
		
		public function buttonAction_1(e) {
		function finalaction(e) {
			gotoAndStop("1", "シーン 2");
			clean();
			
			var lastTextEye:TextField = new TextField(); 
			addChild(lastTextEye); lastTextEye.width=200;
			var random:int = Math.floor(Math.random() * 100);
			
			var lastTextScore:TextField = new TextField(); 
			addChild(lastTextScore);
			
			var eye:int = random;
			
			if (random <= 10){
				var topword = "生まれ直して来なさい！"
			} else if ( random <= 20 && random > 10) {
				var topword = "システムが拒絶してるわ♡"
			} else if ( random <= 30 && random > 20) {
				var topword = "あなた...人間だったの？"
			} else if ( random <= 40 && random > 30) {
				var topword = "美しさの欠片もないわ"
			} else if ( random <= 50 && random > 40) {
				var topword = "美しさを語るのはまだ早いわ"
			} else if ( random <= 60 && random > 50) {
				var topword = "なんとも言えないわ"
			} else if ( random <= 70 && random > 60) {
				var topword = "あら、やるじゃない♡"
			} else if ( random <= 80 && random > 70) {
				var topword = "中々、良い顔してるじゃない♡"
			} else if ( random <= 90 && random > 80) {
				var topword = "もしかして調子乗ってる？"
			} else if ( random <= 95 && random > 90) {
				var topword = "惜しいわね...でも..."
			} else if ( random <= 99 && random > 98) {
				var topword = "素晴らしい！美しすぎるよ！"
			} else if ( random == 100 ) {
				var topword = "ア゛ァアアアアアアアア゛ァア゛ァアア゛ア゛ア゛ア゛ア゛ア゛"
			}
			
			lastTextEye.text = topword; lastTextEye.x = 120; lastTextEye. y = 350;
			lastTextEye.scaleX = 2; lastTextEye.scaleY = 2;	lastTextEye.textColor = 0xFFFFFF;
			
			var me_score:int; var hana_score:int; var kutibiru_score:int;
			
			if (me == 19) { me_score = 4; }
	   else if (me == 20) { me_score = 5; }
	   else if (me == 21) { me_score = 6; }
	   else if (me == 22) { me_score = 4; }
	   else if (me == 23) { me_score = 3; }
	   else if (me == 24) { me_score = 5; }
	   else { me_score = Math.floor(Math.random()*2); }

			if (hana == 19) { hana_score = 6; }
	   else if (hana == 20) { hana_score = 5; }
	   else if (hana == 21) { hana_score = 4; }
	   else if (hana == 22) { hana_score = 3; }
	   else if (hana == 23) { hana_score = 2; }
	   else if (hana == 24) { hana_score = 1; }
	   else { hana_score = 0; }
			
			if (kutibiru == 19) { kutibiru_score = 6; }
	   else if (kutibiru == 20) { kutibiru_score = 5; }
	   else if (kutibiru == 21) { kutibiru_score = 4; }
	   else if (kutibiru == 25) { kutibiru_score = 5; }
	   else if (kutibiru == 26) { kutibiru_score = 6; } 
	   else if (kutibiru == 27) { kutibiru_score = 6; }
	   else { kutibiru_score = Math.floor(Math.random()*2); }
			
			var score:int = me_score + hana_score + kutibiru_score + dui;
			lastTextScore.text = score + "点"; 
			lastTextScore.x = 180; 	  lastTextScore. y = 150;
			lastTextScore.scaleX = 5; lastTextScore.scaleY = 5;
			lastTextScore.textColor = 0xFFFFFF;
			
			btnrestart.addEventListener(MouseEvent.CLICK, reaction);
			
			function reaction(a){
				addChild(qdwqdqw);
			}
			
			function clean(e) {
				removeChild(qdwqdqw);
				removeChild(vid);
				removeChild(red);
				removeChild(myTextBox);
				removeChild(myTextBox2);
				removeChild(myTextBox3);
				removeChild(myTextBox4);
				removeChild(myTextBox5);
				removeChild(myTextBox6);
				removeChild(myTextBox7);
				removeChild(myTextBox8);
			}
		}
		
			
		btnsaikou.addEventListener(MouseEvent.CLICK, finalaction);
		var detector:ObjectDetector;
		var options :ObjectDetectorOptions;

		detector = new ObjectDetector;
		detector.options = getDetectorOptions();
		detector.addEventListener(ObjectDetectorEvent.DETECTION_COMPLETE,function( e :ObjectDetectorEvent ):void {
			
			if( e.rects ){
				e.rects.forEach( function( r :Rectangle, idx :int, arr :Array ) :void {
					
					red.x =r.x + 30;     red.y =r.y + 30;
					red.width = r.width; red.height = r.height;
					red.visible = true;
					
					var	age:Array = banana[bananarandom]
					var random:int = Math.floor(Math.random() * age.length);
				
					var	applerandom:int = Math.floor( Math.random() * (100 - 78) + 78);
					var myText:String = "顔の角度：　" + applerandom + "点です。"; 
					myTextBox.text = myText; myTextBox.x = 400; myTextBox. y = 40;
					myTextBox.scaleX = 2; myTextBox.scaleY = 2;
					myTextBox.textColor = 0xFFFFFF;
				
					var	age2:Array = banana[bananarandom2]
					var random2:int = Math.floor(Math.random() * age2.length);
					var myText2:String = "目：　" + age2[random2] + "歳と同じ目です。"; 
					myTextBox2.text = myText2; myTextBox2.x = 400; myTextBox2. y = 100;
					myTextBox2.scaleX = 2; myTextBox2.scaleY = 2;
					myTextBox2.textColor = 0xFFFFFF;
					
					var	age3:Array = banana[bananarandom3]
					var random3:int = Math.floor(Math.random() * age3.length);
					var myText3:String = "鼻：　" + age3[random3] + "歳と同じ鼻です。"; 
					myTextBox3.text = myText3; myTextBox3.x = 400; myTextBox3. y = 140;
					myTextBox3.scaleX = 2; myTextBox3.scaleY = 2;
					myTextBox3.textColor = 0xFFFFFF;
					
					var	age4:Array = banana[bananarandom4]
					var random4:int = Math.floor(Math.random() * age4.length);
					var myText4:String = "唇：　" + age4[random4] + "歳と同じ唇です。"; 
					myTextBox4.text = myText4; myTextBox4.x = 400; myTextBox4. y = 180;
					myTextBox4.scaleX = 2; myTextBox4.scaleY = 2;
					myTextBox4.textColor = 0xFFFFFF;
					
					var	age5:Array = banana[bananarandom5]
					var random5:int = Math.floor(Math.random() * age5.length);
					var myText5:String = "顎：　" + age5[random5] + "歳と同じ顎です。"; 
					myTextBox5.text = myText5; myTextBox5.x = 400; myTextBox5. y = 220;
					myTextBox5.scaleX = 2; myTextBox5.scaleY = 2;
					myTextBox5.textColor = 0xFFFFFF;
					
					var	age6:Array = banana[bananarandom6]
					var random6:int = Math.floor(Math.random() * age6.length);
					var myText6:String = "皺：　" + age6[random6] + "歳と同じ皺です。"; 
					myTextBox6.text = myText6; myTextBox6.x = 400; myTextBox6. y = 260;
					myTextBox6.scaleX = 2; myTextBox6.scaleY = 2;
					myTextBox6.textColor = 0xFFFFFF;
					
					var	age7:Array = banana[bananarandom7]
					var	applerandom2:int = 40 + Math.floor( Math.random() * 42 );
					var random7:int = Math.floor(Math.random() * age7.length);
					var myText7:String = "個人的に：　" + applerandom2+ "点です。"; 
					myTextBox7.text = myText7; myTextBox7.x = 400; myTextBox7. y = 320;
					myTextBox7.scaleX = 2; myTextBox7.scaleY = 2;
					myTextBox7.textColor = 0xFFFFFF;
					
					dui = applerandom2;	me =  age2[random2]; hana =  age3[random3];	kutibiru = age4[random4];
					
				});
			}
		});
		

			detector.loadHaarCascades( "face.zip" );

			function getDetectorOptions() :ObjectDetectorOptions {
				options = new ObjectDetectorOptions;
				options.min_size  = 45;
				options.startx    = ObjectDetectorOptions.INVALID_POS;
				options.starty    = ObjectDetectorOptions.INVALID_POS;
				options.endx      = ObjectDetectorOptions.INVALID_POS;
				options.endy      = ObjectDetectorOptions.INVALID_POS;
				return options;
			}

			var bd:BitmapData = new BitmapData(320, 240);
			var _timer:Timer = new Timer(500, 0);
			var cam: Camera = Camera.getCamera();
				
			
			if (cam != null) { 
					var vid: Video = new Video(320, 240);
					cam.setMode(700,450,60);
					cam = Camera.getCamera();
					vid.attachCamera(cam);
					addChild(vid); vid.y = 30; vid.x = 30;
					swapChildren(red,vid);
					this.setChildIndex(vid, 2);
					_timer.addEventListener(TimerEvent.TIMER, timer_event);
					_timer.start();		
					cam.addEventListener(StatusEvent.STATUS, statusHandler); 
				
			} 
			
			var myTextBox:TextField = new TextField(); 	addChild(myTextBox);  myTextBox.width=200;
			var myTextBox2:TextField = new TextField();	addChild(myTextBox2); myTextBox2.width=200;
			var myTextBox3:TextField = new TextField();	addChild(myTextBox3); myTextBox3.width=200;
			var myTextBox4:TextField = new TextField();	addChild(myTextBox4); myTextBox4.width=200;
			var myTextBox5:TextField = new TextField();	addChild(myTextBox5); myTextBox5.width=200;			
			var myTextBox6:TextField = new TextField(); addChild(myTextBox6); myTextBox6.width=200;
			var myTextBox7:TextField = new TextField(); addChild(myTextBox7); myTextBox7.width=200;
			var myTextBox8:TextField = new TextField(); addChild(myTextBox8); myTextBox8.width=200;
			
			var banana:Array = [
			[18,19,20,21,22,23,24,25,26,27],
			[18,19,20,21,22,23,24,25,26,27],
			[38,29,40,31,52,63,24,55,26,37],
			[18,19,20,21,22,23,24,25,26,27],
			[18,19,20,21,22,23,24,25,26,27],
			[18,19,20,21,22,23,24,25,26,27]
			];
			
			
			var	bananarandom:int = Math.floor(Math.random()*banana.length);
			var	bananarandom2:int = Math..floor(Math.random()*banana.length);
			var	bananarandom3:int = Math.floor(Math.random()*banana.length);
			var	bananarandom4:int = Math.floor(Math.random()*banana.length);
			var	bananarandom5:int = Math.floor(Math.random()*banana.length);
			var	bananarandom6:int = Math.floor(Math.random()*banana.length);
			var	bananarandom7:int = Math.floor(Math.random()*banana.length);
			
			function timer_event(event:TimerEvent) {
				
					_timer.stop();
					bd.draw(vid);
					red.visible = false;
					detector.detect( new Bitmap(bd) );
					_timer.start();
				
			}

			
			function statusHandler(event:StatusEvent):void { 
				
				 switch (event.code) { 
					 
					case "Camera.Muted": 
						break;
					
					case "Camera.Unmuted": 
						button_1.alpha = 0;	button_2.alpha = 0;
						btn_text_left.alpha = 0; btn_text_right.alpha = 0;
						title.alpha = 0; subtitle.alpha = 0; dddd.alpha = 0;
						btnsaikou.y = 310; btnsaikou.x = 50;
						btnsaikou.scaleX = 0.955; btnsaikou.scaleY = 0.955;
						break; 
				 } 
		
			}
			

		}
				
		
		public function buttonAction_2(event:MouseEvent):void {
				fscommand("quit");
		}
		
    }
	
	
}