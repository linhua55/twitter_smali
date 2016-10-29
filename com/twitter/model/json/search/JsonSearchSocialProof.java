package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.ck;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.e;
import com.twitter.model.json.core.c;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.f;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSearchSocialProof extends e<TwitterSocialProof> {
    static final /* synthetic */ boolean d;
    @JsonField
    public Map<String, Users> a;
    @JsonField
    public boolean b;
    @JsonField
    public boolean c;

    @JsonObject
    /* compiled from: Twttr */
    public class Users extends b {
        @JsonField
        public Name[] a;

        @JsonObject
        /* compiled from: Twttr */
        public class Name extends b {
            @JsonField
            public String a;
        }
    }

    static {
        d = !JsonSearchSocialProof.class.desiredAssertionStatus();
    }

    public /* synthetic */ f c() {
        return a();
    }

    public ck a() {
        ck ckVar = new ck();
        if (this.b) {
            ckVar.f(1);
            ckVar.a(26);
        }
        if (this.c) {
            ckVar.f(2);
        }
        if (this.b && this.c) {
            ckVar.a(25);
        }
        if (!CollectionUtils.b(this.a)) {
            String str = (String) CollectionUtils.b(this.a.keySet());
            if (d || str != null) {
                int i = ((com.twitter.model.json.core.b) c.a.getFromString(str)).b;
                if (i != -1) {
                    ckVar.a(i);
                    Users users = (Users) this.a.get(str);
                    if (users != null) {
                        Name name = (Name) CollectionUtils.c(users.a);
                        ckVar.a(name != null ? name.a : null);
                    }
                }
            } else {
                throw new AssertionError();
            }
        }
        return ckVar;
    }
}
