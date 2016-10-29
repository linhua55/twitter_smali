package com.twitter.model.json.timeline.urt;

import cnr;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineInstruction$$JsonObjectMapper extends JsonMapper<JsonTimelineInstruction> {
    public JsonTimelineInstruction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineInstruction _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineInstruction jsonTimelineInstruction = new JsonTimelineInstruction();
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
            parseField(jsonTimelineInstruction, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineInstruction;
    }

    public static void parseField(JsonTimelineInstruction jsonTimelineInstruction, String str, JsonParser jsonParser) throws IOException {
        if ("addEntries".equals(str)) {
            jsonTimelineInstruction.a = (cnr) LoganSquare.typeConverterFor(cnr.class).parse(jsonParser);
        }
    }

    public void serialize(JsonTimelineInstruction jsonTimelineInstruction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineInstruction, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineInstruction jsonTimelineInstruction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTimelineInstruction.a != null) {
            LoganSquare.typeConverterFor(cnr.class).serialize(jsonTimelineInstruction.a, "addEntries", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
