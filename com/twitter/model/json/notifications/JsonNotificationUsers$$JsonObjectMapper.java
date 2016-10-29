package com.twitter.model.json.notifications;

import cmj;
import cmu;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonNotificationUsers$$JsonObjectMapper extends JsonMapper<JsonNotificationUsers> {
    public JsonNotificationUsers parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationUsers _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationUsers jsonNotificationUsers = new JsonNotificationUsers();
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
            parseField(jsonNotificationUsers, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationUsers;
    }

    public static void parseField(JsonNotificationUsers jsonNotificationUsers, String str, JsonParser jsonParser) throws IOException {
        if ("context".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cmj cmj = (cmj) LoganSquare.typeConverterFor(cmj.class).parse(jsonParser);
                    if (cmj != null) {
                        arrayList.add(cmj);
                    }
                }
                jsonNotificationUsers.d = arrayList;
                return;
            }
            jsonNotificationUsers.d = null;
        } else if ("original_sender".equals(str)) {
            jsonNotificationUsers.c = (cmu) LoganSquare.typeConverterFor(cmu.class).parse(jsonParser);
        } else if ("recipient".equals(str)) {
            jsonNotificationUsers.a = (cmu) LoganSquare.typeConverterFor(cmu.class).parse(jsonParser);
        } else if ("sender".equals(str)) {
            jsonNotificationUsers.b = (cmu) LoganSquare.typeConverterFor(cmu.class).parse(jsonParser);
        }
    }

    public void serialize(JsonNotificationUsers jsonNotificationUsers, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationUsers, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationUsers jsonNotificationUsers, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<cmj> list = jsonNotificationUsers.d;
        if (list != null) {
            jsonGenerator.a("context");
            jsonGenerator.a();
            for (cmj cmj : list) {
                if (cmj != null) {
                    LoganSquare.typeConverterFor(cmj.class).serialize(cmj, "lslocalcontextElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (jsonNotificationUsers.c != null) {
            LoganSquare.typeConverterFor(cmu.class).serialize(jsonNotificationUsers.c, "original_sender", true, jsonGenerator);
        }
        if (jsonNotificationUsers.a != null) {
            LoganSquare.typeConverterFor(cmu.class).serialize(jsonNotificationUsers.a, "recipient", true, jsonGenerator);
        }
        if (jsonNotificationUsers.b != null) {
            LoganSquare.typeConverterFor(cmu.class).serialize(jsonNotificationUsers.b, "sender", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
