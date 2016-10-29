package com.twitter.model.json.timeline.urt;

import cnw;
import cny;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineItem$$JsonObjectMapper extends JsonMapper<JsonTimelineItem> {
    public JsonTimelineItem parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineItem _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineItem jsonTimelineItem = new JsonTimelineItem();
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
            parseField(jsonTimelineItem, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineItem;
    }

    public static void parseField(JsonTimelineItem jsonTimelineItem, String str, JsonParser jsonParser) throws IOException {
        if ("clientEventInfo".equals(str)) {
            jsonTimelineItem.c = (cnw) LoganSquare.typeConverterFor(cnw.class).parse(jsonParser);
        } else if ("dismissInfo".equals(str)) {
            jsonTimelineItem.b = (cny) LoganSquare.typeConverterFor(cny.class).parse(jsonParser);
        } else if ("content".equals(str)) {
            jsonTimelineItem.a = JsonTimelineItem$JsonItemContent$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonTimelineItem jsonTimelineItem, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineItem, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineItem jsonTimelineItem, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTimelineItem.c != null) {
            LoganSquare.typeConverterFor(cnw.class).serialize(jsonTimelineItem.c, "clientEventInfo", true, jsonGenerator);
        }
        if (jsonTimelineItem.b != null) {
            LoganSquare.typeConverterFor(cny.class).serialize(jsonTimelineItem.b, "dismissInfo", true, jsonGenerator);
        }
        if (jsonTimelineItem.a != null) {
            jsonGenerator.a("content");
            JsonTimelineItem$JsonItemContent$$JsonObjectMapper._serialize(jsonTimelineItem.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
