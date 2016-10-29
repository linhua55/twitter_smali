package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimeRange$$JsonObjectMapper extends JsonMapper<JsonTimeRange> {
    public JsonTimeRange parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimeRange _parse(JsonParser jsonParser) throws IOException {
        JsonTimeRange jsonTimeRange = new JsonTimeRange();
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
            parseField(jsonTimeRange, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimeRange;
    }

    public static void parseField(JsonTimeRange jsonTimeRange, String str, JsonParser jsonParser) throws IOException {
        if ("end".equals(str)) {
            jsonTimeRange.b = jsonParser.a(null);
        } else if ("start".equals(str)) {
            jsonTimeRange.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTimeRange jsonTimeRange, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimeRange, jsonGenerator, z);
    }

    public static void _serialize(JsonTimeRange jsonTimeRange, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("end", jsonTimeRange.b);
        jsonGenerator.a("start", jsonTimeRange.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
