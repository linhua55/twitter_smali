package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class nt {
    final Tweet a;
    final FragmentActivity b;
    int c;
    boolean d;
    Fragment e;
    nu f;
    boolean g;

    public nt(FragmentActivity fragmentActivity, Tweet tweet) {
        this.a = tweet;
        this.b = fragmentActivity;
    }

    public nt a(int i) {
        this.c = i;
        return this;
    }

    public nt a(Fragment fragment) {
        this.e = fragment;
        return this;
    }

    public nt a(nu nuVar) {
        this.f = nuVar;
        return this;
    }

    public nq a() {
        return new nq();
    }
}
