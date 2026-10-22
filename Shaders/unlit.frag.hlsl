Texture2D<float4> u_texture : register(t0, space2);
SamplerState u_sampler : register(s0, space2);

cbuffer Uniforms : register(b0, space3)
{
    float4 color;
}

struct Input
{
    float2 texcoord : TEXCOORD0;
};

struct Output
{
	float4 color : SV_Target0;
};

Output main(Input input)
{
	Output output;
    output.color = u_texture.Sample(u_sampler, input.texcoord); //float4(0.0f, 0.0f, 1.0f, 1.0f);

	return output;
}
