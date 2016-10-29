package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonClientEventInfo$$JsonObjectMapper extends JsonMapper<JsonClientEventInfo> {
    public JsonClientEventInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonClientEventInfo _parse(JsonParser jsonParser) throws IOException {
        JsonClientEventInfo jsonClientEventInfo = new JsonClientEventInfo();
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
            parseField(jsonClientEventInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonClientEventInfo;
    }

    public static void parseField(JsonClientEventInfo jsonClientEventInfo, String str, JsonParser jsonParser) throws IOException {
        if ("component".equals(str)) {
            jsonClientEventInfo.a = jsonParser.a(null);
        } else if ("element".equals(str)) {
            jsonClientEventInfo.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonClientEventInfo jsonClientEventInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonClientEventInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonClientEventInfo jsonClientEventInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("component", jsonClientEventInfo.a);
        jsonGenerator.a("element", jsonClientEventInfo.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
