package com.twitter.model.json.moments.maker;

import clc;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCreateMomentResponse$$JsonObjectMapper extends JsonMapper<JsonCreateMomentResponse> {
    public JsonCreateMomentResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCreateMomentResponse _parse(JsonParser jsonParser) throws IOException {
        JsonCreateMomentResponse jsonCreateMomentResponse = new JsonCreateMomentResponse();
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
            parseField(jsonCreateMomentResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonCreateMomentResponse;
    }

    public static void parseField(JsonCreateMomentResponse jsonCreateMomentResponse, String str, JsonParser jsonParser) throws IOException {
        if ("created_moment".equals(str)) {
            jsonCreateMomentResponse.a = (clc) LoganSquare.typeConverterFor(clc.class).parse(jsonParser);
        }
    }

    public void serialize(JsonCreateMomentResponse jsonCreateMomentResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCreateMomentResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonCreateMomentResponse jsonCreateMomentResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonCreateMomentResponse.a != null) {
            LoganSquare.typeConverterFor(clc.class).serialize(jsonCreateMomentResponse.a, "created_moment", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
