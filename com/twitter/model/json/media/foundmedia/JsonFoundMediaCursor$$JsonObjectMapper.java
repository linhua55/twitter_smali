package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFoundMediaCursor$$JsonObjectMapper extends JsonMapper<JsonFoundMediaCursor> {
    public JsonFoundMediaCursor parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaCursor _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaCursor jsonFoundMediaCursor = new JsonFoundMediaCursor();
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
            parseField(jsonFoundMediaCursor, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaCursor;
    }

    public static void parseField(JsonFoundMediaCursor jsonFoundMediaCursor, String str, JsonParser jsonParser) throws IOException {
        if ("next".equals(str)) {
            jsonFoundMediaCursor.a = jsonParser.a(null);
        } else if ("prev".equals(str)) {
            jsonFoundMediaCursor.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonFoundMediaCursor jsonFoundMediaCursor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaCursor, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaCursor jsonFoundMediaCursor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("next", jsonFoundMediaCursor.a);
        jsonGenerator.a("prev", jsonFoundMediaCursor.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
