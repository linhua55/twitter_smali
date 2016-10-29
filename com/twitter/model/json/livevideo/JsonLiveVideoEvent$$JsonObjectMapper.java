package com.twitter.model.json.livevideo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.MediaEntity;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonLiveVideoEvent$$JsonObjectMapper extends JsonMapper<JsonLiveVideoEvent> {
    public JsonLiveVideoEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonLiveVideoEvent _parse(JsonParser jsonParser) throws IOException {
        JsonLiveVideoEvent jsonLiveVideoEvent = new JsonLiveVideoEvent();
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
            parseField(jsonLiveVideoEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonLiveVideoEvent;
    }

    public static void parseField(JsonLiveVideoEvent jsonLiveVideoEvent, String str, JsonParser jsonParser) throws IOException {
        if ("end_time".equals(str)) {
            jsonLiveVideoEvent.c = jsonParser.p();
        } else if ("hashtag".equals(str)) {
            jsonLiveVideoEvent.e = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonLiveVideoEvent.a = jsonParser.p();
        } else if ("media".equals(str)) {
            jsonLiveVideoEvent.f = (MediaEntity) LoganSquare.typeConverterFor(MediaEntity.class).parse(jsonParser);
        } else if ("start_time".equals(str)) {
            jsonLiveVideoEvent.b = jsonParser.p();
        } else if ("title".equals(str)) {
            jsonLiveVideoEvent.d = jsonParser.a(null);
        }
    }

    public void serialize(JsonLiveVideoEvent jsonLiveVideoEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonLiveVideoEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonLiveVideoEvent jsonLiveVideoEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("end_time", jsonLiveVideoEvent.c);
        jsonGenerator.a("hashtag", jsonLiveVideoEvent.e);
        jsonGenerator.a("id", jsonLiveVideoEvent.a);
        if (jsonLiveVideoEvent.f != null) {
            LoganSquare.typeConverterFor(MediaEntity.class).serialize(jsonLiveVideoEvent.f, "media", true, jsonGenerator);
        }
        jsonGenerator.a("start_time", jsonLiveVideoEvent.b);
        jsonGenerator.a("title", jsonLiveVideoEvent.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
