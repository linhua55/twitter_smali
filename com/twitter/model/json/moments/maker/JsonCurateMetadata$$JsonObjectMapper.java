package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonCurateMetadata$$JsonObjectMapper extends JsonMapper<JsonCurateMetadata> {
    public JsonCurateMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCurateMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonCurateMetadata jsonCurateMetadata = new JsonCurateMetadata();
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
            parseField(jsonCurateMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonCurateMetadata;
    }

    public static void parseField(JsonCurateMetadata jsonCurateMetadata, String str, JsonParser jsonParser) throws IOException {
        if (!"updates".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                JsonTweetMetadata _parse = JsonTweetMetadata$$JsonObjectMapper._parse(jsonParser);
                if (_parse != null) {
                    arrayList.add(_parse);
                }
            }
            jsonCurateMetadata.a = arrayList;
            return;
        }
        jsonCurateMetadata.a = null;
    }

    public void serialize(JsonCurateMetadata jsonCurateMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCurateMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonCurateMetadata jsonCurateMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonTweetMetadata> list = jsonCurateMetadata.a;
        if (list != null) {
            jsonGenerator.a("updates");
            jsonGenerator.a();
            for (JsonTweetMetadata jsonTweetMetadata : list) {
                if (jsonTweetMetadata != null) {
                    JsonTweetMetadata$$JsonObjectMapper._serialize(jsonTweetMetadata, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
