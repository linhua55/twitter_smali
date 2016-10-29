package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.businessprofiles.ab;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonHourMinuteRange$$JsonObjectMapper extends JsonMapper<JsonHourMinuteRange> {
    public JsonHourMinuteRange parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonHourMinuteRange _parse(JsonParser jsonParser) throws IOException {
        JsonHourMinuteRange jsonHourMinuteRange = new JsonHourMinuteRange();
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
            parseField(jsonHourMinuteRange, e, jsonParser);
            jsonParser.c();
        }
        return jsonHourMinuteRange;
    }

    public static void parseField(JsonHourMinuteRange jsonHourMinuteRange, String str, JsonParser jsonParser) throws IOException {
        if ("end".equals(str)) {
            jsonHourMinuteRange.b = (ab) LoganSquare.typeConverterFor(ab.class).parse(jsonParser);
        } else if ("start".equals(str)) {
            jsonHourMinuteRange.a = (ab) LoganSquare.typeConverterFor(ab.class).parse(jsonParser);
        }
    }

    public void serialize(JsonHourMinuteRange jsonHourMinuteRange, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonHourMinuteRange, jsonGenerator, z);
    }

    public static void _serialize(JsonHourMinuteRange jsonHourMinuteRange, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonHourMinuteRange.b != null) {
            LoganSquare.typeConverterFor(ab.class).serialize(jsonHourMinuteRange.b, "end", true, jsonGenerator);
        }
        if (jsonHourMinuteRange.a != null) {
            LoganSquare.typeConverterFor(ab.class).serialize(jsonHourMinuteRange.a, "start", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
