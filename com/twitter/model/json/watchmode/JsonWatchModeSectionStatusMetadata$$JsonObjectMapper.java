package com.twitter.model.json.watchmode;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonWatchModeSectionStatusMetadata$$JsonObjectMapper extends JsonMapper<JsonWatchModeSectionStatusMetadata> {
    public JsonWatchModeSectionStatusMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonWatchModeSectionStatusMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonWatchModeSectionStatusMetadata jsonWatchModeSectionStatusMetadata = new JsonWatchModeSectionStatusMetadata();
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
            parseField(jsonWatchModeSectionStatusMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonWatchModeSectionStatusMetadata;
    }

    public static void parseField(JsonWatchModeSectionStatusMetadata jsonWatchModeSectionStatusMetadata, String str, JsonParser jsonParser) throws IOException {
        if ("cooccurrences".equals(str)) {
            jsonWatchModeSectionStatusMetadata.c = jsonParser.o();
        } else if ("score".equals(str)) {
            jsonWatchModeSectionStatusMetadata.b = (float) jsonParser.q();
        } else if ("tweet_id".equals(str)) {
            jsonWatchModeSectionStatusMetadata.a = jsonParser.p();
        }
    }

    public void serialize(JsonWatchModeSectionStatusMetadata jsonWatchModeSectionStatusMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonWatchModeSectionStatusMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonWatchModeSectionStatusMetadata jsonWatchModeSectionStatusMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("cooccurrences", jsonWatchModeSectionStatusMetadata.c);
        jsonGenerator.a("score", jsonWatchModeSectionStatusMetadata.b);
        jsonGenerator.a("tweet_id", jsonWatchModeSectionStatusMetadata.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
