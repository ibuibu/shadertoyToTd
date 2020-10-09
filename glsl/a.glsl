void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 r = iResolution.xy;
  float t = iTime;

  vec2 p = (fragCoord.xy * 2.0 - r) / min(r.x, r.y);
  p.x += sin(t);
  float l = 0.1 / length(p);

  fragColor = vec4(vec3(l),1.0);
}
