package com.twitter.library.client;

import com.twitter.media.model.MediaFile;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
public class av {
    public final MediaFile a;
    public final MediaFile b;
    public final boolean c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final x<TwitterPlace> h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    public final ExtendedProfile l;
    public final boolean m;
    public int n;

    public av(MediaFile mediaFile, MediaFile mediaFile2, boolean z) {
        this.a = mediaFile;
        this.b = mediaFile2;
        this.c = z;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = x.a();
        this.i = false;
        this.n = -1;
        this.j = false;
        this.k = false;
        this.l = null;
        this.m = false;
    }

    public av(boolean z) {
        this.a = null;
        this.b = null;
        this.c = false;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = x.a();
        this.i = true;
        this.n = -1;
        this.j = false;
        this.k = false;
        this.l = null;
        this.m = z;
    }

    public av(MediaFile mediaFile, MediaFile mediaFile2, boolean z, String str, String str2, String str3, String str4, x<TwitterPlace> xVar, boolean z2, boolean z3, ExtendedProfile extendedProfile) {
        this.a = mediaFile;
        this.b = mediaFile2;
        this.c = z;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = xVar;
        this.i = true;
        this.n = -1;
        this.j = z2;
        this.k = z3;
        this.l = extendedProfile;
        this.m = false;
    }

    public TwitterUser a(TwitterUser twitterUser) {
        cp cpVar = new cp(twitterUser);
        cpVar.a(this.d).g(this.g).a(this.h);
        if (this.a != null) {
            cpVar.b(this.a.a().toString());
        }
        if (this.c) {
            cpVar.h(null);
        } else if (this.b != null) {
            cpVar.h(this.b.a().toString());
        }
        if (this.j) {
            cpVar.d(this.e);
        }
        if (this.k) {
            cpVar.e(this.f);
        }
        cpVar.a(this.l);
        return (TwitterUser) cpVar.q();
    }
}
