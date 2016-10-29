package com.twitter.model.json.profiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.model.profile.b;
import com.twitter.model.profile.d;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonExtendedProfile extends e<ExtendedProfile> {
    @JsonField
    public long a;
    @JsonField
    public JsonBirthdate b;
    @JsonField
    public d c;

    public /* synthetic */ f c() {
        return a();
    }

    public b a() {
        int i;
        int i2 = 0;
        if (this.b == null) {
            i = 1;
        } else {
            i = 0;
        }
        b b = new b().a(this.a).a(i != 0 ? 0 : this.b.a).b(i != 0 ? 0 : this.b.b);
        if (i == 0) {
            i2 = this.b.c;
        }
        return b.c(i2).a(i != 0 ? Visibility.e : this.b.d).b(i != 0 ? Visibility.e : this.b.e).a(this.c);
    }
}
