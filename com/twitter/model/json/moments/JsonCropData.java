package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.moments.g;
import com.twitter.model.moments.i;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCropData extends e<g> {
    @JsonField
    public int a;
    @JsonField
    public int b;
    @JsonField
    public int c;
    @JsonField
    public int d;

    public /* synthetic */ f c() {
        return a();
    }

    public i a() {
        return new i().a(this.a).b(this.b).c(this.c).d(this.d);
    }
}
