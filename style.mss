
@admin: #333;
@important: #999;
@light: #ccc;
@highway: #ddd;
@highway-edge: #999;
@park: #eee;
@water: #eee;

Map {
  background-color: @water;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

#lines { 
  line-cap: round;
  line-width: 0;
  
  [highway='primary'] {
    ::outline {
      line-color: @highway-edge;
      line-width: 0;
    }
    line-width: 2.5;
    line-color: @highway;
  }
  
  [highway='residential'],
  [highway='secondary'],
  [highway='tertiary'] {
    line-width:0;
    line-color: @light;
  }
  
  [highway='secondary'] {
    line-width:1;
    line-color: @light;
  }
  
  [highway='tertiary'] {
    line-width: 0.25;
    line-color: @light
  }
}

#primary-lines {
  [highway='motorway'],
  [highway='trunk'] {
    ::outline {
      line-color: @highway-edge;
      line-width: 4;
    }
    line-width: 2;
    line-color: @highway;
  }

}

#polys {
  [leisure='park'] {
  	polygon-opacity:1;
 	polygon-fill: @park;
    [name='Belle Isle'] {
      polygon-fill: #fff;
    }
  }
  
  [natural='water'],
  [waterway='riverbank'],
  [water='lake'] {
    polygon-opacity:1;
 	polygon-fill: @water;
  }
  
}

#admin-bounds {
  [boundary='administrative'] {
    [name!='Wayne County']
    [name!='Detroit'] {
    polygon-fill: #fff;
    polygon-opacity: 0.9;
    }
    
    [name='Detroit'] {
      ::outline {
        line-width: 1;
        line-color: @admin;
        line-dasharray: 2,2
      }
    }
  }
}

#coastline {
  line-color:#ddd;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#fff;
}


#canaderp {
  polygon-fill: #fff;
  polygon-opacity: 0.9;
}
