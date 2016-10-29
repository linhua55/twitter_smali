package com.twitter.model.timeline;

import android.text.format.Time;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.bg;
import com.twitter.model.core.t;
import com.twitter.util.aj;
import com.twitter.util.collection.r;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import java.util.Map;

/* compiled from: Twttr */
public class s implements t {
    private static final Map<String, TweetActionType> A;
    public static final d<s, u> a;
    private final Time B;
    private boolean C;
    public final String b;
    public final int c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final int j;
    public final String k;
    public final bg l;
    public final bg m;
    public final String n;
    public long o;
    public int p;
    public boolean q;
    public final String r;
    public final boolean s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final String z;

    static {
        a = new v();
        A = (Map) r.a(5).b("reply_action", TweetActionType.Reply).b("favorite_action", TweetActionType.Favorite).b("retweet_action", TweetActionType.Retweet).b("follow_action", TweetActionType.Follow).b("share_privately_action", TweetActionType.ShareViaDM).q();
    }

    private s(u uVar) {
        this.B = new Time();
        this.b = uVar.a;
        this.c = uVar.b;
        this.d = uVar.c;
        this.e = uVar.d;
        this.f = uVar.e;
        this.g = uVar.f;
        this.h = uVar.g;
        this.i = uVar.h;
        this.j = uVar.i;
        this.k = uVar.j;
        this.l = uVar.k;
        this.m = uVar.l;
        this.n = uVar.m;
        this.o = uVar.n;
        this.p = uVar.o;
        this.r = uVar.q;
        this.s = uVar.r;
        this.t = uVar.s;
        this.u = uVar.t;
        this.v = uVar.u;
        this.w = uVar.v;
        this.x = uVar.w;
        this.y = uVar.x;
        this.z = uVar.y;
    }

    public long bf_() {
        return (long) this.c;
    }

    public String bg_() {
        return String.valueOf(this.c);
    }

    public String toString() {
        return "text=" + this.b + ", header=" + this.e + ", actionText=" + this.f + ", actionUrl=" + this.g + ", trigger=" + this.h + ", icon=" + this.i + ", format=" + this.d + ", backgroundImageUrl=" + this.k + ", persistence=" + this.j + ", entities=" + this.l + ", headerEntities=" + this.m + ", id=" + this.c + ", template=" + this.n + ", statusId=" + this.o + ", insertionIndex=" + this.p + ", tooltipTarget=" + this.r + ", mDeadline=" + this.B + ", isAppGraphPrompt=" + this.s + ", selectionAlgo=" + this.t + ", clientExperimentKey=" + this.u + ", clientExperimentBucket=" + this.v + ", displayLocation=" + this.w + ", email=" + this.x + ", typoCorrectedEmail=" + this.y + ", phoneNumber=" + this.z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        if (this.c == sVar.c && aj.a(this.e, sVar.e) && aj.a(this.g, sVar.g) && aj.a(this.f, sVar.f) && aj.a(this.h, sVar.h) && aj.a(this.k, sVar.k) && this.s == sVar.s && aj.a(this.t, sVar.t) && aj.a(this.u, sVar.u) && aj.a(this.v, sVar.v) && aj.a(this.w, sVar.w) && aj.a(this.x, sVar.x) && aj.a(this.y, sVar.y)) {
            return aj.a(this.z, sVar.z);
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{Integer.valueOf(this.c), this.e, this.f, this.f, this.h, this.k, Boolean.valueOf(this.s), this.t, this.u, this.v, this.w, this.x, this.y, this.z});
    }

    public boolean c() {
        Time time = new Time();
        time.setToNow();
        return time.after(this.B);
    }

    public void d() {
        this.B.setToNow();
        Time time = this.B;
        time.second += this.j;
        this.B.normalize(false);
    }

    public boolean e() {
        return aj.b(this.u) && aj.b(this.v);
    }

    public boolean f() {
        return "fullscreen_takeover".equals(this.n);
    }

    public boolean g() {
        return "inline_tooltip_prompt".equals(this.n);
    }

    public boolean h() {
        return this.s;
    }

    public boolean i() {
        return "inline_prompt".equals(this.n);
    }

    public TweetActionType j() {
        if (A.containsKey(this.r)) {
            return (TweetActionType) A.get(this.r);
        }
        return TweetActionType.None;
    }

    public void k() {
        this.q = true;
    }

    public void a(boolean z) {
        this.C = z;
    }

    public boolean l() {
        return this.C;
    }

    public boolean m() {
        return !(c() && l()) && aj.b(this.b);
    }
}
