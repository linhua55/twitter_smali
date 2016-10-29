package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonScribeInfo$$JsonObjectMapper extends JsonMapper<JsonScribeInfo> {
    public JsonScribeInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonScribeInfo _parse(JsonParser jsonParser) throws IOException {
        JsonScribeInfo jsonScribeInfo = new JsonScribeInfo();
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
            parseField(jsonScribeInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonScribeInfo;
    }

    public static void parseField(JsonScribeInfo jsonScribeInfo, String str, JsonParser jsonParser) throws IOException {
        if ("controller_data".equals(str)) {
            jsonScribeInfo.b = jsonParser.a(null);
        } else if ("scribe_component".equals(str)) {
            jsonScribeInfo.d = jsonParser.a(null);
        } else if ("source_data".equals(str)) {
            jsonScribeInfo.c = jsonParser.a(null);
        } else if ("suggestion_type".equals(str)) {
            jsonScribeInfo.a = jsonParser.a(null);
        } else if ("type_id".equals(str)) {
            jsonScribeInfo.e = jsonParser.a(null);
        }
    }

    public void serialize(JsonScribeInfo jsonScribeInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonScribeInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonScribeInfo jsonScribeInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("controller_data", jsonScribeInfo.b);
        jsonGenerator.a("scribe_component", jsonScribeInfo.d);
        jsonGenerator.a("source_data", jsonScribeInfo.c);
        jsonGenerator.a("suggestion_type", jsonScribeInfo.a);
        jsonGenerator.a("type_id", jsonScribeInfo.e);
        if (z) {
            jsonGenerator.d();
        }
    }
}
