package com.twitter.model.json.profiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.profile.d;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonVineProfile extends e<d> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public long c;
    @JsonField
    public boolean d;

    public /* synthetic */ f c() {
        return a();
    }

    public com.twitter.model.profile.f a() {
        return new com.twitter.model.profile.f().a(this.a).b(this.b).a(this.c).a(this.d);
    }
}
