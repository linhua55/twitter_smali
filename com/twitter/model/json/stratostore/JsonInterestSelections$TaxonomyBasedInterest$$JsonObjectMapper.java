package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonInterestSelections$TaxonomyBasedInterest$$JsonObjectMapper extends JsonMapper<JsonInterestSelections$TaxonomyBasedInterest> {
    public JsonInterestSelections$TaxonomyBasedInterest parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInterestSelections$TaxonomyBasedInterest _parse(JsonParser jsonParser) throws IOException {
        JsonInterestSelections$TaxonomyBasedInterest jsonInterestSelections$TaxonomyBasedInterest = new JsonInterestSelections$TaxonomyBasedInterest();
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
            parseField(jsonInterestSelections$TaxonomyBasedInterest, e, jsonParser);
            jsonParser.c();
        }
        return jsonInterestSelections$TaxonomyBasedInterest;
    }

    public static void parseField(JsonInterestSelections$TaxonomyBasedInterest jsonInterestSelections$TaxonomyBasedInterest, String str, JsonParser jsonParser) throws IOException {
        if ("interestId".equals(str)) {
            jsonInterestSelections$TaxonomyBasedInterest.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonInterestSelections$TaxonomyBasedInterest jsonInterestSelections$TaxonomyBasedInterest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInterestSelections$TaxonomyBasedInterest, jsonGenerator, z);
    }

    public static void _serialize(JsonInterestSelections$TaxonomyBasedInterest jsonInterestSelections$TaxonomyBasedInterest, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("interestId", jsonInterestSelections$TaxonomyBasedInterest.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
