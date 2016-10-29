package com.twitter.model.json.moments;

import cks;
import clc;
import cle;
import clf;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.e;
import com.twitter.model.json.common.j;
import com.twitter.model.moments.DisplayStyle;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.af;
import com.twitter.model.moments.aj;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMomentModule extends e<clc> {
    @JsonField
    public JsonMoment a;
    @JsonField
    public Map<String, cm> b;
    @JsonField
    public List<clf> c;
    @JsonField
    public int d;
    @JsonField
    public JsonMomentPage e;
    @JsonField
    public DisplayStyle f;
    @JsonField
    public JsonMomentContext g;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonMomentContext extends b {
        @JsonField
        public String a;
        @JsonField
        public Map<String, String> b;
    }

    public /* synthetic */ f c() {
        return a();
    }

    public cle a() {
        ab abVar = (ab) this.a.a().q();
        Map map = (Map) r.d().b(this.e.d()).b(this.b).q();
        n d = n.d();
        clf clf = (clf) com.twitter.util.object.e.a(this.e.b());
        if (this.c != null) {
            d.c(cks.a(abVar.b, clf));
            for (clf c : this.c) {
                d.c(cks.c(abVar.b, c));
            }
            d.c(cks.b(abVar.b, clf));
        }
        cle a = new cle().a((ab) com.twitter.util.object.e.a(abVar)).a(j.a(map)).b(j.a(com.twitter.util.object.e.a(this.a.r))).a((List) d.q()).a(this.d).a(clf).a((DisplayStyle) com.twitter.util.object.e.b(this.f, DisplayStyle.LIST));
        if (this.g != null) {
            a.a(this.g.a).a(new aj(com.twitter.util.object.e.a(this.g.b)));
        }
        return a;
    }

    public af d() {
        clf clf = (clf) this.e.b();
        if (clf != null) {
            return new af((ab) this.a.a().q(), clf);
        }
        return null;
    }
}
