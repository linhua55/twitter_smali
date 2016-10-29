package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.a;
import com.twitter.model.geo.d;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonAddress extends e<a> {
    @JsonField(name = {"address_line_1"})
    public String a;
    @JsonField(name = {"address_line_2"})
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField
    public String g;
    @JsonField
    public d h;

    public /* synthetic */ f c() {
        return a();
    }

    public com.twitter.model.businessprofiles.d a() {
        return new com.twitter.model.businessprofiles.d().a(this.a).b(this.b).c(this.c).d(this.d).e(this.e).f(this.f).g(this.g).a(this.h);
    }
}
