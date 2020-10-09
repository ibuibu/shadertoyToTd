void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 r = iResolution.xy;
  float t = iTime;

  vec2 p = (fragCoord.xy * 2.0 - r) / min(r.x, r.y);
  float l = abs(p.x) + abs(p.y);
  l = abs(sin(t*5.)) * step(l, 0.5);

  fragColor = vec4(vec3(l),1.0);
}
