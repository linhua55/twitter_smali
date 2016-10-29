package com.twitter.library.av;

import android.content.Context;
import android.os.Bundle;
import bqk;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import java.util.Map;

/* compiled from: Twttr */
public class e {
    public Context a;
    public TwitterScribeAssociation b;
    public String c;
    public AVMediaPlaylist d;
    public AVMedia e;
    public Map<String, String> f;
    public int g;
    public boolean h;
    public int i;
    public String j;
    public Boolean k;
    public String l;
    public Long m;
    public bqk n;
    public Long o;
    public Bundle p;
    public Long q;
    public String r;

    public e a(Context context) {
        this.a = context;
        return this;
    }

    public e a(TwitterScribeAssociation twitterScribeAssociation) {
        this.b = twitterScribeAssociation;
        return this;
    }

    public e a(String str) {
        this.c = str;
        return this;
    }

    public e a(AVMediaPlaylist aVMediaPlaylist) {
        this.d = aVMediaPlaylist;
        return this;
    }

    public e a(AVMedia aVMedia) {
        this.e = aVMedia;
        return this;
    }

    public e a(Map<String, String> map) {
        this.f = map;
        return this;
    }

    public e a(int i) {
        this.g = i;
        return this;
    }

    public e a(boolean z) {
        this.h = z;
        return this;
    }

    public e b(int i) {
        if (i >= 0 && i <= 100) {
            this.i = i;
        }
        return this;
    }

    public e b(String str) {
        this.j = str;
        return this;
    }

    public e a(Boolean bool) {
        this.k = bool;
        return this;
    }

    public e c(String str) {
        this.l = str;
        return this;
    }

    public e a(Long l) {
        this.m = l;
        return this;
    }

    public e a(bqk bqk) {
        this.n = bqk;
        return this;
    }

    public e b(Long l) {
        this.o = l;
        return this;
    }

    public e a(Bundle bundle) {
        this.p = bundle;
        return this;
    }

    public e c(Long l) {
        this.q = l;
        return this;
    }

    public e d(String str) {
        this.r = str;
        return this;
    }

    public c a() {
        return new c();
    }
}
