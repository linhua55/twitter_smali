package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUpdateMomentRequest$$JsonObjectMapper extends JsonMapper<JsonUpdateMomentRequest> {
    public JsonUpdateMomentRequest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUpdateMomentRequest _parse(JsonParser jsonParser) throws IOException {
        JsonUpdateMomentRequest jsonUpdateMomentRequest = new JsonUpdateMomentRequest();
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
            parseField(jsonUpdateMomentRequest, e, jsonParser);
            jsonParser.c();
        }
        return jsonUpdateMomentRequest;
    }

    public static void parseField(JsonUpdateMomentRequest jsonUpdateMomentRequest, String str, JsonParser jsonParser) throws IOException {
        if ("cover".equals(str)) {
            jsonUpdateMomentRequest.d = JsonCoverData$$JsonObjectMapper._parse(jsonParser);
        } else if ("description".equals(str)) {
            jsonUpdateMomentRequest.b = jsonParser.a(null);
        } else if ("nsfw".equals(str)) {
            jsonUpdateMomentRequest.c = jsonParser.r();
        } else if ("title".equals(str)) {
            jsonUpdateMomentRequest.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonUpdateMomentRequest jsonUpdateMomentRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUpdateMomentRequest, jsonGenerator, z);
    }

    public static void _serialize(JsonUpdateMomentRequest jsonUpdateMomentRequest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonUpdateMomentRequest.d != null) {
            jsonGenerator.a("cover");
            JsonCoverData$$JsonObjectMapper._serialize(jsonUpdateMomentRequest.d, jsonGenerator, true);
        }
        jsonGenerator.a("description", jsonUpdateMomentRequest.b);
        jsonGenerator.a("nsfw", jsonUpdateMomentRequest.c);
        jsonGenerator.a("title", jsonUpdateMomentRequest.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
