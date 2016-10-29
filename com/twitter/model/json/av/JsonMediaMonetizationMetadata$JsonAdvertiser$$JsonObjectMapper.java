package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.av.JsonMediaMonetizationMetadata.JsonAdvertiser;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaMonetizationMetadata$JsonAdvertiser$$JsonObjectMapper extends JsonMapper<JsonAdvertiser> {
    public JsonAdvertiser parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAdvertiser _parse(JsonParser jsonParser) throws IOException {
        JsonAdvertiser jsonAdvertiser = new JsonAdvertiser();
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
            parseField(jsonAdvertiser, e, jsonParser);
            jsonParser.c();
        }
        return jsonAdvertiser;
    }

    public static void parseField(JsonAdvertiser jsonAdvertiser, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonAdvertiser.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonAdvertiser jsonAdvertiser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAdvertiser, jsonGenerator, z);
    }

    public static void _serialize(JsonAdvertiser jsonAdvertiser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonAdvertiser.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
