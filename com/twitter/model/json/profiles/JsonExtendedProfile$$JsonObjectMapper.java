package com.twitter.model.json.profiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.profile.d;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonExtendedProfile$$JsonObjectMapper extends JsonMapper<JsonExtendedProfile> {
    public JsonExtendedProfile parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonExtendedProfile _parse(JsonParser jsonParser) throws IOException {
        JsonExtendedProfile jsonExtendedProfile = new JsonExtendedProfile();
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
            parseField(jsonExtendedProfile, e, jsonParser);
            jsonParser.c();
        }
        return jsonExtendedProfile;
    }

    public static void parseField(JsonExtendedProfile jsonExtendedProfile, String str, JsonParser jsonParser) throws IOException {
        if ("birthdate".equals(str)) {
            jsonExtendedProfile.b = JsonBirthdate$$JsonObjectMapper._parse(jsonParser);
        } else if ("id".equals(str)) {
            jsonExtendedProfile.a = jsonParser.p();
        } else if ("vine_profile".equals(str)) {
            jsonExtendedProfile.c = (d) LoganSquare.typeConverterFor(d.class).parse(jsonParser);
        }
    }

    public void serialize(JsonExtendedProfile jsonExtendedProfile, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonExtendedProfile, jsonGenerator, z);
    }

    public static void _serialize(JsonExtendedProfile jsonExtendedProfile, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonExtendedProfile.b != null) {
            jsonGenerator.a("birthdate");
            JsonBirthdate$$JsonObjectMapper._serialize(jsonExtendedProfile.b, jsonGenerator, true);
        }
        jsonGenerator.a("id", jsonExtendedProfile.a);
        if (jsonExtendedProfile.c != null) {
            LoganSquare.typeConverterFor(d.class).serialize(jsonExtendedProfile.c, "vine_profile", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
