package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonHourMinute$$JsonObjectMapper extends JsonMapper<JsonHourMinute> {
    public JsonHourMinute parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonHourMinute _parse(JsonParser jsonParser) throws IOException {
        JsonHourMinute jsonHourMinute = new JsonHourMinute();
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
            parseField(jsonHourMinute, e, jsonParser);
            jsonParser.c();
        }
        return jsonHourMinute;
    }

    public static void parseField(JsonHourMinute jsonHourMinute, String str, JsonParser jsonParser) throws IOException {
        if ("hour".equals(str)) {
            jsonHourMinute.a = jsonParser.o();
        } else if ("minute".equals(str)) {
            jsonHourMinute.b = jsonParser.o();
        }
    }

    public void serialize(JsonHourMinute jsonHourMinute, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonHourMinute, jsonGenerator, z);
    }

    public static void _serialize(JsonHourMinute jsonHourMinute, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("hour", jsonHourMinute.a);
        jsonGenerator.a("minute", jsonHourMinute.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
