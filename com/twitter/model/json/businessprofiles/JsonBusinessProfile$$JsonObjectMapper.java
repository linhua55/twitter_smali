package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.businessprofiles.KeyEngagementType;
import com.twitter.model.businessprofiles.e;
import com.twitter.model.businessprofiles.i;
import com.twitter.model.businessprofiles.q;
import com.twitter.model.businessprofiles.t;
import com.twitter.model.businessprofiles.x;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonBusinessProfile$$JsonObjectMapper extends JsonMapper<JsonBusinessProfile> {
    public JsonBusinessProfile parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBusinessProfile _parse(JsonParser jsonParser) throws IOException {
        JsonBusinessProfile jsonBusinessProfile = new JsonBusinessProfile();
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
            parseField(jsonBusinessProfile, e, jsonParser);
            jsonParser.c();
        }
        return jsonBusinessProfile;
    }

    public static void parseField(JsonBusinessProfile jsonBusinessProfile, String str, JsonParser jsonParser) throws IOException {
        if ("app_android".equals(str)) {
            jsonBusinessProfile.d = (e) LoganSquare.typeConverterFor(e.class).parse(jsonParser);
        } else if ("business_hours".equals(str)) {
            jsonBusinessProfile.c = (i) LoganSquare.typeConverterFor(i.class).parse(jsonParser);
        } else if ("business_response_data".equals(str)) {
            jsonBusinessProfile.g = (q) LoganSquare.typeConverterFor(q.class).parse(jsonParser);
        } else if ("business_urls".equals(str)) {
            jsonBusinessProfile.f = (t) LoganSquare.typeConverterFor(t.class).parse(jsonParser);
        } else if ("contact_info".equals(str)) {
            jsonBusinessProfile.b = (x) LoganSquare.typeConverterFor(x.class).parse(jsonParser);
        } else if ("key_engagement_type".equals(str)) {
            jsonBusinessProfile.e = (KeyEngagementType) LoganSquare.typeConverterFor(KeyEngagementType.class).parse(jsonParser);
        } else if ("user_id".equals(str)) {
            jsonBusinessProfile.a = jsonParser.p();
        }
    }

    public void serialize(JsonBusinessProfile jsonBusinessProfile, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBusinessProfile, jsonGenerator, z);
    }

    public static void _serialize(JsonBusinessProfile jsonBusinessProfile, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonBusinessProfile.d != null) {
            LoganSquare.typeConverterFor(e.class).serialize(jsonBusinessProfile.d, "app_android", true, jsonGenerator);
        }
        if (jsonBusinessProfile.c != null) {
            LoganSquare.typeConverterFor(i.class).serialize(jsonBusinessProfile.c, "business_hours", true, jsonGenerator);
        }
        if (jsonBusinessProfile.g != null) {
            LoganSquare.typeConverterFor(q.class).serialize(jsonBusinessProfile.g, "business_response_data", true, jsonGenerator);
        }
        if (jsonBusinessProfile.f != null) {
            LoganSquare.typeConverterFor(t.class).serialize(jsonBusinessProfile.f, "business_urls", true, jsonGenerator);
        }
        if (jsonBusinessProfile.b != null) {
            LoganSquare.typeConverterFor(x.class).serialize(jsonBusinessProfile.b, "contact_info", true, jsonGenerator);
        }
        if (jsonBusinessProfile.e != null) {
            LoganSquare.typeConverterFor(KeyEngagementType.class).serialize(jsonBusinessProfile.e, "key_engagement_type", true, jsonGenerator);
        }
        jsonGenerator.a("user_id", jsonBusinessProfile.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
