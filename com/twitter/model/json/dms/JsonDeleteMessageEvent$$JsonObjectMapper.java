package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.dms.ay;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonDeleteMessageEvent$$JsonObjectMapper extends JsonMapper<JsonDeleteMessageEvent> {
    public JsonDeleteMessageEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDeleteMessageEvent _parse(JsonParser jsonParser) throws IOException {
        JsonDeleteMessageEvent jsonDeleteMessageEvent = new JsonDeleteMessageEvent();
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
            parseField(jsonDeleteMessageEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonDeleteMessageEvent;
    }

    public static void parseField(JsonDeleteMessageEvent jsonDeleteMessageEvent, String str, JsonParser jsonParser) throws IOException {
        if ("affects_sort".equals(str)) {
            jsonDeleteMessageEvent.d = jsonParser.r();
        } else if ("conversation_id".equals(str)) {
            jsonDeleteMessageEvent.c = jsonParser.a(null);
        } else if ("time".equals(str)) {
            jsonDeleteMessageEvent.b = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonDeleteMessageEvent.a = jsonParser.p();
        } else if ("messages".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ay ayVar = (ay) LoganSquare.typeConverterFor(ay.class).parse(jsonParser);
                    if (ayVar != null) {
                        arrayList.add(ayVar);
                    }
                }
                jsonDeleteMessageEvent.f = arrayList;
                return;
            }
            jsonDeleteMessageEvent.f = null;
        } else if ("request_id".equals(str)) {
            jsonDeleteMessageEvent.e = jsonParser.a(null);
        }
    }

    public void serialize(JsonDeleteMessageEvent jsonDeleteMessageEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDeleteMessageEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonDeleteMessageEvent jsonDeleteMessageEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("affects_sort", jsonDeleteMessageEvent.d);
        jsonGenerator.a("conversation_id", jsonDeleteMessageEvent.c);
        jsonGenerator.a("time", jsonDeleteMessageEvent.b);
        jsonGenerator.a("id", jsonDeleteMessageEvent.a);
        List<ay> list = jsonDeleteMessageEvent.f;
        if (list != null) {
            jsonGenerator.a("messages");
            jsonGenerator.a();
            for (ay ayVar : list) {
                if (ayVar != null) {
                    LoganSquare.typeConverterFor(ay.class).serialize(ayVar, "lslocalmessagesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("request_id", jsonDeleteMessageEvent.e);
        if (z) {
            jsonGenerator.d();
        }
    }
}
