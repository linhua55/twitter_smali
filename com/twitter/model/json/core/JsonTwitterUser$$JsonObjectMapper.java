package com.twitter.model.json.core;

import cni;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.analytics.AnalyticsType;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.ExtendedProfile;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterUser$$JsonObjectMapper extends JsonMapper<JsonTwitterUser> {
    public JsonTwitterUser parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterUser _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterUser jsonTwitterUser = new JsonTwitterUser();
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
            parseField(jsonTwitterUser, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterUser;
    }

    public static void parseField(JsonTwitterUser jsonTwitterUser, String str, JsonParser jsonParser) throws IOException {
        Boolean bool = null;
        if ("actions".equals(str)) {
            jsonTwitterUser.Q = JsonTwitterUser$JsonActionsArray$$JsonObjectMapper._parse(jsonParser);
        } else if ("advertiser_account_type".equals(str)) {
            jsonTwitterUser.m = (AdvertiserType) LoganSquare.typeConverterFor(AdvertiserType.class).parse(jsonParser);
        } else if ("analytics_type".equals(str)) {
            jsonTwitterUser.W = (AnalyticsType) LoganSquare.typeConverterFor(AnalyticsType.class).parse(jsonParser);
        } else if ("blocked_by".equals(str)) {
            jsonTwitterUser.N = jsonParser.r();
        } else if ("blocking".equals(str)) {
            jsonTwitterUser.D = jsonParser.r();
        } else if ("business_profile_state".equals(str)) {
            jsonTwitterUser.V = (BusinessProfileState) LoganSquare.typeConverterFor(BusinessProfileState.class).parse(jsonParser);
        } else if ("can_dm".equals(str)) {
            jsonTwitterUser.E = jsonParser.r();
        } else if ("can_media_tag".equals(str)) {
            jsonTwitterUser.K = jsonParser.r();
        } else if ("created_at".equals(str)) {
            jsonTwitterUser.j = jsonParser.a(null);
        } else if ("description".equals(str)) {
            jsonTwitterUser.f = jsonParser.a(null);
        } else if ("email_following".equals(str)) {
            jsonTwitterUser.I = jsonParser.r();
        } else if ("entities".equals(str)) {
            jsonTwitterUser.P = JsonTwitterUser$JsonUserEntities$$JsonObjectMapper._parse(jsonParser);
        } else if ("extended_profile".equals(str)) {
            jsonTwitterUser.T = (ExtendedProfile) LoganSquare.typeConverterFor(ExtendedProfile.class).parse(jsonParser);
        } else if ("fast_followers_count".equals(str)) {
            jsonTwitterUser.o = jsonParser.o();
        } else if ("favourites_count".equals(str)) {
            jsonTwitterUser.s = jsonParser.o();
        } else if ("follow_request_sent".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                bool = Boolean.valueOf(jsonParser.r());
            }
            jsonTwitterUser.y = bool;
        } else if ("followed_by".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                bool = Boolean.valueOf(jsonParser.r());
            }
            jsonTwitterUser.x = bool;
        } else if ("followers_count".equals(str)) {
            jsonTwitterUser.n = jsonParser.o();
        } else if ("following".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                bool = Boolean.valueOf(jsonParser.r());
            }
            jsonTwitterUser.v = bool;
        } else if ("friends_count".equals(str)) {
            jsonTwitterUser.p = jsonParser.o();
        } else if ("geo_enabled".equals(str)) {
            jsonTwitterUser.u = jsonParser.r();
        } else if ("has_custom_timelines".equals(str)) {
            jsonTwitterUser.M = jsonParser.r();
        } else if ("has_extended_profile".equals(str)) {
            jsonTwitterUser.w = jsonParser.r();
        } else if ("has_no_screen_name".equals(str)) {
            jsonTwitterUser.X = jsonParser.r();
        } else if ("id".equals(str)) {
            jsonTwitterUser.a = jsonParser.p();
        } else if ("url".equals(str)) {
            jsonTwitterUser.h = jsonParser.a(null);
        } else if ("is_lifeline_institution".equals(str)) {
            jsonTwitterUser.B = jsonParser.r();
        } else if ("protected".equals(str)) {
            jsonTwitterUser.t = jsonParser.r();
        } else if ("is_translator".equals(str)) {
            jsonTwitterUser.A = jsonParser.r();
        } else if ("lifeline_following".equals(str)) {
            jsonTwitterUser.G = jsonParser.r();
        } else if ("location".equals(str)) {
            jsonTwitterUser.i = jsonParser.a(null);
        } else if ("media_count".equals(str)) {
            jsonTwitterUser.r = jsonParser.o();
        } else if ("muting".equals(str)) {
            jsonTwitterUser.L = jsonParser.r();
        } else if ("name".equals(str)) {
            jsonTwitterUser.b = jsonParser.a(null);
        } else if ("needs_phone_verification".equals(str)) {
            jsonTwitterUser.J = jsonParser.r();
        } else if ("notifications".equals(str)) {
            jsonTwitterUser.F = jsonParser.r();
        } else if ("phone".equals(str)) {
            jsonTwitterUser.U = JsonTwitterUser$JsonUserPhone$$JsonObjectMapper._parse(jsonParser);
        } else if ("pinned_tweet_ids".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Object valueOf = jsonParser.d() == JsonToken.m ? null : Long.valueOf(jsonParser.p());
                    if (valueOf != null) {
                        arrayList.add(valueOf);
                    }
                }
                jsonTwitterUser.S = arrayList;
                return;
            }
            jsonTwitterUser.S = null;
        } else if ("profile_background_color".equals(str)) {
            jsonTwitterUser.k = jsonParser.a(null);
        } else if ("profile_banner_url".equals(str)) {
            jsonTwitterUser.e = jsonParser.a(null);
        } else if ("profile_image_url_https".equals(str)) {
            jsonTwitterUser.d = jsonParser.a(null);
        } else if ("profile_link_color".equals(str)) {
            jsonTwitterUser.l = jsonParser.a(null);
        } else if ("profile_location".equals(str)) {
            jsonTwitterUser.R = (TwitterPlace) LoganSquare.typeConverterFor(TwitterPlace.class).parse(jsonParser);
        } else if ("promoted_content".equals(str)) {
            jsonTwitterUser.O = (cni) LoganSquare.typeConverterFor(cni.class).parse(jsonParser);
        } else if ("screen_name".equals(str)) {
            jsonTwitterUser.c = jsonParser.a(null);
        } else if ("statuses_count".equals(str)) {
            jsonTwitterUser.q = jsonParser.o();
        } else if ("suspended".equals(str)) {
            jsonTwitterUser.C = jsonParser.r();
        } else if ("url_https".equals(str)) {
            jsonTwitterUser.g = jsonParser.a(null);
        } else if ("verified".equals(str)) {
            jsonTwitterUser.z = jsonParser.r();
        } else if ("want_retweets".equals(str)) {
            jsonTwitterUser.H = jsonParser.r();
        }
    }

    public void serialize(JsonTwitterUser jsonTwitterUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterUser, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterUser jsonTwitterUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTwitterUser.Q != null) {
            jsonGenerator.a("actions");
            JsonTwitterUser$JsonActionsArray$$JsonObjectMapper._serialize(jsonTwitterUser.Q, jsonGenerator, true);
        }
        if (jsonTwitterUser.m != null) {
            LoganSquare.typeConverterFor(AdvertiserType.class).serialize(jsonTwitterUser.m, "advertiser_account_type", true, jsonGenerator);
        }
        if (jsonTwitterUser.W != null) {
            LoganSquare.typeConverterFor(AnalyticsType.class).serialize(jsonTwitterUser.W, "analytics_type", true, jsonGenerator);
        }
        jsonGenerator.a("blocked_by", jsonTwitterUser.N);
        jsonGenerator.a("blocking", jsonTwitterUser.D);
        if (jsonTwitterUser.V != null) {
            LoganSquare.typeConverterFor(BusinessProfileState.class).serialize(jsonTwitterUser.V, "business_profile_state", true, jsonGenerator);
        }
        jsonGenerator.a("can_dm", jsonTwitterUser.E);
        jsonGenerator.a("can_media_tag", jsonTwitterUser.K);
        jsonGenerator.a("created_at", jsonTwitterUser.j);
        jsonGenerator.a("description", jsonTwitterUser.f);
        jsonGenerator.a("email_following", jsonTwitterUser.I);
        if (jsonTwitterUser.P != null) {
            jsonGenerator.a("entities");
            JsonTwitterUser$JsonUserEntities$$JsonObjectMapper._serialize(jsonTwitterUser.P, jsonGenerator, true);
        }
        if (jsonTwitterUser.T != null) {
            LoganSquare.typeConverterFor(ExtendedProfile.class).serialize(jsonTwitterUser.T, "extended_profile", true, jsonGenerator);
        }
        jsonGenerator.a("fast_followers_count", jsonTwitterUser.o);
        jsonGenerator.a("favourites_count", jsonTwitterUser.s);
        jsonGenerator.a("follow_request_sent", jsonTwitterUser.y.booleanValue());
        jsonGenerator.a("followed_by", jsonTwitterUser.x.booleanValue());
        jsonGenerator.a("followers_count", jsonTwitterUser.n);
        jsonGenerator.a("following", jsonTwitterUser.v.booleanValue());
        jsonGenerator.a("friends_count", jsonTwitterUser.p);
        jsonGenerator.a("geo_enabled", jsonTwitterUser.u);
        jsonGenerator.a("has_custom_timelines", jsonTwitterUser.M);
        jsonGenerator.a("has_extended_profile", jsonTwitterUser.w);
        jsonGenerator.a("has_no_screen_name", jsonTwitterUser.X);
        jsonGenerator.a("id", jsonTwitterUser.a);
        jsonGenerator.a("url", jsonTwitterUser.h);
        jsonGenerator.a("is_lifeline_institution", jsonTwitterUser.B);
        jsonGenerator.a("protected", jsonTwitterUser.t);
        jsonGenerator.a("is_translator", jsonTwitterUser.A);
        jsonGenerator.a("lifeline_following", jsonTwitterUser.G);
        jsonGenerator.a("location", jsonTwitterUser.i);
        jsonGenerator.a("media_count", jsonTwitterUser.r);
        jsonGenerator.a("muting", jsonTwitterUser.L);
        jsonGenerator.a("name", jsonTwitterUser.b);
        jsonGenerator.a("needs_phone_verification", jsonTwitterUser.J);
        jsonGenerator.a("notifications", jsonTwitterUser.F);
        if (jsonTwitterUser.U != null) {
            jsonGenerator.a("phone");
            JsonTwitterUser$JsonUserPhone$$JsonObjectMapper._serialize(jsonTwitterUser.U, jsonGenerator, true);
        }
        List<Long> list = jsonTwitterUser.S;
        if (list != null) {
            jsonGenerator.a("pinned_tweet_ids");
            jsonGenerator.a();
            for (Long longValue : list) {
                jsonGenerator.a(longValue.longValue());
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("profile_background_color", jsonTwitterUser.k);
        jsonGenerator.a("profile_banner_url", jsonTwitterUser.e);
        jsonGenerator.a("profile_image_url_https", jsonTwitterUser.d);
        jsonGenerator.a("profile_link_color", jsonTwitterUser.l);
        if (jsonTwitterUser.R != null) {
            LoganSquare.typeConverterFor(TwitterPlace.class).serialize(jsonTwitterUser.R, "profile_location", true, jsonGenerator);
        }
        if (jsonTwitterUser.O != null) {
            LoganSquare.typeConverterFor(cni.class).serialize(jsonTwitterUser.O, "promoted_content", true, jsonGenerator);
        }
        jsonGenerator.a("screen_name", jsonTwitterUser.c);
        jsonGenerator.a("statuses_count", jsonTwitterUser.q);
        jsonGenerator.a("suspended", jsonTwitterUser.C);
        jsonGenerator.a("url_https", jsonTwitterUser.g);
        jsonGenerator.a("verified", jsonTwitterUser.z);
        jsonGenerator.a("want_retweets", jsonTwitterUser.H);
        if (z) {
            jsonGenerator.d();
        }
    }
}
