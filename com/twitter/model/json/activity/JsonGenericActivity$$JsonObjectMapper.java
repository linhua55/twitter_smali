package com.twitter.model.json.activity;

import cfr;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonGenericActivity$$JsonObjectMapper extends JsonMapper<JsonGenericActivity> {
    public JsonGenericActivity parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGenericActivity _parse(JsonParser jsonParser) throws IOException {
        JsonGenericActivity jsonGenericActivity = new JsonGenericActivity();
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
            parseField(jsonGenericActivity, e, jsonParser);
            jsonParser.c();
        }
        return jsonGenericActivity;
    }

    public static void parseField(JsonGenericActivity jsonGenericActivity, String str, JsonParser jsonParser) throws IOException {
        if ("client_id".equals(str)) {
            jsonGenericActivity.e = jsonParser.a(null);
        } else if ("context_tweets".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r1 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cm cmVar = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
                    if (cmVar != null) {
                        r1.add(cmVar);
                    }
                }
                jsonGenericActivity.j = r1;
                return;
            }
            jsonGenericActivity.j = null;
        } else if ("context_users".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r1 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    r0 = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
                    if (r0 != null) {
                        r1.add(r0);
                    }
                }
                jsonGenericActivity.i = r1;
                return;
            }
            jsonGenericActivity.i = null;
        } else if ("created_at".equals(str)) {
            jsonGenericActivity.a = jsonParser.p();
        } else if ("display_text".equals(str)) {
            jsonGenericActivity.d = (cfr) LoganSquare.typeConverterFor(cfr.class).parse(jsonParser);
        } else if ("facepile_users".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r1 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    r0 = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
                    if (r0 != null) {
                        r1.add(r0);
                    }
                }
                jsonGenericActivity.h = r1;
                return;
            }
            jsonGenericActivity.h = null;
        } else if ("generic_type".equals(str)) {
            jsonGenericActivity.f = jsonParser.a(null);
        } else if ("max_position".equals(str)) {
            jsonGenericActivity.b = jsonParser.p();
        } else if ("min_position".equals(str)) {
            jsonGenericActivity.c = jsonParser.p();
        } else if ("tap_through_action".equals(str)) {
            jsonGenericActivity.g = jsonParser.a(null);
        }
    }

    public void serialize(JsonGenericActivity jsonGenericActivity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGenericActivity, jsonGenerator, z);
    }

    public static void _serialize(JsonGenericActivity jsonGenericActivity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("client_id", jsonGenericActivity.e);
        List<cm> list = jsonGenericActivity.j;
        if (list != null) {
            jsonGenerator.a("context_tweets");
            jsonGenerator.a();
            for (cm cmVar : list) {
                if (cmVar != null) {
                    LoganSquare.typeConverterFor(cm.class).serialize(cmVar, "lslocalcontext_tweetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<TwitterUser> list2 = jsonGenericActivity.i;
        if (list2 != null) {
            jsonGenerator.a("context_users");
            jsonGenerator.a();
            for (TwitterUser twitterUser : list2) {
                if (twitterUser != null) {
                    LoganSquare.typeConverterFor(TwitterUser.class).serialize(twitterUser, "lslocalcontext_usersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("created_at", jsonGenericActivity.a);
        if (jsonGenericActivity.d != null) {
            LoganSquare.typeConverterFor(cfr.class).serialize(jsonGenericActivity.d, "display_text", true, jsonGenerator);
        }
        list2 = jsonGenericActivity.h;
        if (list2 != null) {
            jsonGenerator.a("facepile_users");
            jsonGenerator.a();
            for (TwitterUser twitterUser2 : list2) {
                if (twitterUser2 != null) {
                    LoganSquare.typeConverterFor(TwitterUser.class).serialize(twitterUser2, "lslocalfacepile_usersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("generic_type", jsonGenericActivity.f);
        jsonGenerator.a("max_position", jsonGenericActivity.b);
        jsonGenerator.a("min_position", jsonGenericActivity.c);
        jsonGenerator.a("tap_through_action", jsonGenericActivity.g);
        if (z) {
            jsonGenerator.d();
        }
    }
}
