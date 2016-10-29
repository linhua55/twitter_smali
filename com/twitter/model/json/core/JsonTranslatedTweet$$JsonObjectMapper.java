package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.bg;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTranslatedTweet$$JsonObjectMapper extends JsonMapper<JsonTranslatedTweet> {
    public JsonTranslatedTweet parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTranslatedTweet _parse(JsonParser jsonParser) throws IOException {
        JsonTranslatedTweet jsonTranslatedTweet = new JsonTranslatedTweet();
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
            parseField(jsonTranslatedTweet, e, jsonParser);
            jsonParser.c();
        }
        return jsonTranslatedTweet;
    }

    public static void parseField(JsonTranslatedTweet jsonTranslatedTweet, String str, JsonParser jsonParser) throws IOException {
        if ("entities".equals(str)) {
            jsonTranslatedTweet.c = (bg) LoganSquare.typeConverterFor(bg.class).parse(jsonParser);
        } else if ("id".equals(str)) {
            jsonTranslatedTweet.a = jsonParser.p();
        } else if ("lang".equals(str)) {
            jsonTranslatedTweet.d = jsonParser.a(null);
        } else if ("text".equals(str)) {
            jsonTranslatedTweet.b = jsonParser.a(null);
        } else if ("translated_lang".equals(str)) {
            jsonTranslatedTweet.e = jsonParser.a(null);
        }
    }

    public void serialize(JsonTranslatedTweet jsonTranslatedTweet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTranslatedTweet, jsonGenerator, z);
    }

    public static void _serialize(JsonTranslatedTweet jsonTranslatedTweet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTranslatedTweet.c != null) {
            LoganSquare.typeConverterFor(bg.class).serialize(jsonTranslatedTweet.c, "entities", true, jsonGenerator);
        }
        jsonGenerator.a("id", jsonTranslatedTweet.a);
        jsonGenerator.a("lang", jsonTranslatedTweet.d);
        jsonGenerator.a("text", jsonTranslatedTweet.b);
        jsonGenerator.a("translated_lang", jsonTranslatedTweet.e);
        if (z) {
            jsonGenerator.d();
        }
    }
}
