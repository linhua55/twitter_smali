package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTvShowDetails$JsonTvShowHashtagCollection$$JsonObjectMapper extends JsonMapper<JsonTvShowHashtagCollection> {
    public JsonTvShowHashtagCollection parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTvShowHashtagCollection _parse(JsonParser jsonParser) throws IOException {
        JsonTvShowHashtagCollection jsonTvShowHashtagCollection = new JsonTvShowHashtagCollection();
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
            parseField(jsonTvShowHashtagCollection, e, jsonParser);
            jsonParser.c();
        }
        return jsonTvShowHashtagCollection;
    }

    public static void parseField(JsonTvShowHashtagCollection jsonTvShowHashtagCollection, String str, JsonParser jsonParser) throws IOException {
        if (!"items".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonTvShowHashtag _parse = JsonTvShow$JsonTvShowHashtag$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonTvShowHashtagCollection.a = arrayList;
            return;
        }
        jsonTvShowHashtagCollection.a = null;
    }

    public void serialize(JsonTvShowHashtagCollection jsonTvShowHashtagCollection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTvShowHashtagCollection, jsonGenerator, z);
    }

    public static void _serialize(JsonTvShowHashtagCollection jsonTvShowHashtagCollection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonTvShowHashtag> list = jsonTvShowHashtagCollection.a;
        if (list != null) {
            jsonGenerator.a("items");
            jsonGenerator.a();
            for (JsonTvShowHashtag jsonTvShowHashtag : list) {
                if (jsonTvShowHashtag != null) {
                    JsonTvShow$JsonTvShowHashtag$$JsonObjectMapper._serialize(jsonTvShowHashtag, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
