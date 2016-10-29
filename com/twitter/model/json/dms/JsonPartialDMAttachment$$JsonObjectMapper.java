package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPartialDMAttachment$$JsonObjectMapper extends JsonMapper<JsonPartialDMAttachment> {
    protected static final e JSON_D_M_PARTIAL_ATTACHMENT_TYPE_CONVERTER;

    static {
        JSON_D_M_PARTIAL_ATTACHMENT_TYPE_CONVERTER = new e();
    }

    public JsonPartialDMAttachment parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPartialDMAttachment _parse(JsonParser jsonParser) throws IOException {
        JsonPartialDMAttachment jsonPartialDMAttachment = new JsonPartialDMAttachment();
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
            parseField(jsonPartialDMAttachment, e, jsonParser);
            jsonParser.c();
        }
        return jsonPartialDMAttachment;
    }

    public static void parseField(JsonPartialDMAttachment jsonPartialDMAttachment, String str, JsonParser jsonParser) throws IOException {
        if ("type".equals(str)) {
            jsonPartialDMAttachment.a = ((Integer) JSON_D_M_PARTIAL_ATTACHMENT_TYPE_CONVERTER.parse(jsonParser)).intValue();
        } else if ("url".equals(str)) {
            jsonPartialDMAttachment.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonPartialDMAttachment jsonPartialDMAttachment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPartialDMAttachment, jsonGenerator, z);
    }

    public static void _serialize(JsonPartialDMAttachment jsonPartialDMAttachment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        JSON_D_M_PARTIAL_ATTACHMENT_TYPE_CONVERTER.serialize(Integer.valueOf(jsonPartialDMAttachment.a), "type", true, jsonGenerator);
        jsonGenerator.a("url", jsonPartialDMAttachment.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
