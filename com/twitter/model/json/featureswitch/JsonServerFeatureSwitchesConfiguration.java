package com.twitter.model.json.featureswitch;

import bbn;
import cib;
import cin;
import ciq;
import cis;
import ciz;
import cjb;
import cje;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.e;
import com.twitter.util.collection.ar;
import com.twitter.util.object.f;
import java.util.Set;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonServerFeatureSwitchesConfiguration extends e<ciz> {
    @JsonField
    public cib a;
    @JsonField
    public Set<cin> b;
    @JsonField
    public Set<String> c;
    @JsonField
    public cje d;

    public /* synthetic */ f c() {
        return a();
    }

    public cjb a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("Invalid feature switch Configs"));
            return new cjb();
        }
        cis a = new cis().a(this.a.a).a(this.b);
        if (this.d != null) {
            a.a(this.d.b).b(this.d.c);
        }
        return new cjb().a((ciq) a.q()).a(ar.a(this.c));
    }
}
