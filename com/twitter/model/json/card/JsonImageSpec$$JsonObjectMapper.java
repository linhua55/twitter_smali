package com.twitter.model.json.card;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonImageSpec$$JsonObjectMapper extends JsonMapper<JsonImageSpec> {
    public JsonImageSpec parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonImageSpec _parse(JsonParser jsonParser) throws IOException {
        JsonImageSpec jsonImageSpec = new JsonImageSpec();
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
            parseField(jsonImageSpec, e, jsonParser);
            jsonParser.c();
        }
        return jsonImageSpec;
    }

    public static void parseField(JsonImageSpec jsonImageSpec, String str, JsonParser jsonParser) throws IOException {
        if ("alt".equals(str)) {
            jsonImageSpec.d = jsonParser.a(null);
        } else if ("height".equals(str)) {
            jsonImageSpec.b = (float) jsonParser.q();
        } else if ("url".equals(str)) {
            jsonImageSpec.a = jsonParser.a(null);
        } else if ("width".equals(str)) {
            jsonImageSpec.c = (float) jsonParser.q();
        }
    }

    public void serialize(JsonImageSpec jsonImageSpec, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonImageSpec, jsonGenerator, z);
    }

    public static void _serialize(JsonImageSpec jsonImageSpec, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("alt", jsonImageSpec.d);
        jsonGenerator.a("height", jsonImageSpec.b);
        jsonGenerator.a("url", jsonImageSpec.a);
        jsonGenerator.a("width", jsonImageSpec.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
