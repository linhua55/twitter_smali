package com.twitter.model.json.nativecards;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPollCompose$$JsonObjectMapper extends JsonMapper<JsonPollCompose> {
    public JsonPollCompose parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPollCompose _parse(JsonParser jsonParser) throws IOException {
        JsonPollCompose jsonPollCompose = new JsonPollCompose();
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
            parseField(jsonPollCompose, e, jsonParser);
            jsonParser.c();
        }
        return jsonPollCompose;
    }

    public static void parseField(JsonPollCompose jsonPollCompose, String str, JsonParser jsonParser) throws IOException {
        if ("card_uri".equals(str)) {
            jsonPollCompose.a = jsonParser.a(null);
        } else if ("error_type".equals(str)) {
            jsonPollCompose.c = jsonParser.a(null);
        } else if ("message".equals(str)) {
            jsonPollCompose.d = jsonParser.a(null);
        } else if ("status".equals(str)) {
            jsonPollCompose.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonPollCompose jsonPollCompose, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPollCompose, jsonGenerator, z);
    }

    public static void _serialize(JsonPollCompose jsonPollCompose, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("card_uri", jsonPollCompose.a);
        jsonGenerator.a("error_type", jsonPollCompose.c);
        jsonGenerator.a("message", jsonPollCompose.d);
        jsonGenerator.a("status", jsonPollCompose.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
