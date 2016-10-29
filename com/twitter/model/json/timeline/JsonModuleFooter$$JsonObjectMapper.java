package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonModuleFooter$$JsonObjectMapper extends JsonMapper<JsonModuleFooter> {
    public JsonModuleFooter parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonModuleFooter _parse(JsonParser jsonParser) throws IOException {
        JsonModuleFooter jsonModuleFooter = new JsonModuleFooter();
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
            parseField(jsonModuleFooter, e, jsonParser);
            jsonParser.c();
        }
        return jsonModuleFooter;
    }

    public static void parseField(JsonModuleFooter jsonModuleFooter, String str, JsonParser jsonParser) throws IOException {
        if ("text".equals(str)) {
            jsonModuleFooter.a = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonModuleFooter.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonModuleFooter jsonModuleFooter, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonModuleFooter, jsonGenerator, z);
    }

    public static void _serialize(JsonModuleFooter jsonModuleFooter, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("text", jsonModuleFooter.a);
        jsonGenerator.a("url", jsonModuleFooter.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
