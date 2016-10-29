package com.twitter.model.json.moments.sports;

import cll;
import cln;
import clp;
import clr;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMomentSportsEvent extends e<cll> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public List<String> c;
    @JsonField
    public long d;
    @JsonField
    public List<clp> e;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonParticipantScore extends f<clp> {
        @JsonField
        public clr a;
        @JsonField
        public String b;

        public /* synthetic */ Object b() {
            return a();
        }

        public clp a() {
            return this.a != null ? new clp(this.a, com.twitter.util.object.e.b(this.b)) : null;
        }
    }

    public /* synthetic */ com.twitter.util.object.f c() {
        return a();
    }

    public cln a() {
        return new cln().a(this.a).b(this.b).a(this.c).a(this.d).b(this.e);
    }
}
