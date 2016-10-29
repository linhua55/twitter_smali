package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.livepipeline.g;
import com.twitter.model.livepipeline.h;
import com.twitter.model.livepipeline.i;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSubscriptionEventBuilder extends e<h> {
    @JsonField
    public g[] a;

    public /* synthetic */ f c() {
        return a();
    }

    public i a() {
        return new i().a(this.a);
    }
}
