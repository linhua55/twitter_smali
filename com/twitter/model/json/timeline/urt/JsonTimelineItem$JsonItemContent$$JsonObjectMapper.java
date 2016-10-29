package com.twitter.model.json.timeline.urt;

import cnt;
import coi;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.timeline.urt.JsonTimelineItem.JsonItemContent;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineItem$JsonItemContent$$JsonObjectMapper extends JsonMapper<JsonItemContent> {
    public JsonItemContent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonItemContent _parse(JsonParser jsonParser) throws IOException {
        JsonItemContent jsonItemContent = new JsonItemContent();
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
            parseField(jsonItemContent, e, jsonParser);
            jsonParser.c();
        }
        return jsonItemContent;
    }

    public static void parseField(JsonItemContent jsonItemContent, String str, JsonParser jsonParser) throws IOException {
        if ("conversationThread".equals(str)) {
            jsonItemContent.b = (cnt) LoganSquare.typeConverterFor(cnt.class).parse(jsonParser);
        } else if ("tweet".equals(str)) {
            jsonItemContent.a = (coi) LoganSquare.typeConverterFor(coi.class).parse(jsonParser);
        }
    }

    public void serialize(JsonItemContent jsonItemContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonItemContent, jsonGenerator, z);
    }

    public static void _serialize(JsonItemContent jsonItemContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonItemContent.b != null) {
            LoganSquare.typeConverterFor(cnt.class).serialize(jsonItemContent.b, "conversationThread", true, jsonGenerator);
        }
        if (jsonItemContent.a != null) {
            LoganSquare.typeConverterFor(coi.class).serialize(jsonItemContent.a, "tweet", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
