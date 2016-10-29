package com.twitter.model.json.card;

import bbn;
import cgh;
import cgl;
import cgn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.f;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCardInstanceData extends f<cgl> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public Map<String, TwitterUser> c;
    @JsonField
    public JsonCardPlatform d;
    @JsonField
    public Map<String, cgh> e;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonAudience extends b {
        @JsonField
        public String a;
        @JsonField
        public String b;
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonCardPlatform extends b {
        @JsonField
        public JsonPlatform a;
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonPlatform extends b {
        @JsonField
        public JsonAudience a;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public cgl a() {
        cgn cgn = new cgn();
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("Invalid name field for card instance data"));
            return null;
        }
        cgn.a(this.a);
        if (this.b != null) {
            try {
                cgn.b(a.a(this.b));
            } catch (Throwable e) {
                bbn.a(e);
                return null;
            }
        }
        if (this.c != null) {
            cgn.b(this.c);
        }
        if (this.e != null) {
            cgn.a(a(this.e));
        }
        if (!(this.d == null || this.d.a == null || this.d.a.a == null)) {
            JsonAudience jsonAudience = this.d.a.a;
            cgn.c(jsonAudience.a);
            cgn.d(jsonAudience.b);
        }
        return (cgl) cgn.q();
    }

    private HashMap<String, cgh> a(Map<String, cgh> map) {
        HashMap<String, cgh> hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            if (entry.getValue() != null) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }
}
