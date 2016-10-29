package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMessageCreateInfo$$JsonObjectMapper extends JsonMapper<JsonMessageCreateInfo> {
    public JsonMessageCreateInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMessageCreateInfo _parse(JsonParser jsonParser) throws IOException {
        JsonMessageCreateInfo jsonMessageCreateInfo = new JsonMessageCreateInfo();
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
            parseField(jsonMessageCreateInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonMessageCreateInfo;
    }

    public static void parseField(JsonMessageCreateInfo jsonMessageCreateInfo, String str, JsonParser jsonParser) throws IOException {
        if ("message_create_event_id".equals(str)) {
            jsonMessageCreateInfo.b = jsonParser.p();
        } else if ("message_id".equals(str)) {
            jsonMessageCreateInfo.a = jsonParser.p();
        }
    }

    public void serialize(JsonMessageCreateInfo jsonMessageCreateInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMessageCreateInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonMessageCreateInfo jsonMessageCreateInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("message_create_event_id", jsonMessageCreateInfo.b);
        jsonGenerator.a("message_id", jsonMessageCreateInfo.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
