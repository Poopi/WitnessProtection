//////////////////////////////////////////////////
////////////	Sin Wave ROM Table	//////////////
//////////////////////////////////////////////////
// produces a 2's comp, 16-bit, approximation
// of a sine wave, given an input phase (address)
module sine_rom (clock, address, sine);
input clock;
input [7:0] address;
output signed [17:0] sine;
reg signed [17:0] sine;
always@(posedge clock)
begin
    case(address[7:0])
    		8'h00: sine = 18'h0000 ;
			8'h01: sine = 18'h0192 ;
			8'h02: sine = 18'h0323 ;
			8'h03: sine = 18'h04b5 ;
			8'h04: sine = 18'h0645 ;
			8'h05: sine = 18'h07d5 ;
			8'h06: sine = 18'h0963 ;
			8'h07: sine = 18'h0af0 ;
			8'h08: sine = 18'h0c7c ;
			8'h09: sine = 18'h0e05 ;
			8'h0a: sine = 18'h0f8c ;
			8'h0b: sine = 18'h1111 ;
			8'h0c: sine = 18'h1293 ;
			8'h0d: sine = 18'h1413 ;
			8'h0e: sine = 18'h158f ;
			8'h0f: sine = 18'h1708 ;
			8'h10: sine = 18'h187d ;
			8'h11: sine = 18'h19ef ;
			8'h12: sine = 18'h1b5c ;
			8'h13: sine = 18'h1cc5 ;
			8'h14: sine = 18'h1e2a ;
			8'h15: sine = 18'h1f8b ;
			8'h16: sine = 18'h20e6 ;
			8'h17: sine = 18'h223c ;
			8'h18: sine = 18'h238d ;
			8'h19: sine = 18'h24d9 ;
			8'h1a: sine = 18'h261f ;
			8'h1b: sine = 18'h275f ;
			8'h1c: sine = 18'h2899 ;
			8'h1d: sine = 18'h29cc ;
			8'h1e: sine = 18'h2afa ;
			8'h1f: sine = 18'h2c20 ;
			8'h20: sine = 18'h2d40 ;
			8'h21: sine = 18'h2e59 ;
			8'h22: sine = 18'h2f6b ;
			8'h23: sine = 18'h3075 ;
			8'h24: sine = 18'h3178 ;
			8'h25: sine = 18'h3273 ;
			8'h26: sine = 18'h3366 ;
			8'h27: sine = 18'h3452 ;
			8'h28: sine = 18'h3535 ;
			8'h29: sine = 18'h3611 ;
			8'h2a: sine = 18'h36e4 ;
			8'h2b: sine = 18'h37ae ;
			8'h2c: sine = 18'h3870 ;
			8'h2d: sine = 18'h3929 ;
			8'h2e: sine = 18'h39da ;
			8'h2f: sine = 18'h3a81 ;
			8'h30: sine = 18'h3b1f ;
			8'h31: sine = 18'h3bb5 ;
			8'h32: sine = 18'h3c41 ;
			8'h33: sine = 18'h3cc4 ;
			8'h34: sine = 18'h3d3d ;
			8'h35: sine = 18'h3dad ;
			8'h36: sine = 18'h3e14 ;
			8'h37: sine = 18'h3e70 ;
			8'h38: sine = 18'h3ec4 ;
			8'h39: sine = 18'h3f0d ;
			8'h3a: sine = 18'h3f4d ;
			8'h3b: sine = 18'h3f83 ;
			8'h3c: sine = 18'h3fb0 ;
			8'h3d: sine = 18'h3fd2 ;
			8'h3e: sine = 18'h3feb ;
			8'h3f: sine = 18'h3ffa ;
			8'h40: sine = 18'h3fff ;
			8'h41: sine = 18'h3ffa ;
			8'h42: sine = 18'h3feb ;
			8'h43: sine = 18'h3fd2 ;
			8'h44: sine = 18'h3fb0 ;
			8'h45: sine = 18'h3f83 ;
			8'h46: sine = 18'h3f4d ;
			8'h47: sine = 18'h3f0d ;
			8'h48: sine = 18'h3ec4 ;
			8'h49: sine = 18'h3e70 ;
			8'h4a: sine = 18'h3e14 ;
			8'h4b: sine = 18'h3dad ;
			8'h4c: sine = 18'h3d3d ;
			8'h4d: sine = 18'h3cc4 ;
			8'h4e: sine = 18'h3c41 ;
			8'h4f: sine = 18'h3bb5 ;
			8'h50: sine = 18'h3b1f ;
			8'h51: sine = 18'h3a81 ;
			8'h52: sine = 18'h39da ;
			8'h53: sine = 18'h3929 ;
			8'h54: sine = 18'h3870 ;
			8'h55: sine = 18'h37ae ;
			8'h56: sine = 18'h36e4 ;
			8'h57: sine = 18'h3611 ;
			8'h58: sine = 18'h3535 ;
			8'h59: sine = 18'h3452 ;
			8'h5a: sine = 18'h3366 ;
			8'h5b: sine = 18'h3273 ;
			8'h5c: sine = 18'h3178 ;
			8'h5d: sine = 18'h3075 ;
			8'h5e: sine = 18'h2f6b ;
			8'h5f: sine = 18'h2e59 ;
			8'h60: sine = 18'h2d40 ;
			8'h61: sine = 18'h2c20 ;
			8'h62: sine = 18'h2afa ;
			8'h63: sine = 18'h29cc ;
			8'h64: sine = 18'h2899 ;
			8'h65: sine = 18'h275f ;
			8'h66: sine = 18'h261f ;
			8'h67: sine = 18'h24d9 ;
			8'h68: sine = 18'h238d ;
			8'h69: sine = 18'h223c ;
			8'h6a: sine = 18'h20e6 ;
			8'h6b: sine = 18'h1f8b ;
			8'h6c: sine = 18'h1e2a ;
			8'h6d: sine = 18'h1cc5 ;
			8'h6e: sine = 18'h1b5c ;
			8'h6f: sine = 18'h19ef ;
			8'h70: sine = 18'h187d ;
			8'h71: sine = 18'h1708 ;
			8'h72: sine = 18'h158f ;
			8'h73: sine = 18'h1413 ;
			8'h74: sine = 18'h1293 ;
			8'h75: sine = 18'h1111 ;
			8'h76: sine = 18'h0f8c ;
			8'h77: sine = 18'h0e05 ;
			8'h78: sine = 18'h0c7c ;
			8'h79: sine = 18'h0af0 ;
			8'h7a: sine = 18'h0963 ;
			8'h7b: sine = 18'h07d5 ;
			8'h7c: sine = 18'h0645 ;
			8'h7d: sine = 18'h04b5 ;
			8'h7e: sine = 18'h0323 ;
			8'h7f: sine = 18'h0192 ;
			8'h80: sine = 18'h0000 ;
			8'h81: sine = 18'hfe6e ;
			8'h82: sine = 18'hfcdd ;
			8'h83: sine = 18'hfb4b ;
			8'h84: sine = 18'hf9bb ;
			8'h85: sine = 18'hf82b ;
			8'h86: sine = 18'hf69d ;
			8'h87: sine = 18'hf510 ;
			8'h88: sine = 18'hf384 ;
			8'h89: sine = 18'hf1fb ;
			8'h8a: sine = 18'hf074 ;
			8'h8b: sine = 18'heeef ;
			8'h8c: sine = 18'hed6d ;
			8'h8d: sine = 18'hebed ;
			8'h8e: sine = 18'hea71 ;
			8'h8f: sine = 18'he8f8 ;
			8'h90: sine = 18'he783 ;
			8'h91: sine = 18'he611 ;
			8'h92: sine = 18'he4a4 ;
			8'h93: sine = 18'he33b ;
			8'h94: sine = 18'he1d6 ;
			8'h95: sine = 18'he075 ;
			8'h96: sine = 18'hdf1a ;
			8'h97: sine = 18'hddc4 ;
			8'h98: sine = 18'hdc73 ;
			8'h99: sine = 18'hdb27 ;
			8'h9a: sine = 18'hd9e1 ;
			8'h9b: sine = 18'hd8a1 ;
			8'h9c: sine = 18'hd767 ;
			8'h9d: sine = 18'hd634 ;
			8'h9e: sine = 18'hd506 ;
			8'h9f: sine = 18'hd3e0 ;
			8'ha0: sine = 18'hd2c0 ;
			8'ha1: sine = 18'hd1a7 ;
			8'ha2: sine = 18'hd095 ;
			8'ha3: sine = 18'hcf8b ;
			8'ha4: sine = 18'hce88 ;
			8'ha5: sine = 18'hcd8d ;
			8'ha6: sine = 18'hcc9a ;
			8'ha7: sine = 18'hcbae ;
			8'ha8: sine = 18'hcacb ;
			8'ha9: sine = 18'hc9ef ;
			8'haa: sine = 18'hc91c ;
			8'hab: sine = 18'hc852 ;
			8'hac: sine = 18'hc790 ;
			8'had: sine = 18'hc6d7 ;
			8'hae: sine = 18'hc626 ;
			8'haf: sine = 18'hc57f ;
			8'hb0: sine = 18'hc4e1 ;
			8'hb1: sine = 18'hc44b ;
			8'hb2: sine = 18'hc3bf ;
			8'hb3: sine = 18'hc33c ;
			8'hb4: sine = 18'hc2c3 ;
			8'hb5: sine = 18'hc253 ;
			8'hb6: sine = 18'hc1ec ;
			8'hb7: sine = 18'hc190 ;
			8'hb8: sine = 18'hc13c ;
			8'hb9: sine = 18'hc0f3 ;
			8'hba: sine = 18'hc0b3 ;
			8'hbb: sine = 18'hc07d ;
			8'hbc: sine = 18'hc050 ;
			8'hbd: sine = 18'hc02e ;
			8'hbe: sine = 18'hc015 ;
			8'hbf: sine = 18'hc006 ;
			8'hc0: sine = 18'hc001 ;
			8'hc1: sine = 18'hc006 ;
			8'hc2: sine = 18'hc015 ;
			8'hc3: sine = 18'hc02e ;
			8'hc4: sine = 18'hc050 ;
			8'hc5: sine = 18'hc07d ;
			8'hc6: sine = 18'hc0b3 ;
			8'hc7: sine = 18'hc0f3 ;
			8'hc8: sine = 18'hc13c ;
			8'hc9: sine = 18'hc190 ;
			8'hca: sine = 18'hc1ec ;
			8'hcb: sine = 18'hc253 ;
			8'hcc: sine = 18'hc2c3 ;
			8'hcd: sine = 18'hc33c ;
			8'hce: sine = 18'hc3bf ;
			8'hcf: sine = 18'hc44b ;
			8'hd0: sine = 18'hc4e1 ;
			8'hd1: sine = 18'hc57f ;
			8'hd2: sine = 18'hc626 ;
			8'hd3: sine = 18'hc6d7 ;
			8'hd4: sine = 18'hc790 ;
			8'hd5: sine = 18'hc852 ;
			8'hd6: sine = 18'hc91c ;
			8'hd7: sine = 18'hc9ef ;
			8'hd8: sine = 18'hcacb ;
			8'hd9: sine = 18'hcbae ;
			8'hda: sine = 18'hcc9a ;
			8'hdb: sine = 18'hcd8d ;
			8'hdc: sine = 18'hce88 ;
			8'hdd: sine = 18'hcf8b ;
			8'hde: sine = 18'hd095 ;
			8'hdf: sine = 18'hd1a7 ;
			8'he0: sine = 18'hd2c0 ;
			8'he1: sine = 18'hd3e0 ;
			8'he2: sine = 18'hd506 ;
			8'he3: sine = 18'hd634 ;
			8'he4: sine = 18'hd767 ;
			8'he5: sine = 18'hd8a1 ;
			8'he6: sine = 18'hd9e1 ;
			8'he7: sine = 18'hdb27 ;
			8'he8: sine = 18'hdc73 ;
			8'he9: sine = 18'hddc4 ;
			8'hea: sine = 18'hdf1a ;
			8'heb: sine = 18'he075 ;
			8'hec: sine = 18'he1d6 ;
			8'hed: sine = 18'he33b ;
			8'hee: sine = 18'he4a4 ;
			8'hef: sine = 18'he611 ;
			8'hf0: sine = 18'he783 ;
			8'hf1: sine = 18'he8f8 ;
			8'hf2: sine = 18'hea71 ;
			8'hf3: sine = 18'hebed ;
			8'hf4: sine = 18'hed6d ;
			8'hf5: sine = 18'heeef ;
			8'hf6: sine = 18'hf074 ;
			8'hf7: sine = 18'hf1fb ;
			8'hf8: sine = 18'hf384 ;
			8'hf9: sine = 18'hf510 ;
			8'hfa: sine = 18'hf69d ;
			8'hfb: sine = 18'hf82b ;
			8'hfc: sine = 18'hf9bb ;
			8'hfd: sine = 18'hfb4b ;
			8'hfe: sine = 18'hfcdd ;
			8'hff: sine = 18'hfe6e ;
	endcase
