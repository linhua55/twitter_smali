package com.twitter.model.json.alerts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonAlert$$JsonObjectMapper extends JsonMapper<JsonAlert> {
    public JsonAlert parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAlert _parse(JsonParser jsonParser) throws IOException {
        JsonAlert jsonAlert = new JsonAlert();
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
            parseField(jsonAlert, e, jsonParser);
            jsonParser.c();
        }
        return jsonAlert;
    }

    public static void parseField(JsonAlert jsonAlert, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonAlert.a = jsonParser.p();
        } else if ("muted".equals(str)) {
            jsonAlert.f = jsonParser.r();
        } else if ("region".equals(str)) {
            jsonAlert.e = jsonParser.a(null);
        } else if ("alert_senders".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Object valueOf = jsonParser.d() == JsonToken.m ? null : Long.valueOf(jsonParser.p());
                    if (valueOf != null) {
                        arrayList.add(valueOf);
                    }
                }
                jsonAlert.d = arrayList;
                return;
            }
            jsonAlert.d = null;
        } else if ("title".equals(str)) {
            jsonAlert.b = jsonParser.a(null);
        } else if ("type".equals(str)) {
            jsonAlert.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonAlert jsonAlert, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAlert, jsonGenerator, z);
    }

    public static void _serialize(JsonAlert jsonAlert, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonAlert.a);
        jsonGenerator.a("muted", jsonAlert.f);
        jsonGenerator.a("region", jsonAlert.e);
        List<Long> list = jsonAlert.d;
        if (list != null) {
            jsonGenerator.a("alert_senders");
            jsonGenerator.a();
            for (Long longValue : list) {
                jsonGenerator.a(longValue.longValue());
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("title", jsonAlert.b);
        jsonGenerator.a("type", jsonAlert.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
