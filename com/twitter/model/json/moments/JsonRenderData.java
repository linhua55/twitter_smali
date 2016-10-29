package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.moments.ax;
import com.twitter.model.moments.k;
import com.twitter.model.moments.m;
import com.twitter.util.math.Size;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonRenderData extends b {
    @JsonField
    public m a;
    @JsonField
    public ax b;
    @JsonField
    public boolean c;

    public k a(Size size) {
        if (this.a == null) {
            return (k) new m().a(this.c).q();
        }
        return (k) this.a.a(size).a(this.c).q();
    }
}
