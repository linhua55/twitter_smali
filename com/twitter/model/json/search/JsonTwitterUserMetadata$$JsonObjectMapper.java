package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterUserMetadata$$JsonObjectMapper extends JsonMapper<JsonTwitterUserMetadata> {
    public JsonTwitterUserMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterUserMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterUserMetadata jsonTwitterUserMetadata = new JsonTwitterUserMetadata();
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
            parseField(jsonTwitterUserMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterUserMetadata;
    }

    public static void parseField(JsonTwitterUserMetadata jsonTwitterUserMetadata, String str, JsonParser jsonParser) throws IOException {
        if ("result_type".equals(str)) {
            jsonTwitterUserMetadata.b = jsonParser.a(null);
        } else if ("social_context".equals(str)) {
            jsonTwitterUserMetadata.c = JsonSearchSocialProof$$JsonObjectMapper._parse(jsonParser);
        } else if ("title".equals(str)) {
            jsonTwitterUserMetadata.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTwitterUserMetadata jsonTwitterUserMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterUserMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterUserMetadata jsonTwitterUserMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("result_type", jsonTwitterUserMetadata.b);
        if (jsonTwitterUserMetadata.c != null) {
            jsonGenerator.a("social_context");
            JsonSearchSocialProof$$JsonObjectMapper._serialize(jsonTwitterUserMetadata.c, jsonGenerator, true);
        }
        jsonGenerator.a("title", jsonTwitterUserMetadata.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
