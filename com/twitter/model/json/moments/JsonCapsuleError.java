package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.moments.d;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCapsuleError extends e<d> {
    @JsonField
    public int a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonCapsuleError() {
        this.a = -1;
    }

    public com.twitter.model.moments.e a() {
        return new com.twitter.model.moments.e().a(this.a).a(this.b).b(this.c).c(this.d).d(this.e).e(this.f);
    }
}
