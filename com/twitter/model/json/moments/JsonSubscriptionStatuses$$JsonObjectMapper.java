package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonSubscriptionStatuses$$JsonObjectMapper extends JsonMapper<JsonSubscriptionStatuses> {
    public JsonSubscriptionStatuses parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSubscriptionStatuses _parse(JsonParser jsonParser) throws IOException {
        JsonSubscriptionStatuses jsonSubscriptionStatuses = new JsonSubscriptionStatuses();
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
            parseField(jsonSubscriptionStatuses, e, jsonParser);
            jsonParser.c();
        }
        return jsonSubscriptionStatuses;
    }

    public static void parseField(JsonSubscriptionStatuses jsonSubscriptionStatuses, String str, JsonParser jsonParser) throws IOException {
        if (!"moment_ids".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonSubscriptionStatus _parse = JsonSubscriptionStatus$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonSubscriptionStatuses.a = arrayList;
            return;
        }
        jsonSubscriptionStatuses.a = null;
    }

    public void serialize(JsonSubscriptionStatuses jsonSubscriptionStatuses, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSubscriptionStatuses, jsonGenerator, z);
    }

    public static void _serialize(JsonSubscriptionStatuses jsonSubscriptionStatuses, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonSubscriptionStatus> list = jsonSubscriptionStatuses.a;
        if (list != null) {
            jsonGenerator.a("moment_ids");
            jsonGenerator.a();
            for (JsonSubscriptionStatus jsonSubscriptionStatus : list) {
                if (jsonSubscriptionStatus != null) {
                    JsonSubscriptionStatus$$JsonObjectMapper._serialize(jsonSubscriptionStatus, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
