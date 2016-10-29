package com.twitter.model.json.ads;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.ads.a;
import com.twitter.model.ads.d;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonAdsAccount extends e<a> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public int c;
    @JsonField
    public boolean d;
    @JsonField
    public boolean e;
    @JsonField
    public boolean f;

    public /* synthetic */ f c() {
        return a();
    }

    public d a() {
        return new d().a(this.a).a(this.b).a(this.c).a(this.d).b(this.e).c(this.f);
    }
}
