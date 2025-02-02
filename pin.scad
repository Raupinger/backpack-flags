fs=0.01; 
//arbitrary
width=30;
//golden ratio
total_height=width/1.618;
//for rainbow flag: all stripes total_height/6 
//for bi flag: center stipe: total_height * 0.2; top/bottom stripes: total_height * 0.4
height=total_height * 0.2;
//1=top piece, 2=middle piece, 3=🥺 piece
piece_type=2;
//which strap to clip on; 1: left, 2: right
side=1;
difference() {
difference() {
    union() {
        cylinder(h=height,r1=8/2, r2=8/2,$fs=fs);
        translate([0,3,height/2]) cube([width,4,height], center=true);
        if (piece_type!=1) translate([0,3.4,height-0.4]) scale([6*(width/20),0.7,1]) rotate([0,0,45]) cylinder(2,2,0,$fn=4);
    }
    union() {
        cylinder(h=30,r1=4/2, r2=4/2,$fs=fs);
        rotate([0,0,20 + (side == 2 ? 140 : 0)]) translate([-2,0,height/2]) cube([5,3.3,height],center=true);
    }
};
 if (piece_type!=3) translate([0,3.4,0]) scale([6*(width/20),0.7,1]) rotate([0,0,45]) cylinder(2,2,0,$fn=4);
};
