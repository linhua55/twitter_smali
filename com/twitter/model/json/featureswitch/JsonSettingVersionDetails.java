package com.twitter.model.json.featureswitch;

import cje;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSettingVersionDetails extends f<cje> {
    @JsonField(name = {"experiments"})
    public String a;
    @JsonField(name = {"feature_switches"})
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cje a() {
        if (this.a == null || this.b == null) {
            return null;
        }
        return new cje(this.a, this.b);
    }
}
