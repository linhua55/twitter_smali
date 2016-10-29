package com.twitter.model.json.profiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonBirthdate$$JsonObjectMapper extends JsonMapper<JsonBirthdate> {
    public JsonBirthdate parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBirthdate _parse(JsonParser jsonParser) throws IOException {
        JsonBirthdate jsonBirthdate = new JsonBirthdate();
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
            parseField(jsonBirthdate, e, jsonParser);
            jsonParser.c();
        }
        return jsonBirthdate;
    }

    public static void parseField(JsonBirthdate jsonBirthdate, String str, JsonParser jsonParser) throws IOException {
        if ("day".equals(str)) {
            jsonBirthdate.a = jsonParser.o();
        } else if ("month".equals(str)) {
            jsonBirthdate.b = jsonParser.o();
        } else if ("visibility".equals(str)) {
            jsonBirthdate.d = (Visibility) LoganSquare.typeConverterFor(Visibility.class).parse(jsonParser);
        } else if ("year".equals(str)) {
            jsonBirthdate.c = jsonParser.o();
        } else if ("year_visibility".equals(str)) {
            jsonBirthdate.e = (Visibility) LoganSquare.typeConverterFor(Visibility.class).parse(jsonParser);
        }
    }

    public void serialize(JsonBirthdate jsonBirthdate, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBirthdate, jsonGenerator, z);
    }

    public static void _serialize(JsonBirthdate jsonBirthdate, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("day", jsonBirthdate.a);
        jsonGenerator.a("month", jsonBirthdate.b);
        if (jsonBirthdate.d != null) {
            LoganSquare.typeConverterFor(Visibility.class).serialize(jsonBirthdate.d, "visibility", true, jsonGenerator);
        }
        jsonGenerator.a("year", jsonBirthdate.c);
        if (jsonBirthdate.e != null) {
            LoganSquare.typeConverterFor(Visibility.class).serialize(jsonBirthdate.e, "year_visibility", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
