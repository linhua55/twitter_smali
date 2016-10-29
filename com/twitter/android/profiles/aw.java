package com.twitter.android.profiles;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import com.twitter.android.io;
import com.twitter.android.kr;
import com.twitter.android.metrics.d;
import com.twitter.android.mt;
import com.twitter.android.my;
import com.twitter.library.client.bg;
import com.twitter.library.provider.dg;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class aw extends al {
    private final d f;
    private final boolean g;

    public aw(FragmentActivity fragmentActivity, bg bgVar, ao aoVar, TwitterScribeAssociation twitterScribeAssociation, d dVar, boolean z) {
        super(fragmentActivity, bgVar, aoVar, twitterScribeAssociation);
        this.f = dVar;
        this.g = z;
    }

    protected Uri c() {
        return dg.w;
    }

    protected int d() {
        return 10;
    }

    protected int e() {
        return 3;
    }

    protected int f() {
        return 6;
    }

    protected void i() {
    }

    public mt b() {
        if (this.e == null) {
            int i = (io.a() || this.a.d()) ? 2130837689 : 0;
            my myVar = new my(this.c, i, this, this.b.c(), true, false, this.g);
            myVar.a((kr) this);
            int i2 = 3;
            if (this.g) {
                i2 = 35;
            }
            this.e = new mt(this.c, myVar, d(), i2);
            this.e.a(this.b.a(), this.b.b());
        }
        return this.e;
    }

    protected void h() {
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.e.c(i)) {
            Intent intent = (Intent) this.e.getItem(i);
            if (intent != null) {
                this.c.startActivity(intent);
                return;
            }
            return;
        }
        super.onItemClick(adapterView, view, i, j);
    }

    protected int g() {
        return 2;
    }

    protected String j() {
        return "similar_to";
    }

    protected void l() {
        if (this.f != null) {
            this.f.a(2);
        }
    }
}
