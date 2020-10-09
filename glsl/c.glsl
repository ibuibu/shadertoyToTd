void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 r = iResolution.xy;
  float t = iTime;
  vec2 uv = (fragCoord-.5*r)/r.y;
  uv*=3.;

  float d = .8 * abs(sin(t)) / length(uv.x/uv.y);
  vec3 col = vec3(uv.y, uv.x, 0.);
  col += d;

  fragColor = vec4(col, 1.0);
}