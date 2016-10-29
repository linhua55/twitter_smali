package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCoordinate$$JsonObjectMapper extends JsonMapper<JsonCoordinate> {
    public JsonCoordinate parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCoordinate _parse(JsonParser jsonParser) throws IOException {
        JsonCoordinate jsonCoordinate = new JsonCoordinate();
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
            parseField(jsonCoordinate, e, jsonParser);
            jsonParser.c();
        }
        return jsonCoordinate;
    }

    public static void parseField(JsonCoordinate jsonCoordinate, String str, JsonParser jsonParser) throws IOException {
        if ("latitude".equals(str)) {
            jsonCoordinate.a = jsonParser.q();
        } else if ("longitude".equals(str)) {
            jsonCoordinate.b = jsonParser.q();
        }
    }

    public void serialize(JsonCoordinate jsonCoordinate, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCoordinate, jsonGenerator, z);
    }

    public static void _serialize(JsonCoordinate jsonCoordinate, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("latitude", jsonCoordinate.a);
        jsonGenerator.a("longitude", jsonCoordinate.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
