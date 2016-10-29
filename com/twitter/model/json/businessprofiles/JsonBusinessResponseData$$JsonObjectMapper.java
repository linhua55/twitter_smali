package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.businessprofiles.ResponsivenessLevel;
import com.twitter.model.businessprofiles.ag;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonBusinessResponseData$$JsonObjectMapper extends JsonMapper<JsonBusinessResponseData> {
    public JsonBusinessResponseData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBusinessResponseData _parse(JsonParser jsonParser) throws IOException {
        JsonBusinessResponseData jsonBusinessResponseData = new JsonBusinessResponseData();
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
            parseField(jsonBusinessResponseData, e, jsonParser);
            jsonParser.c();
        }
        return jsonBusinessResponseData;
    }

    public static void parseField(JsonBusinessResponseData jsonBusinessResponseData, String str, JsonParser jsonParser) throws IOException {
        if ("customer_service_account_user".equals(str)) {
            jsonBusinessResponseData.c = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
        } else if ("online_hours".equals(str)) {
            jsonBusinessResponseData.a = (ag) LoganSquare.typeConverterFor(ag.class).parse(jsonParser);
        } else if ("responsiveness_level".equals(str)) {
            jsonBusinessResponseData.b = (ResponsivenessLevel) LoganSquare.typeConverterFor(ResponsivenessLevel.class).parse(jsonParser);
        }
    }

    public void serialize(JsonBusinessResponseData jsonBusinessResponseData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBusinessResponseData, jsonGenerator, z);
    }

    public static void _serialize(JsonBusinessResponseData jsonBusinessResponseData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonBusinessResponseData.c != null) {
            LoganSquare.typeConverterFor(TwitterUser.class).serialize(jsonBusinessResponseData.c, "customer_service_account_user", true, jsonGenerator);
        }
        if (jsonBusinessResponseData.a != null) {
            LoganSquare.typeConverterFor(ag.class).serialize(jsonBusinessResponseData.a, "online_hours", true, jsonGenerator);
        }
        if (jsonBusinessResponseData.b != null) {
            LoganSquare.typeConverterFor(ResponsivenessLevel.class).serialize(jsonBusinessResponseData.b, "responsiveness_level", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
