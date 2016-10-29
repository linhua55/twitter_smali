package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.bg;
import com.twitter.model.json.core.JsonTwitterUser.JsonUserEntities;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterUser$JsonUserEntities$$JsonObjectMapper extends JsonMapper<JsonUserEntities> {
    public JsonUserEntities parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUserEntities _parse(JsonParser jsonParser) throws IOException {
        JsonUserEntities jsonUserEntities = new JsonUserEntities();
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
            parseField(jsonUserEntities, e, jsonParser);
            jsonParser.c();
        }
        return jsonUserEntities;
    }

    public static void parseField(JsonUserEntities jsonUserEntities, String str, JsonParser jsonParser) throws IOException {
        if ("description".equals(str)) {
            jsonUserEntities.a = (bg) LoganSquare.typeConverterFor(bg.class).parse(jsonParser);
        } else if ("url".equals(str)) {
            jsonUserEntities.b = (bg) LoganSquare.typeConverterFor(bg.class).parse(jsonParser);
        }
    }

    public void serialize(JsonUserEntities jsonUserEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUserEntities, jsonGenerator, z);
    }

    public static void _serialize(JsonUserEntities jsonUserEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonUserEntities.a != null) {
            LoganSquare.typeConverterFor(bg.class).serialize(jsonUserEntities.a, "description", true, jsonGenerator);
        }
        if (jsonUserEntities.b != null) {
            LoganSquare.typeConverterFor(bg.class).serialize(jsonUserEntities.b, "url", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
