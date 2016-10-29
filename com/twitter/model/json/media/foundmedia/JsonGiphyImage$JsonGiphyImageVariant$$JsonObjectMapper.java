package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.media.foundmedia.JsonGiphyImage.JsonGiphyImageVariant;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonGiphyImage$JsonGiphyImageVariant$$JsonObjectMapper extends JsonMapper<JsonGiphyImageVariant> {
    public JsonGiphyImageVariant parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGiphyImageVariant _parse(JsonParser jsonParser) throws IOException {
        JsonGiphyImageVariant jsonGiphyImageVariant = new JsonGiphyImageVariant();
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
            parseField(jsonGiphyImageVariant, e, jsonParser);
            jsonParser.c();
        }
        return jsonGiphyImageVariant;
    }

    public static void parseField(JsonGiphyImageVariant jsonGiphyImageVariant, String str, JsonParser jsonParser) throws IOException {
        if ("height".equals(str)) {
            jsonGiphyImageVariant.c = jsonParser.o();
        } else if ("url".equals(str)) {
            jsonGiphyImageVariant.a = jsonParser.a(null);
        } else if ("width".equals(str)) {
            jsonGiphyImageVariant.b = jsonParser.o();
        }
    }

    public void serialize(JsonGiphyImageVariant jsonGiphyImageVariant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGiphyImageVariant, jsonGenerator, z);
    }

    public static void _serialize(JsonGiphyImageVariant jsonGiphyImageVariant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("height", jsonGiphyImageVariant.c);
        jsonGenerator.a("url", jsonGiphyImageVariant.a);
        jsonGenerator.a("width", jsonGiphyImageVariant.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
