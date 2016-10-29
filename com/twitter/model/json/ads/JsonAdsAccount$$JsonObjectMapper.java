package com.twitter.model.json.ads;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonAdsAccount$$JsonObjectMapper extends JsonMapper<JsonAdsAccount> {
    public JsonAdsAccount parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAdsAccount _parse(JsonParser jsonParser) throws IOException {
        JsonAdsAccount jsonAdsAccount = new JsonAdsAccount();
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
            parseField(jsonAdsAccount, e, jsonParser);
            jsonParser.c();
        }
        return jsonAdsAccount;
    }

    public static void parseField(JsonAdsAccount jsonAdsAccount, String str, JsonParser jsonParser) throws IOException {
        if ("accountId".equals(str)) {
            jsonAdsAccount.a = jsonParser.p();
        } else if ("accountIdHash".equals(str)) {
            jsonAdsAccount.b = jsonParser.a(null);
        } else if ("hasAnalyticsAccess".equals(str)) {
            jsonAdsAccount.f = jsonParser.r();
        } else if ("hasPromotedReadAccess".equals(str)) {
            jsonAdsAccount.e = jsonParser.r();
        } else if ("hasPromotedWriteAccess".equals(str)) {
            jsonAdsAccount.d = jsonParser.r();
        } else if ("serviceLevel".equals(str)) {
            jsonAdsAccount.c = jsonParser.o();
        }
    }

    public void serialize(JsonAdsAccount jsonAdsAccount, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAdsAccount, jsonGenerator, z);
    }

    public static void _serialize(JsonAdsAccount jsonAdsAccount, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("accountId", jsonAdsAccount.a);
        jsonGenerator.a("accountIdHash", jsonAdsAccount.b);
        jsonGenerator.a("hasAnalyticsAccess", jsonAdsAccount.f);
        jsonGenerator.a("hasPromotedReadAccess", jsonAdsAccount.e);
        jsonGenerator.a("hasPromotedWriteAccess", jsonAdsAccount.d);
        jsonGenerator.a("serviceLevel", jsonAdsAccount.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
