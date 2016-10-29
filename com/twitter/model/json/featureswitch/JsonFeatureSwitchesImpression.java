package com.twitter.model.json.featureswitch;

import cin;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFeatureSwitchesImpression extends f<cin> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public Integer c;

    public /* synthetic */ Object b() {
        return a();
    }

    public cin a() {
        if (this.a == null || this.b == null || this.c == null) {
            return null;
        }
        return new cin(this.a, this.c.intValue(), this.b);
    }
}
