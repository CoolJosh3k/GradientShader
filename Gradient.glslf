void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord/iResolution.xy;

    vec3 col = uv.xxx;
    
    vec3 amplitudeOffset = vec3(0.5, 0.5, 0.5);
    vec3 amplitude = vec3(0.5, 0.5, 0.5);
    vec3 period = vec3(1.0, 1.0, 1.0);
    vec3 phase = vec3(0.0, 0.3333333432674407958984375, 0.666666686534881591796875);
    float pi2 = 6.283185482025146484375;
    col *= period;
    col += phase;
    col *= pi2;
    col = cos(col);
    col *= amplitude;
    col += amplitudeOffset;

    fragColor = vec4(col,1.0);
}
