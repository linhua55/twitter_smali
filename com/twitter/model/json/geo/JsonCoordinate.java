package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.geo.d;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCoordinate extends f<d> {
    @JsonField
    public double a;
    @JsonField
    public double b;

    public /* synthetic */ Object b() {
        return a();
    }

    public d a() {
        return new d(this.a, this.b);
    }
}
