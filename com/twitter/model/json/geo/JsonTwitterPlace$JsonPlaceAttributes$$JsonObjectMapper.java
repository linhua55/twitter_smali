package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.geo.JsonTwitterPlace.JsonPlaceAttributes;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterPlace$JsonPlaceAttributes$$JsonObjectMapper extends JsonMapper<JsonPlaceAttributes> {
    public JsonPlaceAttributes parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPlaceAttributes _parse(JsonParser jsonParser) throws IOException {
        JsonPlaceAttributes jsonPlaceAttributes = new JsonPlaceAttributes();
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
            parseField(jsonPlaceAttributes, e, jsonParser);
            jsonParser.c();
        }
        return jsonPlaceAttributes;
    }

    public static void parseField(JsonPlaceAttributes jsonPlaceAttributes, String str, JsonParser jsonParser) throws IOException {
        if ("twitter".equals(str)) {
            jsonPlaceAttributes.b = jsonParser.a(null);
        } else if ("street_address".equals(str)) {
            jsonPlaceAttributes.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonPlaceAttributes jsonPlaceAttributes, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPlaceAttributes, jsonGenerator, z);
    }

    public static void _serialize(JsonPlaceAttributes jsonPlaceAttributes, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("twitter", jsonPlaceAttributes.b);
        jsonGenerator.a("street_address", jsonPlaceAttributes.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
