package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.livepipeline.g;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSubscriptionError extends f<g> {
    @JsonField
    public String a;
    @JsonField
    public int b;
    @JsonField
    public String c;

    public /* synthetic */ Object b() {
        return a();
    }

    public g a() {
        return new g(this.a, this.b, this.c);
    }
}
