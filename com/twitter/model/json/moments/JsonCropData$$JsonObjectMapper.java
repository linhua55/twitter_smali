package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCropData$$JsonObjectMapper extends JsonMapper<JsonCropData> {
    public JsonCropData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCropData _parse(JsonParser jsonParser) throws IOException {
        JsonCropData jsonCropData = new JsonCropData();
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
            parseField(jsonCropData, e, jsonParser);
            jsonParser.c();
        }
        return jsonCropData;
    }

    public static void parseField(JsonCropData jsonCropData, String str, JsonParser jsonParser) throws IOException {
        if ("h".equals(str)) {
            jsonCropData.d = jsonParser.o();
        } else if ("w".equals(str)) {
            jsonCropData.c = jsonParser.o();
        } else if ("x".equals(str)) {
            jsonCropData.a = jsonParser.o();
        } else if ("y".equals(str)) {
            jsonCropData.b = jsonParser.o();
        }
    }

    public void serialize(JsonCropData jsonCropData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCropData, jsonGenerator, z);
    }

    public static void _serialize(JsonCropData jsonCropData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("h", jsonCropData.d);
        jsonGenerator.a("w", jsonCropData.c);
        jsonGenerator.a("x", jsonCropData.a);
        jsonGenerator.a("y", jsonCropData.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
