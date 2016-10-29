package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.av;
import com.twitter.model.core.ax;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonRecommendationReason extends e<av> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public boolean c;
    @JsonField
    public boolean d;

    public /* synthetic */ f c() {
        return a();
    }

    public ax a() {
        return new ax().a(this.a).b(this.b).a(this.c).b(this.d);
    }
}
