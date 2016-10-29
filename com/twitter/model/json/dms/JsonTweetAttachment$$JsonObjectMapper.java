package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.cm;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTweetAttachment$$JsonObjectMapper extends JsonMapper<JsonTweetAttachment> {
    public JsonTweetAttachment parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetAttachment _parse(JsonParser jsonParser) throws IOException {
        JsonTweetAttachment jsonTweetAttachment = new JsonTweetAttachment();
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
            parseField(jsonTweetAttachment, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetAttachment;
    }

    public static void parseField(JsonTweetAttachment jsonTweetAttachment, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonTweetAttachment.e = jsonParser.p();
        } else if ("status".equals(str)) {
            jsonTweetAttachment.f = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
        } else {
            JsonAttachment$$JsonObjectMapper.parseField(jsonTweetAttachment, str, jsonParser);
        }
    }

    public void serialize(JsonTweetAttachment jsonTweetAttachment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetAttachment, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetAttachment jsonTweetAttachment, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonTweetAttachment.e);
        if (jsonTweetAttachment.f != null) {
            LoganSquare.typeConverterFor(cm.class).serialize(jsonTweetAttachment.f, "status", true, jsonGenerator);
        }
        JsonAttachment$$JsonObjectMapper._serialize(jsonTweetAttachment, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
