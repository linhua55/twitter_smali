package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.timeline.urt.JsonTimelineEntry.JsonTimelineEntryContent;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineEntry$JsonTimelineEntryContent$$JsonObjectMapper extends JsonMapper<JsonTimelineEntryContent> {
    public JsonTimelineEntryContent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineEntryContent _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineEntryContent jsonTimelineEntryContent = new JsonTimelineEntryContent();
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
            parseField(jsonTimelineEntryContent, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineEntryContent;
    }

    public static void parseField(JsonTimelineEntryContent jsonTimelineEntryContent, String str, JsonParser jsonParser) throws IOException {
        if ("item".equals(str)) {
            jsonTimelineEntryContent.a = JsonTimelineItem$$JsonObjectMapper._parse(jsonParser);
        } else if ("operation".equals(str)) {
            jsonTimelineEntryContent.b = JsonTimelineOperation$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonTimelineEntryContent jsonTimelineEntryContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineEntryContent, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineEntryContent jsonTimelineEntryContent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTimelineEntryContent.a != null) {
            jsonGenerator.a("item");
            JsonTimelineItem$$JsonObjectMapper._serialize(jsonTimelineEntryContent.a, jsonGenerator, true);
        }
        if (jsonTimelineEntryContent.b != null) {
            jsonGenerator.a("operation");
            JsonTimelineOperation$$JsonObjectMapper._serialize(jsonTimelineEntryContent.b, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
