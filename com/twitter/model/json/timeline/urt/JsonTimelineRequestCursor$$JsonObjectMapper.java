package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineRequestCursor$$JsonObjectMapper extends JsonMapper<JsonTimelineRequestCursor> {
    protected static final a CURSOR_TYPE_TYPE_CONVERTER;

    static {
        CURSOR_TYPE_TYPE_CONVERTER = new a();
    }

    public JsonTimelineRequestCursor parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineRequestCursor _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineRequestCursor jsonTimelineRequestCursor = new JsonTimelineRequestCursor();
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
            parseField(jsonTimelineRequestCursor, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineRequestCursor;
    }

    public static void parseField(JsonTimelineRequestCursor jsonTimelineRequestCursor, String str, JsonParser jsonParser) throws IOException {
        if ("cursorType".equals(str)) {
            jsonTimelineRequestCursor.b = ((Integer) CURSOR_TYPE_TYPE_CONVERTER.parse(jsonParser)).intValue();
        } else if ("value".equals(str)) {
            jsonTimelineRequestCursor.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTimelineRequestCursor jsonTimelineRequestCursor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineRequestCursor, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineRequestCursor jsonTimelineRequestCursor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        CURSOR_TYPE_TYPE_CONVERTER.serialize(Integer.valueOf(jsonTimelineRequestCursor.b), "cursorType", true, jsonGenerator);
        jsonGenerator.a("value", jsonTimelineRequestCursor.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
