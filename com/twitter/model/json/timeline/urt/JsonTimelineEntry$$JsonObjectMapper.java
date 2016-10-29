package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineEntry$$JsonObjectMapper extends JsonMapper<JsonTimelineEntry> {
    public JsonTimelineEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineEntry _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineEntry jsonTimelineEntry = new JsonTimelineEntry();
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
            parseField(jsonTimelineEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineEntry;
    }

    public static void parseField(JsonTimelineEntry jsonTimelineEntry, String str, JsonParser jsonParser) throws IOException {
        if ("content".equals(str)) {
            jsonTimelineEntry.c = JsonTimelineEntry$JsonTimelineEntryContent$$JsonObjectMapper._parse(jsonParser);
        } else if ("entryId".equals(str)) {
            jsonTimelineEntry.a = jsonParser.a(null);
        } else if ("sortIndex".equals(str)) {
            jsonTimelineEntry.b = jsonParser.p();
        }
    }

    public void serialize(JsonTimelineEntry jsonTimelineEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineEntry jsonTimelineEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTimelineEntry.c != null) {
            jsonGenerator.a("content");
            JsonTimelineEntry$JsonTimelineEntryContent$$JsonObjectMapper._serialize(jsonTimelineEntry.c, jsonGenerator, true);
        }
        jsonGenerator.a("entryId", jsonTimelineEntry.a);
        jsonGenerator.a("sortIndex", jsonTimelineEntry.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
