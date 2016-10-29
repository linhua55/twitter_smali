package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.moments.i;
import com.twitter.model.moments.k;
import com.twitter.model.moments.m;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCropHint extends e<k> {
    @JsonField
    public i a;
    @JsonField(name = {"portrait_3_4"})
    public i b;
    @JsonField(name = {"portrait_9_16"})
    public i c;
    @JsonField(name = {"landscape_4_3"})
    public i d;

    public /* synthetic */ f c() {
        return a();
    }

    public m a() {
        return new m().a(this.a).b(this.b).c(this.c).d(this.d);
    }
}
