package com.twitter.model.json.media.foundmedia;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.media.foundmedia.JsonGiphyImage.JsonGiphyImageVariant;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonGiphyImage$$JsonObjectMapper extends JsonMapper<JsonGiphyImage> {
    public JsonGiphyImage parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGiphyImage _parse(JsonParser jsonParser) throws IOException {
        JsonGiphyImage jsonGiphyImage = new JsonGiphyImage();
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
            parseField(jsonGiphyImage, e, jsonParser);
            jsonParser.c();
        }
        return jsonGiphyImage;
    }

    public static void parseField(JsonGiphyImage jsonGiphyImage, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonGiphyImage.a = jsonParser.a(null);
        } else if ("images".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, JsonGiphyImage$JsonGiphyImageVariant$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonGiphyImage.c = hashMap;
                return;
            }
            jsonGiphyImage.c = null;
        } else if ("url".equals(str)) {
            jsonGiphyImage.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonGiphyImage jsonGiphyImage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGiphyImage, jsonGenerator, z);
    }

    public static void _serialize(JsonGiphyImage jsonGiphyImage, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonGiphyImage.a);
        Map map = jsonGiphyImage.c;
        if (map != null) {
            jsonGenerator.a("images");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    JsonGiphyImage$JsonGiphyImageVariant$$JsonObjectMapper._serialize((JsonGiphyImageVariant) entry.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        jsonGenerator.a("url", jsonGiphyImage.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
