package com.twitter.model.json.featureswitch;

import cik;
import ciu;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.n;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFeatureSwitchesParameter extends f<cik> {
    @JsonField
    public String a;
    @JsonField(name = {"default"})
    public JsonFeatureSwitchesValueObject b;
    @JsonField
    public List<ciu> c;

    public /* synthetic */ Object b() {
        return a();
    }

    public JsonFeatureSwitchesParameter() {
        this.c = n.g();
    }

    public cik a() {
        if (this.a == null) {
            return null;
        }
        Object obj;
        if (this.b == null || this.b.a == null) {
            obj = null;
        } else {
            obj = this.b.a.a;
        }
        n d = n.d();
        for (ciu ciu : this.c) {
            d.c(ciu.a);
        }
        return new cik(this.a, obj, (List) d.q());
    }
}
