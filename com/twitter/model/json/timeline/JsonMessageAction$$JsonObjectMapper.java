package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMessageAction$$JsonObjectMapper extends JsonMapper<JsonMessageAction> {
    public JsonMessageAction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMessageAction _parse(JsonParser jsonParser) throws IOException {
        JsonMessageAction jsonMessageAction = new JsonMessageAction();
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
            parseField(jsonMessageAction, e, jsonParser);
            jsonParser.c();
        }
        return jsonMessageAction;
    }

    public static void parseField(JsonMessageAction jsonMessageAction, String str, JsonParser jsonParser) throws IOException {
        if ("dismiss".equals(str)) {
            jsonMessageAction.c = jsonParser.r();
        } else if ("text".equals(str)) {
            jsonMessageAction.a = jsonParser.a(null);
        } else if ("uri".equals(str)) {
            jsonMessageAction.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonMessageAction jsonMessageAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMessageAction, jsonGenerator, z);
    }

    public static void _serialize(JsonMessageAction jsonMessageAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("dismiss", jsonMessageAction.c);
        jsonGenerator.a("text", jsonMessageAction.a);
        jsonGenerator.a("uri", jsonMessageAction.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
