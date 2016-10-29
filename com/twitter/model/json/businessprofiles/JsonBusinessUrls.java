package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.al;
import com.twitter.model.businessprofiles.t;
import com.twitter.model.businessprofiles.v;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonBusinessUrls extends e<t> {
    @JsonField
    public al a;
    @JsonField
    public al b;
    @JsonField
    public al c;
    @JsonField
    public al d;
    @JsonField
    public al e;

    public /* synthetic */ f c() {
        return a();
    }

    public v a() {
        return new v().a(this.a).b(this.b).c(this.c).d(this.d).e(this.e);
    }
}
