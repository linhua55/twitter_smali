package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonContactMatch$$JsonObjectMapper extends JsonMapper<JsonContactMatch> {
    public JsonContactMatch parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonContactMatch _parse(JsonParser jsonParser) throws IOException {
        JsonContactMatch jsonContactMatch = new JsonContactMatch();
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
            parseField(jsonContactMatch, e, jsonParser);
            jsonParser.c();
        }
        return jsonContactMatch;
    }

    public static void parseField(JsonContactMatch jsonContactMatch, String str, JsonParser jsonParser) throws IOException {
        if ("items".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Object valueOf = jsonParser.d() == JsonToken.m ? null : Integer.valueOf(jsonParser.o());
                    if (valueOf != null) {
                        arrayList.add(valueOf);
                    }
                }
                jsonContactMatch.b = arrayList;
                return;
            }
            jsonContactMatch.b = null;
        } else if ("user".equals(str)) {
            jsonContactMatch.a = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
        }
    }

    public void serialize(JsonContactMatch jsonContactMatch, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonContactMatch, jsonGenerator, z);
    }

    public static void _serialize(JsonContactMatch jsonContactMatch, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<Integer> list = jsonContactMatch.b;
        if (list != null) {
            jsonGenerator.a("items");
            jsonGenerator.a();
            for (Integer intValue : list) {
                jsonGenerator.b(intValue.intValue());
            }
            jsonGenerator.b();
        }
        if (jsonContactMatch.a != null) {
            LoganSquare.typeConverterFor(TwitterUser.class).serialize(jsonContactMatch.a, "user", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
