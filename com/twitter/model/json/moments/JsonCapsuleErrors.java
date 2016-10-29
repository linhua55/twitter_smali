package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.d;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCapsuleErrors extends f<com.twitter.model.moments.f> {
    @JsonField
    public List<d> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public com.twitter.model.moments.f a() {
        return new com.twitter.model.moments.f(this.a);
    }
}
