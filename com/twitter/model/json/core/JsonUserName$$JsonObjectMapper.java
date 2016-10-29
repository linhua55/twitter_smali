package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUserName$$JsonObjectMapper extends JsonMapper<JsonUserName> {
    public JsonUserName parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUserName _parse(JsonParser jsonParser) throws IOException {
        JsonUserName jsonUserName = new JsonUserName();
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
            parseField(jsonUserName, e, jsonParser);
            jsonParser.c();
        }
        return jsonUserName;
    }

    public static void parseField(JsonUserName jsonUserName, String str, JsonParser jsonParser) throws IOException {
        if ("name".equals(str)) {
            jsonUserName.a = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            jsonUserName.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonUserName jsonUserName, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUserName, jsonGenerator, z);
    }

    public static void _serialize(JsonUserName jsonUserName, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("name", jsonUserName.a);
        jsonGenerator.a("screen_name", jsonUserName.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
