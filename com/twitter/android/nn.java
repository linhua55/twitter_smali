package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.base.u;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import defpackage.cni;

/* compiled from: Twttr */
public class nn extends u<nn> {
    public nn(Intent intent) {
        super(intent);
    }

    public Intent a(Context context) {
        return a(context, ReportFlowWebViewActivity.class);
    }

    public static nn a(Intent intent) {
        return new nn(intent);
    }

    public nn a(Tweet tweet) {
        a(tweet.c ? tweet.s : tweet.b);
        a(tweet.m);
        this.b.putExtra("status_id", tweet.H).putExtra("is_media", tweet.l()).putExtra("promoted_content", cni.a(tweet.f)).putExtra("is_promoted", tweet.q()).putExtra("handle_api_requests", true);
        return this;
    }

    public nn a(int i) {
        this.b.putExtra("friendship", i);
        return this;
    }

    public nn a(long j) {
        this.b.putExtra("spammer_id", j);
        return this;
    }

    public long a() {
        return this.b.getLongExtra("spammer_id", 0);
    }

    public nn b(long j) {
        this.b.putExtra("moment_id", j);
        return this;
    }

    public long b() {
        return this.b.getLongExtra("moment_id", 0);
    }

    public nn a(boolean z) {
        this.b.putExtra("is_media", z);
        return this;
    }

    public nn c(long j) {
        this.b.putExtra("status_id", j);
        return this;
    }

    public nn b(boolean z) {
        this.b.putExtra("is_promoted", z);
        return this;
    }

    public long c() {
        return this.b.getLongExtra("status_id", 0);
    }

    public nn a(String str) {
        this.b.putExtra("source", str);
        return this;
    }

    public String d() {
        return (String) e.b(this.b.getStringExtra("source"), e());
    }

    public String e() {
        return c() > 0 ? "reporttweet" : "reportprofile";
    }

    public boolean f() {
        return this.b.getBooleanExtra("is_media", false);
    }

    public boolean g() {
        return this.b.getBooleanExtra("is_promoted", false);
    }

    public nn c(boolean z) {
        this.b.putExtra("handle_api_requests", z);
        return this;
    }

    public boolean h() {
        return this.b.getBooleanExtra("handle_api_requests", false);
    }

    public cni i() {
        return cni.a(this.b.getByteArrayExtra("promoted_content"));
    }
}
