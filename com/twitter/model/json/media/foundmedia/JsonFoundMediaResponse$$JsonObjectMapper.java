package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.media.foundmedia.a;
import com.twitter.model.media.foundmedia.b;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonFoundMediaResponse$$JsonObjectMapper extends JsonMapper<JsonFoundMediaResponse> {
    public JsonFoundMediaResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonFoundMediaResponse _parse(JsonParser jsonParser) throws IOException {
        JsonFoundMediaResponse jsonFoundMediaResponse = new JsonFoundMediaResponse();
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
            parseField(jsonFoundMediaResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonFoundMediaResponse;
    }

    public static void parseField(JsonFoundMediaResponse jsonFoundMediaResponse, String str, JsonParser jsonParser) throws IOException {
        if ("cursor".equals(str)) {
            jsonFoundMediaResponse.b = (a) LoganSquare.typeConverterFor(a.class).parse(jsonParser);
        } else if ("data".equals(str)) {
            jsonFoundMediaResponse.a = (b) LoganSquare.typeConverterFor(b.class).parse(jsonParser);
        }
    }

    public void serialize(JsonFoundMediaResponse jsonFoundMediaResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonFoundMediaResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonFoundMediaResponse jsonFoundMediaResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonFoundMediaResponse.b != null) {
            LoganSquare.typeConverterFor(a.class).serialize(jsonFoundMediaResponse.b, "cursor", true, jsonGenerator);
        }
        if (jsonFoundMediaResponse.a != null) {
            LoganSquare.typeConverterFor(b.class).serialize(jsonFoundMediaResponse.a, "data", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
