package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonInterestSelections$JsonInterest$$JsonObjectMapper extends JsonMapper<JsonInterestSelections$JsonInterest> {
    public JsonInterestSelections$JsonInterest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInterestSelections$JsonInterest _parse(JsonParser jsonParser) throws IOException {
        JsonInterestSelections$JsonInterest jsonInterestSelections$JsonInterest = new JsonInterestSelections$JsonInterest();
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
            parseField(jsonInterestSelections$JsonInterest, e, jsonParser);
            jsonParser.c();
        }
        return jsonInterestSelections$JsonInterest;
    }

    public static void parseField(JsonInterestSelections$JsonInterest jsonInterestSelections$JsonInterest, String str, JsonParser jsonParser) throws IOException {
        if ("freeFormInterest".equals(str)) {
            jsonInterestSelections$JsonInterest.b = JsonInterestSelections$FreeFormInterest$$JsonObjectMapper._parse(jsonParser);
        } else if ("tttInterest".equals(str)) {
            jsonInterestSelections$JsonInterest.a = JsonInterestSelections$TaxonomyBasedInterest$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonInterestSelections$JsonInterest jsonInterestSelections$JsonInterest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInterestSelections$JsonInterest, jsonGenerator, z);
    }

    public static void _serialize(JsonInterestSelections$JsonInterest jsonInterestSelections$JsonInterest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonInterestSelections$JsonInterest.b != null) {
            jsonGenerator.a("freeFormInterest");
            JsonInterestSelections$FreeFormInterest$$JsonObjectMapper._serialize(jsonInterestSelections$JsonInterest.b, jsonGenerator, true);
        }
        if (jsonInterestSelections$JsonInterest.a != null) {
            jsonGenerator.a("tttInterest");
            JsonInterestSelections$TaxonomyBasedInterest$$JsonObjectMapper._serialize(jsonInterestSelections$JsonInterest.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
