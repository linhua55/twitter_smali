package com.twitter.model.json.irs;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonInstallReferrer$$JsonObjectMapper extends JsonMapper<JsonInstallReferrer> {
    public JsonInstallReferrer parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonInstallReferrer _parse(JsonParser jsonParser) throws IOException {
        JsonInstallReferrer jsonInstallReferrer = new JsonInstallReferrer();
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
            parseField(jsonInstallReferrer, e, jsonParser);
            jsonParser.c();
        }
        return jsonInstallReferrer;
    }

    public static void parseField(JsonInstallReferrer jsonInstallReferrer, String str, JsonParser jsonParser) throws IOException {
        if ("campaign".equals(str)) {
            jsonInstallReferrer.a = jsonParser.a(null);
        } else if ("content".equals(str)) {
            jsonInstallReferrer.b = jsonParser.a(null);
        } else if ("group".equals(str)) {
            jsonInstallReferrer.d = jsonParser.a(null);
        } else if ("src".equals(str)) {
            jsonInstallReferrer.c = jsonParser.a(null);
        } else if ("term".equals(str)) {
            jsonInstallReferrer.e = jsonParser.a(null);
        }
    }

    public void serialize(JsonInstallReferrer jsonInstallReferrer, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonInstallReferrer, jsonGenerator, z);
    }

    public static void _serialize(JsonInstallReferrer jsonInstallReferrer, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("campaign", jsonInstallReferrer.a);
        jsonGenerator.a("content", jsonInstallReferrer.b);
        jsonGenerator.a("group", jsonInstallReferrer.d);
        jsonGenerator.a("src", jsonInstallReferrer.c);
        jsonGenerator.a("term", jsonInstallReferrer.e);
        if (z) {
            jsonGenerator.d();
        }
    }
}
