package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.login.OneFactorEligibleFactor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterError$$JsonObjectMapper extends JsonMapper<JsonTwitterError> {
    public JsonTwitterError parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterError _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterError jsonTwitterError = new JsonTwitterError();
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
            parseField(jsonTwitterError, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterError;
    }

    public static void parseField(JsonTwitterError jsonTwitterError, String str, JsonParser jsonParser) throws IOException {
        if ("attribute".equals(str)) {
            jsonTwitterError.e = jsonParser.a(null);
        } else if ("bounce_location".equals(str)) {
            jsonTwitterError.f = jsonParser.a(null);
        } else if ("code".equals(str)) {
            jsonTwitterError.a = jsonParser.o();
        } else if ("message".equals(str)) {
            jsonTwitterError.c = jsonParser.a(null);
        } else if ("1fa_eligible_factors".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    OneFactorEligibleFactor oneFactorEligibleFactor = (OneFactorEligibleFactor) LoganSquare.typeConverterFor(OneFactorEligibleFactor.class).parse(jsonParser);
                    if (oneFactorEligibleFactor != null) {
                        arrayList.add(oneFactorEligibleFactor);
                    }
                }
                jsonTwitterError.g = arrayList;
                return;
            }
            jsonTwitterError.g = null;
        } else if ("sub_error_code".equals(str)) {
            jsonTwitterError.b = jsonParser.o();
        } else if ("timestamp".equals(str)) {
            jsonTwitterError.d = jsonParser.p();
        }
    }

    public void serialize(JsonTwitterError jsonTwitterError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterError, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterError jsonTwitterError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("attribute", jsonTwitterError.e);
        jsonGenerator.a("bounce_location", jsonTwitterError.f);
        jsonGenerator.a("code", jsonTwitterError.a);
        jsonGenerator.a("message", jsonTwitterError.c);
        List<OneFactorEligibleFactor> list = jsonTwitterError.g;
        if (list != null) {
            jsonGenerator.a("1fa_eligible_factors");
            jsonGenerator.a();
            for (OneFactorEligibleFactor oneFactorEligibleFactor : list) {
                if (oneFactorEligibleFactor != null) {
                    LoganSquare.typeConverterFor(OneFactorEligibleFactor.class).serialize(oneFactorEligibleFactor, "lslocal1fa_eligible_factorsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("sub_error_code", jsonTwitterError.b);
        jsonGenerator.a("timestamp", jsonTwitterError.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
