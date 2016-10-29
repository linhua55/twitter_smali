package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.json.geo.JsonPlacePageResponse.JsonPlacePageHeader;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPlacePageResponse$JsonPlacePageHeader$$JsonObjectMapper extends JsonMapper<JsonPlacePageHeader> {
    public JsonPlacePageHeader parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPlacePageHeader _parse(JsonParser jsonParser) throws IOException {
        JsonPlacePageHeader jsonPlacePageHeader = new JsonPlacePageHeader();
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
            parseField(jsonPlacePageHeader, e, jsonParser);
            jsonParser.c();
        }
        return jsonPlacePageHeader;
    }

    public static void parseField(JsonPlacePageHeader jsonPlacePageHeader, String str, JsonParser jsonParser) throws IOException {
        if ("place".equals(str)) {
            jsonPlacePageHeader.a = (TwitterPlace) LoganSquare.typeConverterFor(TwitterPlace.class).parse(jsonParser);
        }
    }

    public void serialize(JsonPlacePageHeader jsonPlacePageHeader, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPlacePageHeader, jsonGenerator, z);
    }

    public static void _serialize(JsonPlacePageHeader jsonPlacePageHeader, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonPlacePageHeader.a != null) {
            LoganSquare.typeConverterFor(TwitterPlace.class).serialize(jsonPlacePageHeader.a, "place", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
