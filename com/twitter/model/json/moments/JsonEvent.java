package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.moments.o;
import com.twitter.model.moments.q;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonEvent extends e<o> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ f c() {
        return a();
    }

    public q a() {
        return new q().a(this.a).b(this.b);
    }
}
