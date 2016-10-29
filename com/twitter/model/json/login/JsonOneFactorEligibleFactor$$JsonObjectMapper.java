package com.twitter.model.json.login;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonOneFactorEligibleFactor$$JsonObjectMapper extends JsonMapper<JsonOneFactorEligibleFactor> {
    protected static final a JSON_STRING_TO_ONE_FACTOR_TYPE_CONVERTER;

    static {
        JSON_STRING_TO_ONE_FACTOR_TYPE_CONVERTER = new a();
    }

    public JsonOneFactorEligibleFactor parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonOneFactorEligibleFactor _parse(JsonParser jsonParser) throws IOException {
        JsonOneFactorEligibleFactor jsonOneFactorEligibleFactor = new JsonOneFactorEligibleFactor();
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
            parseField(jsonOneFactorEligibleFactor, e, jsonParser);
            jsonParser.c();
        }
        return jsonOneFactorEligibleFactor;
    }

    public static void parseField(JsonOneFactorEligibleFactor jsonOneFactorEligibleFactor, String str, JsonParser jsonParser) throws IOException {
        if ("factor".equals(str)) {
            jsonOneFactorEligibleFactor.a = (FactorType) JSON_STRING_TO_ONE_FACTOR_TYPE_CONVERTER.parse(jsonParser);
        } else if ("obfuscated_destination".equals(str)) {
            jsonOneFactorEligibleFactor.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonOneFactorEligibleFactor jsonOneFactorEligibleFactor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonOneFactorEligibleFactor, jsonGenerator, z);
    }

    public static void _serialize(JsonOneFactorEligibleFactor jsonOneFactorEligibleFactor, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonOneFactorEligibleFactor.a != null) {
            JSON_STRING_TO_ONE_FACTOR_TYPE_CONVERTER.serialize(jsonOneFactorEligibleFactor.a, "factor", true, jsonGenerator);
        }
        jsonGenerator.a("obfuscated_destination", jsonOneFactorEligibleFactor.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
