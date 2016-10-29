package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.timeline.o;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonInlinePromptTwoActions$$JsonObjectMapper extends JsonMapper<JsonInlinePromptTwoActions> {
    public JsonInlinePromptTwoActions parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInlinePromptTwoActions _parse(JsonParser jsonParser) throws IOException {
        JsonInlinePromptTwoActions jsonInlinePromptTwoActions = new JsonInlinePromptTwoActions();
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
            parseField(jsonInlinePromptTwoActions, e, jsonParser);
            jsonParser.c();
        }
        return jsonInlinePromptTwoActions;
    }

    public static void parseField(JsonInlinePromptTwoActions jsonInlinePromptTwoActions, String str, JsonParser jsonParser) throws IOException {
        if ("body_text".equals(str)) {
            jsonInlinePromptTwoActions.b = jsonParser.a(null);
        } else if ("header_text".equals(str)) {
            jsonInlinePromptTwoActions.a = jsonParser.a(null);
        } else if ("primary_action".equals(str)) {
            jsonInlinePromptTwoActions.c = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
        } else if ("secondary_action".equals(str)) {
            jsonInlinePromptTwoActions.d = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
        }
    }

    public void serialize(JsonInlinePromptTwoActions jsonInlinePromptTwoActions, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInlinePromptTwoActions, jsonGenerator, z);
    }

    public static void _serialize(JsonInlinePromptTwoActions jsonInlinePromptTwoActions, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("body_text", jsonInlinePromptTwoActions.b);
        jsonGenerator.a("header_text", jsonInlinePromptTwoActions.a);
        if (jsonInlinePromptTwoActions.c != null) {
            LoganSquare.typeConverterFor(o.class).serialize(jsonInlinePromptTwoActions.c, "primary_action", true, jsonGenerator);
        }
        if (jsonInlinePromptTwoActions.d != null) {
            LoganSquare.typeConverterFor(o.class).serialize(jsonInlinePromptTwoActions.d, "secondary_action", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
