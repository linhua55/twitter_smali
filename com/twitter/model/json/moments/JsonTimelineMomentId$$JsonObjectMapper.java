package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineMomentId$$JsonObjectMapper extends JsonMapper<JsonTimelineMomentId> {
    public JsonTimelineMomentId parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineMomentId _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineMomentId jsonTimelineMomentId = new JsonTimelineMomentId();
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
            parseField(jsonTimelineMomentId, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineMomentId;
    }

    public static void parseField(JsonTimelineMomentId jsonTimelineMomentId, String str, JsonParser jsonParser) throws IOException {
        if ("moment_id".equals(str)) {
            jsonTimelineMomentId.a = jsonParser.p();
        }
    }

    public void serialize(JsonTimelineMomentId jsonTimelineMomentId, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineMomentId, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineMomentId jsonTimelineMomentId, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("moment_id", jsonTimelineMomentId.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
