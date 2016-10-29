package com.twitter.model.json.businessprofiles;

import cgl;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.h;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonAppWithCard extends e<com.twitter.model.businessprofiles.e> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public cgl d;

    public /* synthetic */ f c() {
        return a();
    }

    public h a() {
        return new h().a(this.a).b(this.b).c(this.c).a(this.d);
    }
}
