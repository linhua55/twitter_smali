package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.media.foundmedia.p;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonGiphyCategory$$JsonObjectMapper extends JsonMapper<JsonGiphyCategory> {
    public JsonGiphyCategory parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGiphyCategory _parse(JsonParser jsonParser) throws IOException {
        JsonGiphyCategory jsonGiphyCategory = new JsonGiphyCategory();
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
            parseField(jsonGiphyCategory, e, jsonParser);
            jsonParser.c();
        }
        return jsonGiphyCategory;
    }

    public static void parseField(JsonGiphyCategory jsonGiphyCategory, String str, JsonParser jsonParser) throws IOException {
        if ("name_encoded".equals(str)) {
            jsonGiphyCategory.b = jsonParser.a(null);
        } else if ("gif".equals(str)) {
            jsonGiphyCategory.c = (p) LoganSquare.typeConverterFor(p.class).parse(jsonParser);
        } else if ("name".equals(str)) {
            jsonGiphyCategory.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonGiphyCategory jsonGiphyCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGiphyCategory, jsonGenerator, z);
    }

    public static void _serialize(JsonGiphyCategory jsonGiphyCategory, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("name_encoded", jsonGiphyCategory.b);
        if (jsonGiphyCategory.c != null) {
            LoganSquare.typeConverterFor(p.class).serialize(jsonGiphyCategory.c, "gif", true, jsonGenerator);
        }
        jsonGenerator.a("name", jsonGiphyCategory.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
