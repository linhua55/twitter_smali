package com.twitter.model.json.featureswitch;

import cij;
import cik;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.r;
import java.util.List;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFeatureSwitchesFacet extends f<cij> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public boolean d;
    @JsonField
    public List<cik> e;

    public /* synthetic */ Object b() {
        return a();
    }

    public cij a() {
        r d = r.d();
        if (this.e != null) {
            for (cik cik : this.e) {
                d.b(cik.a, cik);
            }
        }
        return new cij(this.a, this.b, this.c, this.d, (Map) d.q());
    }
}
