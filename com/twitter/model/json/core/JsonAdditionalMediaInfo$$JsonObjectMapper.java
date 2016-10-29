package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonAdditionalMediaInfo$$JsonObjectMapper extends JsonMapper<JsonAdditionalMediaInfo> {
    public JsonAdditionalMediaInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAdditionalMediaInfo _parse(JsonParser jsonParser) throws IOException {
        JsonAdditionalMediaInfo jsonAdditionalMediaInfo = new JsonAdditionalMediaInfo();
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
            parseField(jsonAdditionalMediaInfo, e, jsonParser);
            jsonParser.c();
        }
        return jsonAdditionalMediaInfo;
    }

    public static void parseField(JsonAdditionalMediaInfo jsonAdditionalMediaInfo, String str, JsonParser jsonParser) throws IOException {
        if ("call_to_actions".equals(str)) {
            jsonAdditionalMediaInfo.a = JsonMediaCallToActions$$JsonObjectMapper._parse(jsonParser);
        } else if ("description".equals(str)) {
            jsonAdditionalMediaInfo.b = jsonParser.a(null);
        } else if ("monetizable".equals(str)) {
            jsonAdditionalMediaInfo.c = jsonParser.r();
        } else if ("source_user".equals(str)) {
            jsonAdditionalMediaInfo.e = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
        } else if ("title".equals(str)) {
            jsonAdditionalMediaInfo.d = jsonParser.a(null);
        }
    }

    public void serialize(JsonAdditionalMediaInfo jsonAdditionalMediaInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAdditionalMediaInfo, jsonGenerator, z);
    }

    public static void _serialize(JsonAdditionalMediaInfo jsonAdditionalMediaInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonAdditionalMediaInfo.a != null) {
            jsonGenerator.a("call_to_actions");
            JsonMediaCallToActions$$JsonObjectMapper._serialize(jsonAdditionalMediaInfo.a, jsonGenerator, true);
        }
        jsonGenerator.a("description", jsonAdditionalMediaInfo.b);
        jsonGenerator.a("monetizable", jsonAdditionalMediaInfo.c);
        if (jsonAdditionalMediaInfo.e != null) {
            LoganSquare.typeConverterFor(TwitterUser.class).serialize(jsonAdditionalMediaInfo.e, "source_user", true, jsonGenerator);
        }
        jsonGenerator.a("title", jsonAdditionalMediaInfo.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
