package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterAccountUser$$JsonObjectMapper extends JsonMapper<JsonTwitterAccountUser> {
    public JsonTwitterAccountUser parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterAccountUser _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterAccountUser jsonTwitterAccountUser = new JsonTwitterAccountUser();
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
            parseField(jsonTwitterAccountUser, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterAccountUser;
    }

    public static void parseField(JsonTwitterAccountUser jsonTwitterAccountUser, String str, JsonParser jsonParser) throws IOException {
        if ("created_at".equals(str)) {
            jsonTwitterAccountUser.i = jsonParser.a(null);
        } else if ("description".equals(str)) {
            jsonTwitterAccountUser.f = jsonParser.a(null);
        } else if ("fast_followers_count".equals(str)) {
            jsonTwitterAccountUser.k = jsonParser.o();
        } else if ("followers_count".equals(str)) {
            jsonTwitterAccountUser.j = jsonParser.o();
        } else if ("friends_count".equals(str)) {
            jsonTwitterAccountUser.l = jsonParser.o();
        } else if ("geo_enabled".equals(str)) {
            jsonTwitterAccountUser.p = jsonParser.r();
        } else if ("has_extended_profile".equals(str)) {
            jsonTwitterAccountUser.v = jsonParser.r();
        } else if ("id".equals(str)) {
            jsonTwitterAccountUser.a = jsonParser.p();
        } else if ("is_lifeline_institution".equals(str)) {
            jsonTwitterAccountUser.s = jsonParser.r();
        } else if ("protected".equals(str)) {
            jsonTwitterAccountUser.o = jsonParser.r();
        } else if ("is_translator".equals(str)) {
            jsonTwitterAccountUser.r = jsonParser.r();
        } else if ("location".equals(str)) {
            jsonTwitterAccountUser.h = jsonParser.a(null);
        } else if ("media_count".equals(str)) {
            jsonTwitterAccountUser.n = jsonParser.o();
        } else if ("name".equals(str)) {
            jsonTwitterAccountUser.b = jsonParser.a(null);
        } else if ("needs_phone_verification".equals(str)) {
            jsonTwitterAccountUser.u = jsonParser.r();
        } else if ("profile_banner_url".equals(str)) {
            jsonTwitterAccountUser.e = jsonParser.a(null);
        } else if ("profile_image_url_https".equals(str)) {
            jsonTwitterAccountUser.d = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            jsonTwitterAccountUser.c = jsonParser.a(null);
        } else if ("statuses_count".equals(str)) {
            jsonTwitterAccountUser.m = jsonParser.o();
        } else if ("suspended".equals(str)) {
            jsonTwitterAccountUser.t = jsonParser.r();
        } else if ("url_https".equals(str)) {
            jsonTwitterAccountUser.g = jsonParser.a(null);
        } else if ("verified".equals(str)) {
            jsonTwitterAccountUser.q = jsonParser.r();
        }
    }

    public void serialize(JsonTwitterAccountUser jsonTwitterAccountUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterAccountUser, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterAccountUser jsonTwitterAccountUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("created_at", jsonTwitterAccountUser.i);
        jsonGenerator.a("description", jsonTwitterAccountUser.f);
        jsonGenerator.a("fast_followers_count", jsonTwitterAccountUser.k);
        jsonGenerator.a("followers_count", jsonTwitterAccountUser.j);
        jsonGenerator.a("friends_count", jsonTwitterAccountUser.l);
        jsonGenerator.a("geo_enabled", jsonTwitterAccountUser.p);
        jsonGenerator.a("has_extended_profile", jsonTwitterAccountUser.v);
        jsonGenerator.a("id", jsonTwitterAccountUser.a);
        jsonGenerator.a("is_lifeline_institution", jsonTwitterAccountUser.s);
        jsonGenerator.a("protected", jsonTwitterAccountUser.o);
        jsonGenerator.a("is_translator", jsonTwitterAccountUser.r);
        jsonGenerator.a("location", jsonTwitterAccountUser.h);
        jsonGenerator.a("media_count", jsonTwitterAccountUser.n);
        jsonGenerator.a("name", jsonTwitterAccountUser.b);
        jsonGenerator.a("needs_phone_verification", jsonTwitterAccountUser.u);
        jsonGenerator.a("profile_banner_url", jsonTwitterAccountUser.e);
        jsonGenerator.a("profile_image_url_https", jsonTwitterAccountUser.d);
        jsonGenerator.a("screen_name", jsonTwitterAccountUser.c);
        jsonGenerator.a("statuses_count", jsonTwitterAccountUser.m);
        jsonGenerator.a("suspended", jsonTwitterAccountUser.t);
        jsonGenerator.a("url_https", jsonTwitterAccountUser.g);
        jsonGenerator.a("verified", jsonTwitterAccountUser.q);
        if (z) {
            jsonGenerator.d();
        }
    }
}
