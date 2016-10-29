package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.model.json.common.e;
import com.twitter.util.al;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterAccountUser extends e<TwitterUser> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField(name = {"url_https"})
    public String g;
    @JsonField
    public String h;
    @JsonField
    public String i;
    @JsonField
    public int j;
    @JsonField
    public int k;
    @JsonField
    public int l;
    @JsonField
    public int m;
    @JsonField
    public int n;
    @JsonField(name = {"protected"})
    public boolean o;
    @JsonField
    public boolean p;
    @JsonField
    public boolean q;
    @JsonField
    public boolean r;
    @JsonField
    public boolean s;
    @JsonField
    public boolean t;
    @JsonField
    public boolean u;
    @JsonField(name = {"has_extended_profile"})
    public boolean v;

    public JsonTwitterAccountUser() {
        this.n = -1;
    }

    public f<TwitterUser> c() {
        boolean z;
        cp h = new cp().a(this.a).a(this.b).f(this.c).b(this.d).h(this.e).d(this.f).e(this.g).g(this.h).e(this.l).c(this.j).d(this.k).f(this.m).g(this.n).g(this.p).b(this.o).e(this.s).c(this.q).d(this.r).a(this.t).h(this.u);
        if (this.v) {
            z = false;
        } else {
            z = true;
        }
        cp f = h.f(z);
        try {
            f.b(Long.parseLong(this.i));
        } catch (NumberFormatException e) {
            f.b(al.a(al.b, this.i));
        }
        return f;
    }

    public static JsonTwitterAccountUser a(TwitterUser twitterUser) {
        JsonTwitterAccountUser jsonTwitterAccountUser = new JsonTwitterAccountUser();
        jsonTwitterAccountUser.a = twitterUser.bf_();
        jsonTwitterAccountUser.b = twitterUser.d;
        jsonTwitterAccountUser.c = twitterUser.k;
        jsonTwitterAccountUser.d = twitterUser.e;
        jsonTwitterAccountUser.e = twitterUser.G;
        jsonTwitterAccountUser.f = twitterUser.g;
        jsonTwitterAccountUser.g = twitterUser.h;
        jsonTwitterAccountUser.h = twitterUser.q;
        jsonTwitterAccountUser.i = Long.toString(twitterUser.Q);
        jsonTwitterAccountUser.l = twitterUser.v;
        jsonTwitterAccountUser.j = twitterUser.P;
        jsonTwitterAccountUser.k = twitterUser.u;
        jsonTwitterAccountUser.m = twitterUser.w;
        jsonTwitterAccountUser.n = twitterUser.x;
        jsonTwitterAccountUser.p = twitterUser.y;
        jsonTwitterAccountUser.o = twitterUser.m;
        jsonTwitterAccountUser.s = twitterUser.p;
        jsonTwitterAccountUser.q = twitterUser.n;
        jsonTwitterAccountUser.r = twitterUser.o;
        jsonTwitterAccountUser.t = twitterUser.l;
        jsonTwitterAccountUser.u = twitterUser.I;
        jsonTwitterAccountUser.v = !twitterUser.s;
        return jsonTwitterAccountUser;
    }
}
