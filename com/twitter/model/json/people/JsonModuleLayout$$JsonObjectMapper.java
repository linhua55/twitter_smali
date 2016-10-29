package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonModuleLayout$$JsonObjectMapper extends JsonMapper<JsonModuleLayout> {
    public JsonModuleLayout parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonModuleLayout _parse(JsonParser jsonParser) throws IOException {
        JsonModuleLayout jsonModuleLayout = new JsonModuleLayout();
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
            parseField(jsonModuleLayout, e, jsonParser);
            jsonParser.c();
        }
        return jsonModuleLayout;
    }

    public static void parseField(JsonModuleLayout jsonModuleLayout, String str, JsonParser jsonParser) throws IOException {
        if ("content".equals(str)) {
            jsonModuleLayout.b = JsonModuleLayoutContent$$JsonObjectMapper._parse(jsonParser);
        } else if ("name".equals(str)) {
            jsonModuleLayout.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonModuleLayout jsonModuleLayout, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonModuleLayout, jsonGenerator, z);
    }

    public static void _serialize(JsonModuleLayout jsonModuleLayout, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonModuleLayout.b != null) {
            jsonGenerator.a("content");
            JsonModuleLayoutContent$$JsonObjectMapper._serialize(jsonModuleLayout.b, jsonGenerator, true);
        }
        jsonGenerator.a("name", jsonModuleLayout.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
