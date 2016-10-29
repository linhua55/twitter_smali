package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonMediaSize$$JsonObjectMapper;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMomentMedia$$JsonObjectMapper extends JsonMapper<JsonMomentMedia> {
    public JsonMomentMedia parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMomentMedia _parse(JsonParser jsonParser) throws IOException {
        JsonMomentMedia jsonMomentMedia = new JsonMomentMedia();
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
            parseField(jsonMomentMedia, e, jsonParser);
            jsonParser.c();
        }
        return jsonMomentMedia;
    }

    public static void parseField(JsonMomentMedia jsonMomentMedia, String str, JsonParser jsonParser) throws IOException {
        if ("media_id".equals(str)) {
            jsonMomentMedia.a = jsonParser.p();
        } else if ("size".equals(str)) {
            jsonMomentMedia.b = JsonMediaSize$$JsonObjectMapper._parse(jsonParser);
        } else if ("url".equals(str)) {
            jsonMomentMedia.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonMomentMedia jsonMomentMedia, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMomentMedia, jsonGenerator, z);
    }

    public static void _serialize(JsonMomentMedia jsonMomentMedia, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("media_id", jsonMomentMedia.a);
        if (jsonMomentMedia.b != null) {
            jsonGenerator.a("size");
            JsonMediaSize$$JsonObjectMapper._serialize(jsonMomentMedia.b, jsonGenerator, true);
        }
        jsonGenerator.a("url", jsonMomentMedia.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
