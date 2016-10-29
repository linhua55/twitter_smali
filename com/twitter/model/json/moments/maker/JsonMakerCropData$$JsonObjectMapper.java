package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMakerCropData$$JsonObjectMapper extends JsonMapper<JsonMakerCropData> {
    public JsonMakerCropData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMakerCropData _parse(JsonParser jsonParser) throws IOException {
        JsonMakerCropData jsonMakerCropData = new JsonMakerCropData();
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
            parseField(jsonMakerCropData, e, jsonParser);
            jsonParser.c();
        }
        return jsonMakerCropData;
    }

    public static void parseField(JsonMakerCropData jsonMakerCropData, String str, JsonParser jsonParser) throws IOException {
        if ("aspect_ratio".equals(str)) {
            jsonMakerCropData.e = jsonParser.a(null);
        } else if ("h".equals(str)) {
            jsonMakerCropData.d = jsonParser.o();
        } else if ("w".equals(str)) {
            jsonMakerCropData.c = jsonParser.o();
        } else if ("x".equals(str)) {
            jsonMakerCropData.a = jsonParser.o();
        } else if ("y".equals(str)) {
            jsonMakerCropData.b = jsonParser.o();
        }
    }

    public void serialize(JsonMakerCropData jsonMakerCropData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMakerCropData, jsonGenerator, z);
    }

    public static void _serialize(JsonMakerCropData jsonMakerCropData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("aspect_ratio", jsonMakerCropData.e);
        jsonGenerator.a("h", jsonMakerCropData.d);
        jsonGenerator.a("w", jsonMakerCropData.c);
        jsonGenerator.a("x", jsonMakerCropData.a);
        jsonGenerator.a("y", jsonMakerCropData.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
