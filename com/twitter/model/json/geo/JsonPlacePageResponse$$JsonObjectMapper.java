package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.geo.n;
import com.twitter.model.geo.o;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPlacePageResponse$$JsonObjectMapper extends JsonMapper<JsonPlacePageResponse> {
    public JsonPlacePageResponse parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPlacePageResponse _parse(JsonParser jsonParser) throws IOException {
        JsonPlacePageResponse jsonPlacePageResponse = new JsonPlacePageResponse();
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
            parseField(jsonPlacePageResponse, e, jsonParser);
            jsonParser.c();
        }
        return jsonPlacePageResponse;
    }

    public static void parseField(JsonPlacePageResponse jsonPlacePageResponse, String str, JsonParser jsonParser) throws IOException {
        if ("header".equals(str)) {
            jsonPlacePageResponse.a = (n) LoganSquare.typeConverterFor(n.class).parse(jsonParser);
        } else if ("media".equals(str)) {
            jsonPlacePageResponse.b = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
        } else if ("tweets".equals(str)) {
            jsonPlacePageResponse.c = (o) LoganSquare.typeConverterFor(o.class).parse(jsonParser);
        }
    }

    public void serialize(JsonPlacePageResponse jsonPlacePageResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPlacePageResponse, jsonGenerator, z);
    }

    public static void _serialize(JsonPlacePageResponse jsonPlacePageResponse, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonPlacePageResponse.a != null) {
            LoganSquare.typeConverterFor(n.class).serialize(jsonPlacePageResponse.a, "header", true, jsonGenerator);
        }
        if (jsonPlacePageResponse.b != null) {
            LoganSquare.typeConverterFor(o.class).serialize(jsonPlacePageResponse.b, "media", true, jsonGenerator);
        }
        if (jsonPlacePageResponse.c != null) {
            LoganSquare.typeConverterFor(o.class).serialize(jsonPlacePageResponse.c, "tweets", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
