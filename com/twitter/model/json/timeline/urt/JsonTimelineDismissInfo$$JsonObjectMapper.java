package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineDismissInfo$$JsonObjectMapper extends JsonMapper<JsonTimelineDismissInfo> {
    public JsonTimelineDismissInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineDismissInfo _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineDismissInfo jsonTimelineDismissInfo = new JsonTimelineDismissInfo();
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
            parseField(jsonTimelineDismissInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineDismissInfo;
    }

    public static void parseField(JsonTimelineDismissInfo jsonTimelineDismissInfo, String str, JsonParser jsonParser) throws IOException {
        if ("feedbackActionKey".equals(str)) {
            jsonTimelineDismissInfo.a = jsonParser.a(null);
        } else if ("feedbackMetadata".equals(str)) {
            jsonTimelineDismissInfo.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonTimelineDismissInfo jsonTimelineDismissInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineDismissInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineDismissInfo jsonTimelineDismissInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("feedbackActionKey", jsonTimelineDismissInfo.a);
        jsonGenerator.a("feedbackMetadata", jsonTimelineDismissInfo.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
