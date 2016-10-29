package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonReadStateEvent$$JsonObjectMapper extends JsonMapper<JsonReadStateEvent> {
    public JsonReadStateEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonReadStateEvent _parse(JsonParser jsonParser) throws IOException {
        JsonReadStateEvent jsonReadStateEvent = new JsonReadStateEvent();
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
            parseField(jsonReadStateEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonReadStateEvent;
    }

    public static void parseField(JsonReadStateEvent jsonReadStateEvent, String str, JsonParser jsonParser) throws IOException {
        if ("affects_sort".equals(str)) {
            jsonReadStateEvent.d = jsonParser.r();
        } else if ("conversation_id".equals(str)) {
            jsonReadStateEvent.c = jsonParser.a(null);
        } else if ("time".equals(str)) {
            jsonReadStateEvent.b = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonReadStateEvent.a = jsonParser.p();
        } else if ("last_read_event_id".equals(str)) {
            jsonReadStateEvent.e = jsonParser.p();
        }
    }

    public void serialize(JsonReadStateEvent jsonReadStateEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonReadStateEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonReadStateEvent jsonReadStateEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("affects_sort", jsonReadStateEvent.d);
        jsonGenerator.a("conversation_id", jsonReadStateEvent.c);
        jsonGenerator.a("time", jsonReadStateEvent.b);
        jsonGenerator.a("id", jsonReadStateEvent.a);
        jsonGenerator.a("last_read_event_id", jsonReadStateEvent.e);
        if (z) {
            jsonGenerator.d();
        }
    }
}
