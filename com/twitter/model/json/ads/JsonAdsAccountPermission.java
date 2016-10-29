package com.twitter.model.json.ads;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.ads.a;
import com.twitter.model.ads.h;
import com.twitter.model.json.common.JsonModelRegistry;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonAdsAccountPermission extends e<com.twitter.model.ads.e> {
    @JsonField
    public Map<String, List<a>> a;

    public /* synthetic */ f c() {
        return a();
    }

    public h a() {
        h hVar = new h();
        if (this.a != null) {
            for (Entry entry : this.a.entrySet()) {
                try {
                    long parseLong = Long.parseLong((String) entry.getKey());
                    for (a a : (List) entry.getValue()) {
                        hVar.a(parseLong, a);
                    }
                } catch (NumberFormatException e) {
                }
            }
        }
        return hVar;
    }

    public static JsonAdsAccountPermission a(JsonParser jsonParser) {
        try {
            JsonModelRegistry.a();
            JsonAdsAccountPermission jsonAdsAccountPermission = new JsonAdsAccountPermission();
            JsonAdsAccountPermission$$JsonObjectMapper.parseField(jsonAdsAccountPermission, "promotableUsers", jsonParser);
            return jsonAdsAccountPermission;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }
}
