package com.twitter.model.json.profiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonVineProfile$$JsonObjectMapper extends JsonMapper<JsonVineProfile> {
    public JsonVineProfile parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonVineProfile _parse(JsonParser jsonParser) throws IOException {
        JsonVineProfile jsonVineProfile = new JsonVineProfile();
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
            parseField(jsonVineProfile, e, jsonParser);
            jsonParser.c();
        }
        return jsonVineProfile;
    }

    public static void parseField(JsonVineProfile jsonVineProfile, String str, JsonParser jsonParser) throws IOException {
        if ("app_link".equals(str)) {
            jsonVineProfile.b = jsonParser.a(null);
        } else if ("loop_count".equals(str)) {
            jsonVineProfile.c = jsonParser.p();
        } else if ("visible".equals(str)) {
            jsonVineProfile.d = jsonParser.r();
        } else if ("web_link".equals(str)) {
            jsonVineProfile.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonVineProfile jsonVineProfile, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonVineProfile, jsonGenerator, z);
    }

    public static void _serialize(JsonVineProfile jsonVineProfile, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("app_link", jsonVineProfile.b);
        jsonGenerator.a("loop_count", jsonVineProfile.c);
        jsonGenerator.a("visible", jsonVineProfile.d);
        jsonGenerator.a("web_link", jsonVineProfile.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
