package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonModule$$JsonObjectMapper extends JsonMapper<JsonModule> {
    public JsonModule parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonModule _parse(JsonParser jsonParser) throws IOException {
        JsonModule jsonModule = new JsonModule();
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
            parseField(jsonModule, e, jsonParser);
            jsonParser.c();
        }
        return jsonModule;
    }

    public static void parseField(JsonModule jsonModule, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonModule.a = jsonParser.a(null);
        } else if ("layout".equals(str)) {
            jsonModule.c = JsonModuleLayout$$JsonObjectMapper._parse(jsonParser);
        } else if ("name".equals(str)) {
            jsonModule.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonModule jsonModule, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonModule, jsonGenerator, z);
    }

    public static void _serialize(JsonModule jsonModule, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonModule.a);
        if (jsonModule.c != null) {
            jsonGenerator.a("layout");
            JsonModuleLayout$$JsonObjectMapper._serialize(jsonModule.c, jsonGenerator, true);
        }
        jsonGenerator.a("name", jsonModule.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
