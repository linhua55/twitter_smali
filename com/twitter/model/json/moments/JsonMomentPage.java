package com.twitter.model.json.moments;

import ckz;
import clf;
import clh;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.e;
import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.af;
import com.twitter.model.moments.k;
import com.twitter.model.moments.u;
import com.twitter.model.moments.x;
import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMomentPage extends e<clf> {
    @JsonField
    public String a;
    @JsonField
    public long b;
    @JsonField
    public ckz c;
    @JsonField
    public JsonRenderData d;
    @JsonField
    public x e;
    @JsonField
    public MomentPageType f;
    @JsonField
    public u g;
    @JsonField
    public JsonMomentModule h;

    public /* synthetic */ f c() {
        return a();
    }

    public clh a() {
        af afVar = null;
        clh a = new clh().a(this.a).a((MomentPageType) com.twitter.util.object.e.b(this.f, MomentPageType.TEXT)).a(this.c);
        k a2 = (this.d == null || this.c == null) ? null : this.d.a(this.c.c);
        clh a3 = a.a(a2).a(this.d != null ? this.d.b : null).a(this.b).a(this.e).a(this.g);
        if (this.h != null) {
            afVar = this.h.d();
        }
        return a3.a(afVar);
    }

    public Map<String, cm> d() {
        if (this.h != null) {
            return com.twitter.util.object.e.a(this.h.b);
        }
        return r.e();
    }
}
