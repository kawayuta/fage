﻿// --------------------------------------------------------------------------
// Project Frocessing
// ActionScript 3.0 drawing library like Processing.
// --------------------------------------------------------------------------
//
// This library is based on Processing.(http://processing.org)
// Copyright (c) 2004-08 Ben Fry and Casey Reas
// Copyright (c) 2001-04 Massachusetts Institute of Technology
// 
// Frocessing drawing library
// Copyright (C) 2008-10  TAKANAWA Tomoaki (http://nutsu.com) and
//					   	  Spark project (www.libspark.org)
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//
// contact : face(at)nutsu.com
//

package frocessing.core.graphics 
{
	import flash.geom.Matrix;
	/**
	* グラデーションを定義します.
	* 
	* @author nutsu
	* @version 0.6
	*/
	public class FGradient
	{
		public var type:String;
		public var colors:Array;
		public var ratios:Array;
		public var alphas:Array;
		public var matrix:Matrix;
		public var spreadMethod:String;
		public var interpolationMethod:String;
		public var focalPointRatio:Number;
		
		public function FGradient( type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix = null, spreadMethod:String = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number=0.0) {
			this.type                = type;
			this.colors              = colors;
			this.alphas              = alphas;
			this.ratios              = ratios;
			this.matrix              = matrix;
			this.spreadMethod        = spreadMethod;
			this.interpolationMethod = interpolationMethod;
			this.focalPointRatio     = focalPointRatio;
		}
	}
}