package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonAuthorInfo$$JsonObjectMapper extends JsonMapper<JsonAuthorInfo> {
    public JsonAuthorInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAuthorInfo _parse(JsonParser jsonParser) throws IOException {
        JsonAuthorInfo jsonAuthorInfo = new JsonAuthorInfo();
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
            parseField(jsonAuthorInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonAuthorInfo;
    }

    public static void parseField(JsonAuthorInfo jsonAuthorInfo, String str, JsonParser jsonParser) throws IOException {
        if ("favicon_url".equals(str)) {
            jsonAuthorInfo.e = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonAuthorInfo.a = jsonParser.p();
        } else if ("verified".equals(str)) {
            jsonAuthorInfo.b = jsonParser.r();
        } else if ("name".equals(str)) {
            jsonAuthorInfo.c = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            jsonAuthorInfo.d = jsonParser.a(null);
        }
    }

    public void serialize(JsonAuthorInfo jsonAuthorInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAuthorInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonAuthorInfo jsonAuthorInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("favicon_url", jsonAuthorInfo.e);
        jsonGenerator.a("id", jsonAuthorInfo.a);
        jsonGenerator.a("verified", jsonAuthorInfo.b);
        jsonGenerator.a("name", jsonAuthorInfo.c);
        jsonGenerator.a("screen_name", jsonAuthorInfo.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
