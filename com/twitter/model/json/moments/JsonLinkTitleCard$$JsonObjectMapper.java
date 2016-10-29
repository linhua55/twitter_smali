package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonLinkTitleCard$$JsonObjectMapper extends JsonMapper<JsonLinkTitleCard> {
    public JsonLinkTitleCard parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonLinkTitleCard _parse(JsonParser jsonParser) throws IOException {
        JsonLinkTitleCard jsonLinkTitleCard = new JsonLinkTitleCard();
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
            parseField(jsonLinkTitleCard, e, jsonParser);
            jsonParser.c();
        }
        return jsonLinkTitleCard;
    }

    public static void parseField(JsonLinkTitleCard jsonLinkTitleCard, String str, JsonParser jsonParser) throws IOException {
        if ("display_url".equals(str)) {
            jsonLinkTitleCard.b = jsonParser.a(null);
        } else if ("title".equals(str)) {
            jsonLinkTitleCard.d = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonLinkTitleCard.a = jsonParser.a(null);
        } else if ("vanity_source".equals(str)) {
            jsonLinkTitleCard.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonLinkTitleCard jsonLinkTitleCard, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonLinkTitleCard, jsonGenerator, z);
    }

    public static void _serialize(JsonLinkTitleCard jsonLinkTitleCard, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("display_url", jsonLinkTitleCard.b);
        jsonGenerator.a("title", jsonLinkTitleCard.d);
        jsonGenerator.a("url", jsonLinkTitleCard.a);
        jsonGenerator.a("vanity_source", jsonLinkTitleCard.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
