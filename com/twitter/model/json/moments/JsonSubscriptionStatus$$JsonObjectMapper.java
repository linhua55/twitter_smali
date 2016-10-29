package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSubscriptionStatus$$JsonObjectMapper extends JsonMapper<JsonSubscriptionStatus> {
    public JsonSubscriptionStatus parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSubscriptionStatus _parse(JsonParser jsonParser) throws IOException {
        JsonSubscriptionStatus jsonSubscriptionStatus = new JsonSubscriptionStatus();
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
            parseField(jsonSubscriptionStatus, e, jsonParser);
            jsonParser.c();
        }
        return jsonSubscriptionStatus;
    }

    public static void parseField(JsonSubscriptionStatus jsonSubscriptionStatus, String str, JsonParser jsonParser) throws IOException {
        if ("is_subscribed".equals(str)) {
            jsonSubscriptionStatus.a = jsonParser.r();
        } else if ("moment_id".equals(str)) {
            jsonSubscriptionStatus.b = jsonParser.p();
        }
    }

    public void serialize(JsonSubscriptionStatus jsonSubscriptionStatus, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSubscriptionStatus, jsonGenerator, z);
    }

    public static void _serialize(JsonSubscriptionStatus jsonSubscriptionStatus, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("is_subscribed", jsonSubscriptionStatus.a);
        jsonGenerator.a("moment_id", jsonSubscriptionStatus.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
