package com.twitter.android.av.revenue;

import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class i {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private long i;
    private Tweet j;

    private i() {
    }

    public i a(String str) {
        this.a = str;
        return this;
    }

    public i b(String str) {
        this.b = str;
        return this;
    }

    public i c(String str) {
        this.c = str;
        return this;
    }

    public i d(String str) {
        this.d = str;
        return this;
    }

    public i e(String str) {
        this.e = str;
        return this;
    }

    public i f(String str) {
        this.f = str;
        return this;
    }

    public i g(String str) {
        this.g = str;
        return this;
    }

    public i h(String str) {
        this.h = str;
        return this;
    }

    public i a(long j) {
        this.i = j;
        return this;
    }

    public i a(Tweet tweet) {
        this.j = tweet;
        return this;
    }

    public VideoConversationCardData a() {
        return new VideoConversationCardData(this, null);
    }
}
