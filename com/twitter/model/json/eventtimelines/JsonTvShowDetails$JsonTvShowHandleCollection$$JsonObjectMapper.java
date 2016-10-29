package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTvShowDetails$JsonTvShowHandleCollection$$JsonObjectMapper extends JsonMapper<JsonTvShowHandleCollection> {
    public JsonTvShowHandleCollection parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTvShowHandleCollection _parse(JsonParser jsonParser) throws IOException {
        JsonTvShowHandleCollection jsonTvShowHandleCollection = new JsonTvShowHandleCollection();
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
            parseField(jsonTvShowHandleCollection, e, jsonParser);
            jsonParser.c();
        }
        return jsonTvShowHandleCollection;
    }

    public static void parseField(JsonTvShowHandleCollection jsonTvShowHandleCollection, String str, JsonParser jsonParser) throws IOException {
        if (!"items".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonTvShowHandle _parse = JsonTvShow$JsonTvShowHandle$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonTvShowHandleCollection.a = arrayList;
            return;
        }
        jsonTvShowHandleCollection.a = null;
    }

    public void serialize(JsonTvShowHandleCollection jsonTvShowHandleCollection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTvShowHandleCollection, jsonGenerator, z);
    }

    public static void _serialize(JsonTvShowHandleCollection jsonTvShowHandleCollection, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonTvShowHandle> list = jsonTvShowHandleCollection.a;
        if (list != null) {
            jsonGenerator.a("items");
            jsonGenerator.a();
            for (JsonTvShowHandle jsonTvShowHandle : list) {
                if (jsonTvShowHandle != null) {
                    JsonTvShow$JsonTvShowHandle$$JsonObjectMapper._serialize(jsonTvShowHandle, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
