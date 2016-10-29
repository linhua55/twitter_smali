package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonInterestSelections$FreeFormInterest$$JsonObjectMapper extends JsonMapper<JsonInterestSelections$FreeFormInterest> {
    public JsonInterestSelections$FreeFormInterest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInterestSelections$FreeFormInterest _parse(JsonParser jsonParser) throws IOException {
        JsonInterestSelections$FreeFormInterest jsonInterestSelections$FreeFormInterest = new JsonInterestSelections$FreeFormInterest();
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
            parseField(jsonInterestSelections$FreeFormInterest, e, jsonParser);
            jsonParser.c();
        }
        return jsonInterestSelections$FreeFormInterest;
    }

    public static void parseField(JsonInterestSelections$FreeFormInterest jsonInterestSelections$FreeFormInterest, String str, JsonParser jsonParser) throws IOException {
        if ("interest".equals(str)) {
            jsonInterestSelections$FreeFormInterest.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonInterestSelections$FreeFormInterest jsonInterestSelections$FreeFormInterest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInterestSelections$FreeFormInterest, jsonGenerator, z);
    }

    public static void _serialize(JsonInterestSelections$FreeFormInterest jsonInterestSelections$FreeFormInterest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("interest", jsonInterestSelections$FreeFormInterest.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
