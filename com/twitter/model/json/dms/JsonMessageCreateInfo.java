package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.dms.ay;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMessageCreateInfo extends f<ay> {
    @JsonField
    public long a;
    @JsonField
    public long b;

    public /* synthetic */ Object b() {
        return a();
    }

    public ay a() {
        return new ay(this.a, this.b);
    }
}
