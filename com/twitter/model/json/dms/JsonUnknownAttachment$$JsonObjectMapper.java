package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUnknownAttachment$$JsonObjectMapper extends JsonMapper<JsonUnknownAttachment> {
    public JsonUnknownAttachment parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUnknownAttachment _parse(JsonParser jsonParser) throws IOException {
        JsonUnknownAttachment jsonUnknownAttachment = new JsonUnknownAttachment();
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
            parseField(jsonUnknownAttachment, e, jsonParser);
            jsonParser.c();
        }
        return jsonUnknownAttachment;
    }

    public static void parseField(JsonUnknownAttachment jsonUnknownAttachment, String str, JsonParser jsonParser) throws IOException {
        JsonAttachment$$JsonObjectMapper.parseField(jsonUnknownAttachment, str, jsonParser);
    }

    public void serialize(JsonUnknownAttachment jsonUnknownAttachment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUnknownAttachment, jsonGenerator, z);
    }

    public static void _serialize(JsonUnknownAttachment jsonUnknownAttachment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        JsonAttachment$$JsonObjectMapper._serialize(jsonUnknownAttachment, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
