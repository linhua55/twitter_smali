package com.twitter.model.json.moments;

import cni;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.common.e;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.ad;
import com.twitter.model.moments.o;
import com.twitter.util.object.f;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMoment extends e<ab> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public boolean d;
    @JsonField(name = {"sensitive"})
    public boolean e;
    @JsonField
    public String f;
    @JsonField
    public String g;
    @JsonField
    public String h;
    @JsonField
    public String i;
    @JsonField
    public boolean j;
    @JsonField
    public boolean k;
    @JsonField
    public int l;
    @JsonField
    public String m;
    @JsonField
    public a n;
    @JsonField
    public cni o;
    @JsonField
    public o p;
    @JsonField
    public long q;
    @JsonField
    public Map<String, TwitterUser> r;

    public /* synthetic */ f c() {
        return a();
    }

    public ad a() {
        return new ad().a(this.a).a(this.b).f(this.c).b(this.d).c(this.e).b(this.f).c(this.g).d(this.h).e(this.i).a(this.j).d(this.k).a(this.l).g(this.m).a(this.n).a(this.o).a(this.p).b(this.q);
    }
}
