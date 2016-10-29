package com.twitter.model.json.device;

import chs;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonDevice extends f<chs> {
    @JsonField
    public String a;
    @JsonField
    public boolean b;

    public /* synthetic */ Object b() {
        return a();
    }

    public chs a() {
        return this.a == null ? null : new chs(this.a, this.b);
    }
}
