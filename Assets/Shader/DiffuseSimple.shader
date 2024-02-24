Shader "Example/DiffuseSimple" {
    SubShader {
      Tags { "RenderType" = "Opaque" }
      CGPROGRAM
      #pragma surface surf Lambert
      struct Input {
          float4 color : COLOR;
      };
      void surf (Input IN, inout SurfaceOutput o) {
          o.Albedo.rgb = fixed3(1,0,0); // 1 = (1,1,1,1) = white
      }
      ENDCG
    }
    Fallback "Diffuse"
  }