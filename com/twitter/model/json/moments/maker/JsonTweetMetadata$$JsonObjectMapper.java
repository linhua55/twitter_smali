package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTweetMetadata$$JsonObjectMapper extends JsonMapper<JsonTweetMetadata> {
    public JsonTweetMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonTweetMetadata jsonTweetMetadata = new JsonTweetMetadata();
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
            parseField(jsonTweetMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetMetadata;
    }

    public static void parseField(JsonTweetMetadata jsonTweetMetadata, String str, JsonParser jsonParser) throws IOException {
        if ("media_data".equals(str)) {
            jsonTweetMetadata.b = JsonMediaData$$JsonObjectMapper._parse(jsonParser);
        } else if ("tweet_id".equals(str)) {
            jsonTweetMetadata.a = jsonParser.p();
        }
    }

    public void serialize(JsonTweetMetadata jsonTweetMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetMetadata jsonTweetMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTweetMetadata.b != null) {
            jsonGenerator.a("media_data");
            JsonMediaData$$JsonObjectMapper._serialize(jsonTweetMetadata.b, jsonGenerator, true);
        }
        jsonGenerator.a("tweet_id", jsonTweetMetadata.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
