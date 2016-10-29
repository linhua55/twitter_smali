package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.o;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonInlinePrompt$$JsonObjectMapper extends JsonMapper<JsonInlinePrompt> {
    public JsonInlinePrompt parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInlinePrompt _parse(JsonParser jsonParser) throws IOException {
        JsonInlinePrompt jsonInlinePrompt = new JsonInlinePrompt();
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
            parseField(jsonInlinePrompt, e, jsonParser);
            jsonParser.c();
        }
        return jsonInlinePrompt;
    }

    public static void parseField(JsonInlinePrompt jsonInlinePrompt, String str, JsonParser jsonParser) throws IOException {
        if ("body_text".equals(str)) {
            jsonInlinePrompt.b = jsonParser.a(null);
        } else if ("header_text".equals(str)) {
            jsonInlinePrompt.a = jsonParser.a(null);
        } else if ("primary_action".equals(str)) {
            jsonInlinePrompt.c = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
        } else if ("secondary_action".equals(str)) {
            jsonInlinePrompt.d = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
        }
    }

    public void serialize(JsonInlinePrompt jsonInlinePrompt, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInlinePrompt, jsonGenerator, z);
    }

    public static void _serialize(JsonInlinePrompt jsonInlinePrompt, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("body_text", jsonInlinePrompt.b);
        jsonGenerator.a("header_text", jsonInlinePrompt.a);
        if (jsonInlinePrompt.c != null) {
            LoganSquare.typeConverterFor(o.class).serialize(jsonInlinePrompt.c, "primary_action", true, jsonGenerator);
        }
        if (jsonInlinePrompt.d != null) {
            LoganSquare.typeConverterFor(o.class).serialize(jsonInlinePrompt.d, "secondary_action", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
