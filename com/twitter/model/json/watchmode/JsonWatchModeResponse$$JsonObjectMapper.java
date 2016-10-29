package com.twitter.model.json.watchmode;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonWatchModeResponse$$JsonObjectMapper extends JsonMapper<JsonWatchModeResponse> {
    public JsonWatchModeResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonWatchModeResponse _parse(JsonParser jsonParser) throws IOException {
        JsonWatchModeResponse jsonWatchModeResponse = new JsonWatchModeResponse();
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
            parseField(jsonWatchModeResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonWatchModeResponse;
    }

    public static void parseField(JsonWatchModeResponse jsonWatchModeResponse, String str, JsonParser jsonParser) throws IOException {
        if (!"sections".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonWatchModeInfo _parse = JsonWatchModeInfo$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonWatchModeResponse.a = arrayList;
            return;
        }
        jsonWatchModeResponse.a = null;
    }

    public void serialize(JsonWatchModeResponse jsonWatchModeResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonWatchModeResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonWatchModeResponse jsonWatchModeResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonWatchModeInfo> list = jsonWatchModeResponse.a;
        if (list != null) {
            jsonGenerator.a("sections");
            jsonGenerator.a();
            for (JsonWatchModeInfo jsonWatchModeInfo : list) {
                if (jsonWatchModeInfo != null) {
                    JsonWatchModeInfo$$JsonObjectMapper._serialize(jsonWatchModeInfo, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