end
endmodule

module arccos_rom (clock, cos, theta);
input clock;
input signed [17:0] cos;
output [8:0] theta;
reg [8:0] theta;
always@(posedge clock)
begin
    case(cos)
		-18'd130048: theta  = 17'd98846;
		-18'd129024: theta  = 17'd97144;
		-18'd128000: theta  = 17'd95835;
		-18'd126976: theta  = 17'd94730;
		-18'd125952: theta  = 17'd93754;
		-18'd124928: theta  = 17'd92870;
		-18'd123904: theta  = 17'd92055;
		-18'd122880: theta  = 17'd91296;
		-18'd121856: theta  = 17'd90581;
		-18'd120832: theta  = 17'd89903;
		-18'd119808: theta  = 17'd89258;
		-18'd118784: theta  = 17'd88640;
		-18'd117760: theta  = 17'd88045;
		-18'd116736: theta  = 17'd87472;
		-18'd115712: theta  = 17'd86919;
		-18'd114688: theta  = 17'd86382;
		-18'd113664: theta  = 17'd85860;
		-18'd112640: theta  = 17'd85353;
		-18'd111616: theta  = 17'd84858;
		-18'd110592: theta  = 17'd84376;
		-18'd109568: theta  = 17'd83904;
		-18'd108544: theta  = 17'd83442;
		-18'd107520: theta  = 17'd82990;
		-18'd106496: theta  = 17'd82547;
		-18'd105472: theta  = 17'd82112;
		-18'd104448: theta  = 17'd81684;
		-18'd103424: theta  = 17'd81264;
		-18'd102400: theta  = 17'd80850;
		-18'd101376: theta  = 17'd80443;
		-18'd100352: theta  = 17'd80042;
		-18'd99328: theta  = 17'd79647;
		-18'd98304: theta  = 17'd79257;
		-18'd97280: theta  = 17'd78873;
		-18'd96256: theta  = 17'd78493;
		-18'd95232: theta  = 17'd78118;
		-18'd94208: theta  = 17'd77748;
		-18'd93184: theta  = 17'd77382;
		-18'd92160: theta  = 17'd77020;
		-18'd91136: theta  = 17'd76661;
		-18'd90112: theta  = 17'd76307;
		-18'd89088: theta  = 17'd75956;
		-18'd88064: theta  = 17'd75609;
		-18'd87040: theta  = 17'd75265;
		-18'd86016: theta  = 17'd74924;
		-18'd84992: theta  = 17'd74586;
		-18'd83968: theta  = 17'd74251;
		-18'd82944: theta  = 17'd73919;
		-18'd81920: theta  = 17'd73590;
		-18'd80896: theta  = 17'd73263;
		-18'd79872: theta  = 17'd72939;
		-18'd78848: theta  = 17'd72617;
		-18'd77824: theta  = 17'd72298;
		-18'd76800: theta  = 17'd71981;
		-18'd75776: theta  = 17'd71666;
		-18'd74752: theta  = 17'd71353;
		-18'd73728: theta  = 17'd71042;
		-18'd72704: theta  = 17'd70734;
		-18'd71680: theta  = 17'd70427;
		-18'd70656: theta  = 17'd70122;
		-18'd69632: theta  = 17'd69819;
		-18'd68608: theta  = 17'd69517;
		-18'd67584: theta  = 17'd69218;
		-18'd66560: theta  = 17'd68920;
		-18'd65536: theta  = 17'd68623;
		-18'd64512: theta  = 17'd68328;
		-18'd63488: theta  = 17'd68035;
		-18'd62464: theta  = 17'd67743;
		-18'd61440: theta  = 17'd67452;
		-18'd60416: theta  = 17'd67163;
		-18'd59392: theta  = 17'd66875;
		-18'd58368: theta  = 17'd66589;
		-18'd57344: theta  = 17'd66303;
		-18'd56320: theta  = 17'd66019;
		-18'd55296: theta  = 17'd65736;
		-18'd54272: theta  = 17'd65454;
		-18'd53248: theta  = 17'd65174;
		-18'd52224: theta  = 17'd64894;
		-18'd51200: theta  = 17'd64615;
		-18'd50176: theta  = 17'd64338;
		-18'd49152: theta  = 17'd64061;
		-18'd48128: theta  = 17'd63785;
		-18'd47104: theta  = 17'd63510;
		-18'd46080: theta  = 17'd63236;
		-18'd45056: theta  = 17'd62963;
		-18'd44032: theta  = 17'd62691;
		-18'd43008: theta  = 17'd62420;
		-18'd41984: theta  = 17'd62149;
		-18'd40960: theta  = 17'd61879;
		-18'd39936: theta  = 17'd61610;
		-18'd38912: theta  = 17'd61341;
		-18'd37888: theta  = 17'd61073;
		-18'd36864: theta  = 17'd60806;
		-18'd35840: theta  = 17'd60540;
		-18'd34816: theta  = 17'd60274;
		-18'd33792: theta  = 17'd60008;
		-18'd32768: theta  = 17'd59744;
		-18'd31744: theta  = 17'd59480;
		-18'd30720: theta  = 17'd59216;
		-18'd29696: theta  = 17'd58953;
		-18'd28672: theta  = 17'd58690;
		-18'd27648: theta  = 17'd58428;
		-18'd26624: theta  = 17'd58166;
		-18'd25600: theta  = 17'd57905;
		-18'd24576: theta  = 17'd57644;
		-18'd23552: theta  = 17'd57383;
		-18'd22528: theta  = 17'd57123;
		-18'd21504: theta  = 17'd56864;
		-18'd20480: theta  = 17'd56604;
		-18'd19456: theta  = 17'd56345;
		-18'd18432: theta  = 17'd56086;
		-18'd17408: theta  = 17'd55828;
		-18'd16384: theta  = 17'd55570;
		-18'd15360: theta  = 17'd55312;
		-18'd14336: theta  = 17'd55054;
		-18'd13312: theta  = 17'd54796;
		-18'd12288: theta  = 17'd54539;
		-18'd11264: theta  = 17'd54282;
		-18'd10240: theta  = 17'd54025;
		-18'd9216: theta  = 17'd53768;
		-18'd8192: theta  = 17'd53512;
		-18'd7168: theta  = 17'd53255;
		-18'd6144: theta  = 17'd52999;
		-18'd5120: theta  = 17'd52742;
		-18'd4096: theta  = 17'd52486;
		-18'd3072: theta  = 17'd52230;
		-18'd2048: theta  = 17'd51974;
		-18'd1024: theta  = 17'd51718;
		18'd0: theta  = 17'd51462;
		18'd1024: theta  = 17'd51205;
		18'd2048: theta  = 17'd50949;
		18'd3072: theta  = 17'd50693;
		18'd4096: theta  = 17'd50437;
		18'd5120: theta  = 17'd50181;
		18'd6144: theta  = 17'd49924;
		18'd7168: theta  = 17'd49668;
		18'd8192: theta  = 17'd49412;
		18'd9216: theta  = 17'd49155;
		18'd10240: theta  = 17'd48898;
		18'd11264: theta  = 17'd48641;
		18'd12288: theta  = 17'd48384;
		18'd13312: theta  = 17'd48127;
		18'd14336: theta  = 17'd47869;
		18'd15360: theta  = 17'd47611;
		18'd16384: theta  = 17'd47353;
		18'd17408: theta  = 17'd47095;
		18'd18432: theta  = 17'd46837;
		18'd19456: theta  = 17'd46578;
		18'd20480: theta  = 17'd46319;
		18'd21504: theta  = 17'd46059;
		18'd22528: theta  = 17'd45799;
		18'd23552: theta  = 17'd45539;
		18'd24576: theta  = 17'd45279;
		18'd25600: theta  = 17'd45018;
		18'd26624: theta  = 17'd44756;
		18'd27648: theta  = 17'd44495;
		18'd28672: theta  = 17'd44232;
		18'd29696: theta  = 17'd43970;
		18'd30720: theta  = 17'd43707;
		18'd31744: theta  = 17'd43443;
		18'd32768: theta  = 17'd43179;
		18'd33792: theta  = 17'd42914;
		18'd34816: theta  = 17'd42649;
		18'd35840: theta  = 17'd42383;
		18'd36864: theta  = 17'd42116;
		18'd37888: theta  = 17'd41849;
		18'd38912: theta  = 17'd41581;
		18'd39936: theta  = 17'd41312;
		18'd40960: theta  = 17'd41043;
		18'd41984: theta  = 17'd40773;
		18'd43008: theta  = 17'd40502;
		18'd44032: theta  = 17'd40231;
		18'd45056: theta  = 17'd39958;
		18'd46080: theta  = 17'd39685;
		18'd47104: theta  = 17'd39411;
		18'd48128: theta  = 17'd39136;
		18'd49152: theta  = 17'd38861;
		18'd50176: theta  = 17'd38584;
		18'd51200: theta  = 17'd38306;
		18'd52224: theta  = 17'd38027;
		18'd53248: theta  = 17'd37748;
		18'd54272: theta  = 17'd37467;
		18'd55296: theta  = 17'd37185;
		18'd56320: theta  = 17'd36902;
		18'd57344: theta  = 17'd36617;
		18'd58368: theta  = 17'd36332;
		18'd59392: theta  = 17'd36045;
		18'd60416: theta  = 17'd35757;
		18'd61440: theta  = 17'd35468;
		18'd62464: theta  = 17'd35177;
		18'd63488: theta  = 17'd34885;
		18'd64512: theta  = 17'd34592;
		18'd65536: theta  = 17'd34297;
		18'd66560: theta  = 17'd34000;
		18'd67584: theta  = 17'd33702;
		18'd68608: theta  = 17'd33402;
		18'd69632: theta  = 17'd33101;
		18'd70656: theta  = 17'd32797;
		18'd71680: theta  = 17'd32492;
		18'd72704: theta  = 17'd32185;
		18'd73728: theta  = 17'd31876;
		18'd74752: theta  = 17'd31566;
		18'd75776: theta  = 17'd31253;
		18'd76800: theta  = 17'd30938;
		18'd77824: theta  = 17'd30620;
		18'd78848: theta  = 17'd30301;
		18'd79872: theta  = 17'd29979;
		18'd80896: theta  = 17'd29654;
		18'd81920: theta  = 17'd29328;
		18'd82944: theta  = 17'd28998;
		18'd83968: theta  = 17'd28666;
		18'd84992: theta  = 17'd28331;
		18'd86016: theta  = 17'd27992;
		18'd87040: theta  = 17'd27651;
		18'd88064: theta  = 17'd27307;
		18'd89088: theta  = 17'd26959;
		18'd90112: theta  = 17'd26608;
		18'd91136: theta  = 17'd26254;
		18'd92160: theta  = 17'd25895;
		18'd93184: theta  = 17'd25533;
		18'd94208: theta  = 17'd25166;
		18'd95232: theta  = 17'd24795;
		18'd96256: theta  = 17'd24420;
		18'd97280: theta  = 17'd24040;
		18'd98304: theta  = 17'd23655;
		18'd99328: theta  = 17'd23265;
		18'd100352: theta  = 17'd22869;
		18'd101376: theta  = 17'd22468;
		18'd102400: theta  = 17'd22060;
		18'd103424: theta  = 17'd21646;
		18'd104448: theta  = 17'd21225;
		18'd105472: theta  = 17'd20797;
		18'd106496: theta  = 17'd20361;
		18'd107520: theta  = 17'd19917;
		18'd108544: theta  = 17'd19464;
		18'd109568: theta  = 17'd19002;
		18'd110592: theta  = 17'd18529;
		18'd111616: theta  = 17'd18046;
		18'd112640: theta  = 17'd17550;
		18'd113664: theta  = 17'd17042;
		18'd114688: theta  = 17'd16519;
		18'd115712: theta  = 17'd15981;
		18'd116736: theta  = 17'd15426;
		18'd117760: theta  = 17'd14851;
		18'd118784: theta  = 17'd14255;
		18'd119808: theta  = 17'd13635;
		18'd120832: theta  = 17'd12987;
		18'd121856: theta  = 17'd12307;
		18'd122880: theta  = 17'd11588;
		18'd123904: theta  = 17'd10825;
		18'd124928: theta  = 17'd10005;
		18'd125952: theta  = 17'd9115;
		18'd126976: theta  = 17'd8131;
		18'd128000: theta  = 17'd7012;
		18'd129024: theta  = 17'd5682;
		18'd130048: theta  = 17'd3929;
		18'd131072: theta  = 17'd0;

	endcase
end
endmodule