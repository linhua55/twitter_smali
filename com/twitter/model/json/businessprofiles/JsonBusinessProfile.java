package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.KeyEngagementType;
import com.twitter.model.businessprofiles.i;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.businessprofiles.o;
import com.twitter.model.businessprofiles.q;
import com.twitter.model.businessprofiles.t;
import com.twitter.model.businessprofiles.x;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonBusinessProfile extends e<m> {
    @JsonField
    public long a;
    @JsonField
    public x b;
    @JsonField
    public i c;
    @JsonField
    public com.twitter.model.businessprofiles.e d;
    @JsonField
    public KeyEngagementType e;
    @JsonField
    public t f;
    @JsonField
    public q g;

    public /* synthetic */ f c() {
        return a();
    }

    public o a() {
        return new o().a(this.a).a(this.b).a(this.c).a(this.d).a((KeyEngagementType) com.twitter.util.object.e.b(this.e, KeyEngagementType.NONE)).a(this.f).a(this.g);
    }
}
