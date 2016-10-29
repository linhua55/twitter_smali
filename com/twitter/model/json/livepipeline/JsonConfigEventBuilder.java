package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.livepipeline.a;
import com.twitter.model.livepipeline.b;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonConfigEventBuilder extends e<a> {
    @JsonField
    public String a;
    @JsonField
    public Long b;

    public /* synthetic */ f c() {
        return a();
    }

    public b a() {
        return new b().a(this.a).a(this.b);
    }
}
