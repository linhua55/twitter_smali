package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonPushDeviceErrorResponse.Error;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPushDeviceErrorResponse$Error$$JsonObjectMapper extends JsonMapper<Error> {
    public Error parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static Error _parse(JsonParser jsonParser) throws IOException {
        Error error = new Error();
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
            parseField(error, e, jsonParser);
            jsonParser.c();
        }
        return error;
    }

    public static void parseField(Error error, String str, JsonParser jsonParser) throws IOException {
        if ("code".equals(str)) {
            error.a = jsonParser.o();
        }
    }

    public void serialize(Error error, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(error, jsonGenerator, z);
    }

    public static void _serialize(Error error, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("code", error.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
