package com.twitter.model.json.core;

import cgl;
import cni;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bi;
import com.twitter.model.core.bp;
import com.twitter.model.core.bz;
import com.twitter.model.core.cm;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.search.p;
import com.twitter.model.stratostore.h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterStatus$$JsonObjectMapper extends JsonMapper<JsonTwitterStatus> {
    public JsonTwitterStatus parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterStatus _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterStatus jsonTwitterStatus = new JsonTwitterStatus();
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
            parseField(jsonTwitterStatus, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterStatus;
    }

    public static void parseField(JsonTwitterStatus jsonTwitterStatus, String str, JsonParser jsonParser) throws IOException {
        if ("card".equals(str)) {
            jsonTwitterStatus.G = (cgl) LoganSquare.typeConverterFor(cgl.class).parse(jsonParser);
        } else if ("collection".equals(str)) {
            jsonTwitterStatus.J = (bz) LoganSquare.typeConverterFor(bz.class).parse(jsonParser);
        } else if ("coordinates".equals(str)) {
            jsonTwitterStatus.x = JsonTwitterStatus$StatusCoordinateArray$$JsonObjectMapper._parse(jsonParser);
        } else if ("created_at".equals(str)) {
            jsonTwitterStatus.d = jsonParser.a(null);
        } else if ("current_user_retweet".equals(str)) {
            jsonTwitterStatus.w = JsonTwitterStatus$UserRetweetId$$JsonObjectMapper._parse(jsonParser);
        } else if ("display_text_range".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Object valueOf = jsonParser.d() == JsonToken.m ? null : Integer.valueOf(jsonParser.o());
                    if (valueOf != null) {
                        arrayList.add(valueOf);
                    }
                }
                jsonTwitterStatus.h = arrayList;
                return;
            }
            jsonTwitterStatus.h = null;
        } else if ("entities".equals(str)) {
            jsonTwitterStatus.C = (bi) LoganSquare.typeConverterFor(bi.class).parse(jsonParser);
        } else if ("ext".equals(str)) {
            jsonTwitterStatus.I = (h) LoganSquare.typeConverterFor(h.class).parse(jsonParser);
        } else if ("extended_entities".equals(str)) {
            jsonTwitterStatus.D = JsonTwitterStatus$ExtendedTweetEntities$$JsonObjectMapper._parse(jsonParser);
        } else if ("favorite_count".equals(str)) {
            jsonTwitterStatus.p = jsonParser.o();
        } else if ("favorited".equals(str)) {
            jsonTwitterStatus.r = jsonParser.r();
        } else if ("full_text".equals(str)) {
            jsonTwitterStatus.g = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonTwitterStatus.b = jsonParser.p();
        } else if ("in_reply_to_screen_name".equals(str)) {
            jsonTwitterStatus.n = jsonParser.a(null);
        } else if ("in_reply_to_status_id".equals(str)) {
            jsonTwitterStatus.m = jsonParser.p();
        } else if ("in_reply_to_user_id".equals(str)) {
            jsonTwitterStatus.l = jsonParser.p();
        } else if ("is_emergency".equals(str)) {
            jsonTwitterStatus.u = jsonParser.r();
        } else if ("is_quoted_status".equals(str)) {
            jsonTwitterStatus.v = jsonParser.r();
        } else if ("lang".equals(str)) {
            jsonTwitterStatus.j = jsonParser.a(null);
        } else if ("metadata".equals(str)) {
            jsonTwitterStatus.E = (p) LoganSquare.typeConverterFor(p.class).parse(jsonParser);
        } else if ("place".equals(str)) {
            jsonTwitterStatus.z = (TwitterPlace) LoganSquare.typeConverterFor(TwitterPlace.class).parse(jsonParser);
        } else if ("possibly_sensitive".equals(str)) {
            jsonTwitterStatus.s = jsonParser.r();
        } else if ("possibly_sensitive_appealable".equals(str)) {
            jsonTwitterStatus.t = jsonParser.r();
        } else if ("promoted_content".equals(str)) {
            jsonTwitterStatus.F = (cni) LoganSquare.typeConverterFor(cni.class).parse(jsonParser);
        } else if ("quoted_status".equals(str)) {
            jsonTwitterStatus.B = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
        } else if ("quoted_status_id".equals(str)) {
            jsonTwitterStatus.o = jsonParser.p();
        } else if ("retweet_count".equals(str)) {
            jsonTwitterStatus.i = jsonParser.a(null);
        } else if ("retweeted".equals(str)) {
            jsonTwitterStatus.q = jsonParser.r();
        } else if ("retweeted_status".equals(str)) {
            jsonTwitterStatus.A = (cm) LoganSquare.typeConverterFor(cm.class).parse(jsonParser);
        } else if ("source".equals(str)) {
            jsonTwitterStatus.e = jsonParser.a(null);
        } else if ("supplemental_language".equals(str)) {
            jsonTwitterStatus.k = jsonParser.a(null);
        } else if ("text".equals(str)) {
            jsonTwitterStatus.f = jsonParser.a(null);
        } else if ("tweet_pivots".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    bp bpVar = (bp) LoganSquare.typeConverterFor(bp.class).parse(jsonParser);
                    if (bpVar != null) {
                        arrayList2.add(bpVar);
                    }
                }
                jsonTwitterStatus.H = arrayList2;
                return;
            }
            jsonTwitterStatus.H = null;
        } else if ("user".equals(str)) {
            jsonTwitterStatus.y = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
        } else if ("user_id_str".equals(str)) {
            jsonTwitterStatus.c = jsonParser.a(null);
        }
    }

    public void serialize(JsonTwitterStatus jsonTwitterStatus, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterStatus, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterStatus jsonTwitterStatus, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTwitterStatus.G != null) {
            LoganSquare.typeConverterFor(cgl.class).serialize(jsonTwitterStatus.G, "card", true, jsonGenerator);
        }
        if (jsonTwitterStatus.J != null) {
            LoganSquare.typeConverterFor(bz.class).serialize(jsonTwitterStatus.J, "collection", true, jsonGenerator);
        }
        if (jsonTwitterStatus.x != null) {
            jsonGenerator.a("coordinates");
            JsonTwitterStatus$StatusCoordinateArray$$JsonObjectMapper._serialize(jsonTwitterStatus.x, jsonGenerator, true);
        }
        jsonGenerator.a("created_at", jsonTwitterStatus.d);
        if (jsonTwitterStatus.w != null) {
            jsonGenerator.a("current_user_retweet");
            JsonTwitterStatus$UserRetweetId$$JsonObjectMapper._serialize(jsonTwitterStatus.w, jsonGenerator, true);
        }
        List<Integer> list = jsonTwitterStatus.h;
        if (list != null) {
            jsonGenerator.a("display_text_range");
            jsonGenerator.a();
            for (Integer intValue : list) {
                jsonGenerator.b(intValue.intValue());
            }
            jsonGenerator.b();
        }
        if (jsonTwitterStatus.C != null) {
            LoganSquare.typeConverterFor(bi.class).serialize(jsonTwitterStatus.C, "entities", true, jsonGenerator);
        }
        if (jsonTwitterStatus.I != null) {
            LoganSquare.typeConverterFor(h.class).serialize(jsonTwitterStatus.I, "ext", true, jsonGenerator);
        }
        if (jsonTwitterStatus.D != null) {
            jsonGenerator.a("extended_entities");
            JsonTwitterStatus$ExtendedTweetEntities$$JsonObjectMapper._serialize(jsonTwitterStatus.D, jsonGenerator, true);
        }
        jsonGenerator.a("favorite_count", jsonTwitterStatus.p);
        jsonGenerator.a("favorited", jsonTwitterStatus.r);
        jsonGenerator.a("full_text", jsonTwitterStatus.g);
        jsonGenerator.a("id", jsonTwitterStatus.b);
        jsonGenerator.a("in_reply_to_screen_name", jsonTwitterStatus.n);
        jsonGenerator.a("in_reply_to_status_id", jsonTwitterStatus.m);
        jsonGenerator.a("in_reply_to_user_id", jsonTwitterStatus.l);
        jsonGenerator.a("is_emergency", jsonTwitterStatus.u);
        jsonGenerator.a("is_quoted_status", jsonTwitterStatus.v);
        jsonGenerator.a("lang", jsonTwitterStatus.j);
        if (jsonTwitterStatus.E != null) {
            LoganSquare.typeConverterFor(p.class).serialize(jsonTwitterStatus.E, "metadata", true, jsonGenerator);
        }
        if (jsonTwitterStatus.z != null) {
            LoganSquare.typeConverterFor(TwitterPlace.class).serialize(jsonTwitterStatus.z, "place", true, jsonGenerator);
        }
        jsonGenerator.a("possibly_sensitive", jsonTwitterStatus.s);
        jsonGenerator.a("possibly_sensitive_appealable", jsonTwitterStatus.t);
        if (jsonTwitterStatus.F != null) {
            LoganSquare.typeConverterFor(cni.class).serialize(jsonTwitterStatus.F, "promoted_content", true, jsonGenerator);
        }
        if (jsonTwitterStatus.B != null) {
            LoganSquare.typeConverterFor(cm.class).serialize(jsonTwitterStatus.B, "quoted_status", true, jsonGenerator);
        }
        jsonGenerator.a("quoted_status_id", jsonTwitterStatus.o);
        jsonGenerator.a("retweet_count", jsonTwitterStatus.i);
        jsonGenerator.a("retweeted", jsonTwitterStatus.q);
        if (jsonTwitterStatus.A != null) {
            LoganSquare.typeConverterFor(cm.class).serialize(jsonTwitterStatus.A, "retweeted_status", true, jsonGenerator);
        }
        jsonGenerator.a("source", jsonTwitterStatus.e);
        jsonGenerator.a("supplemental_language", jsonTwitterStatus.k);
        jsonGenerator.a("text", jsonTwitterStatus.f);
        List<bp> list2 = jsonTwitterStatus.H;
        if (list2 != null) {
            jsonGenerator.a("tweet_pivots");
            jsonGenerator.a();
            for (bp bpVar : list2) {
                if (bpVar != null) {
                    LoganSquare.typeConverterFor(bp.class).serialize(bpVar, "lslocaltweet_pivotsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (jsonTwitterStatus.y != null) {
            LoganSquare.typeConverterFor(TwitterUser.class).serialize(jsonTwitterStatus.y, "user", true, jsonGenerator);
        }
        jsonGenerator.a("user_id_str", jsonTwitterStatus.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
