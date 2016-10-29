package com.twitter.model.core;

import android.net.Uri;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.search.TwitterUserMetadata;
import com.twitter.model.timeline.aj;
import com.twitter.util.collection.x;
import com.twitter.util.object.f;
import defpackage.bbn;
import defpackage.cht;
import defpackage.cni;

/* compiled from: Twttr */
public final class cp extends f<TwitterUser> {
    int A;
    cni B;
    long C;
    bg D;
    bg E;
    TwitterUserMetadata F;
    String G;
    String H;
    int I;
    boolean J;
    boolean K;
    int L;
    AdvertiserType M;
    aj N;
    long O;
    cht P;
    BusinessProfileState Q;
    boolean R;
    long a;
    String b;
    String c;
    String d;
    String e;
    String f;
    int g;
    int h;
    String i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    String o;
    x<TwitterPlace> p;
    boolean q;
    ExtendedProfile r;
    int s;
    int t;
    int u;
    long v;
    int w;
    int x;
    boolean y;
    long z;

    protected /* synthetic */ Object c() {
        return i();
    }

    public cp() {
        this.a = -1;
        this.x = -1;
        this.I = AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
        this.M = AdvertiserType.NONE;
        this.O = -1;
        this.Q = BusinessProfileState.NONE;
    }

    public cp(TwitterUser twitterUser) {
        this.a = -1;
        this.x = -1;
        this.I = AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
        this.M = AdvertiserType.NONE;
        this.O = -1;
        this.Q = BusinessProfileState.NONE;
        this.a = twitterUser.c;
        this.b = twitterUser.d;
        this.c = twitterUser.e;
        this.d = twitterUser.f;
        this.e = twitterUser.g;
        this.f = twitterUser.h;
        this.g = twitterUser.i;
        this.h = twitterUser.j;
        this.i = twitterUser.k;
        this.j = twitterUser.l;
        this.k = twitterUser.m;
        this.l = twitterUser.n;
        this.m = twitterUser.o;
        this.n = twitterUser.p;
        this.o = twitterUser.q;
        this.p = twitterUser.r;
        this.q = twitterUser.s;
        this.r = twitterUser.t;
        this.s = twitterUser.P;
        this.t = twitterUser.u;
        this.u = twitterUser.v;
        this.v = twitterUser.Q;
        this.w = twitterUser.w;
        this.x = twitterUser.x;
        this.y = twitterUser.y;
        this.z = twitterUser.z;
        this.A = twitterUser.A;
        this.B = twitterUser.B;
        this.C = twitterUser.C;
        this.D = twitterUser.D;
        this.E = twitterUser.E;
        this.F = twitterUser.R;
        this.G = twitterUser.G;
        this.H = twitterUser.H;
        this.I = twitterUser.S;
        this.J = twitterUser.I;
        this.K = twitterUser.J;
        this.L = twitterUser.K;
        this.M = twitterUser.L;
        this.N = twitterUser.T;
        this.P = twitterUser.F;
        this.Q = twitterUser.N;
        this.R = twitterUser.O;
    }

    public long d() {
        return this.a;
    }

    public cp a(long j) {
        this.a = j;
        return this;
    }

    public cp a(String str) {
        this.b = str;
        return this;
    }

    public cp b(String str) {
        this.c = str;
        this.d = str != null ? Uri.parse(str).getPath() : null;
        return this;
    }

    public cp c(String str) {
        this.d = str;
        return this;
    }

    public cp d(String str) {
        if (str == null || str.equals("null")) {
            str = null;
        }
        this.e = str;
        return this;
    }

    public cp e(String str) {
        if (str == null || "null".equals(str)) {
            str = null;
        }
        this.f = str;
        return this;
    }

    public cp a(int i) {
        this.g = i;
        return this;
    }

    public cp b(int i) {
        this.h = i;
        return this;
    }

    public cp f(String str) {
        this.i = str;
        return this;
    }

    public cp a(boolean z) {
        this.j = z;
        return this;
    }

    public boolean e() {
        return this.k;
    }

    public cp b(boolean z) {
        this.k = z;
        return this;
    }

    public cp c(boolean z) {
        this.l = z;
        return this;
    }

    public cp d(boolean z) {
        this.m = z;
        return this;
    }

    public cp e(boolean z) {
        this.n = z;
        return this;
    }

    public cp g(String str) {
        if (str == null || str.equals("null")) {
            str = null;
        }
        this.o = str;
        return this;
    }

    public cp a(x<TwitterPlace> xVar) {
        this.p = xVar;
        return this;
    }

    public cp a(ExtendedProfile extendedProfile) {
        this.r = extendedProfile;
        return this;
    }

    public cp f(boolean z) {
        this.q = z;
        return this;
    }

    public cp c(int i) {
        this.s = i;
        return this;
    }

    public cp d(int i) {
        this.t = i;
        return this;
    }

    public cp e(int i) {
        this.u = i;
        return this;
    }

    public cp b(long j) {
        this.v = j;
        return this;
    }

    public cp f(int i) {
        this.w = i;
        return this;
    }

    public cp g(int i) {
        this.x = i;
        return this;
    }

    public cp g(boolean z) {
        this.y = z;
        return this;
    }

    public cp c(long j) {
        this.z = j;
        return this;
    }

    public cp h(int i) {
        this.A = i;
        return this;
    }

    public cp a(cni cni) {
        this.B = cni;
        return this;
    }

    public cp d(long j) {
        this.C = j;
        return this;
    }

    public cp a(bg bgVar) {
        this.D = bgVar;
        return this;
    }

    public cp b(bg bgVar) {
        this.E = bgVar;
        return this;
    }

    public cp a(TwitterUserMetadata twitterUserMetadata) {
        this.F = twitterUserMetadata;
        return this;
    }

    public cp h(String str) {
        this.G = str;
        this.H = str != null ? Uri.parse(str).getPath() : null;
        return this;
    }

    public cp i(String str) {
        this.H = str;
        return this;
    }

    public int g() {
        return this.I;
    }

    public cp i(int i) {
        this.I = i;
        return this;
    }

    public cp h(boolean z) {
        this.J = z;
        return this;
    }

    public cp i(boolean z) {
        this.K = z;
        return this;
    }

    public int h() {
        return this.L;
    }

    public cp j(int i) {
        this.L = i;
        return this;
    }

    public cp a(AdvertiserType advertiserType) {
        this.M = advertiserType;
        return this;
    }

    public cp a(aj ajVar) {
        this.N = ajVar;
        return this;
    }

    public cp e(long j) {
        this.O = j;
        return this;
    }

    public cp a(cht cht) {
        this.P = cht;
        return this;
    }

    public cp a(BusinessProfileState businessProfileState) {
        this.Q = businessProfileState;
        return this;
    }

    public cp j(boolean z) {
        this.R = z;
        return this;
    }

    public boolean bo_() {
        return this.a > 0;
    }

    protected boolean bh_() {
        if (super.bh_()) {
            return true;
        }
        bbn.a(new IllegalStateException("Tried to build user with an invalid id."));
        return false;
    }

    protected TwitterUser i() {
        return new TwitterUser();
    }
}
