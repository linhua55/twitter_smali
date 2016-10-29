package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonBannerSocialProof$$JsonObjectMapper extends JsonMapper<JsonBannerSocialProof> {
    public JsonBannerSocialProof parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBannerSocialProof _parse(JsonParser jsonParser) throws IOException {
        JsonBannerSocialProof jsonBannerSocialProof = new JsonBannerSocialProof();
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return null;
        }
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            parseField(jsonBannerSocialProof, e, jsonParser);
            jsonParser.c();
        }
        return jsonBannerSocialProof;
    }

    public static void parseField(JsonBannerSocialProof jsonBannerSocialProof, String str, JsonParser jsonParser) throws IOException {
        if ("text".equals(str)) {
            jsonBannerSocialProof.b = jsonParser.a(null);
        } else if ("type".equals(str)) {
            jsonBannerSocialProof.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonBannerSocialProof jsonBannerSocialProof, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBannerSocialProof, jsonGenerator, z);
    }

    public static void _serialize(JsonBannerSocialProof jsonBannerSocialProof, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("text", jsonBannerSocialProof.b);
        jsonGenerator.a("type", jsonBannerSocialProof.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
