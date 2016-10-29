package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.twitter.android.widget.RetweetDialogFragment;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class nq {
    private final Tweet a;
    private final FragmentActivity b;
    private final Fragment c;
    private final nu d;
    private final int e;
    private final boolean f;
    private final boolean g;

    private nq(nt ntVar) {
        this.e = ntVar.c;
        this.f = ntVar.d;
        this.a = ntVar.a;
        this.b = ntVar.b;
        this.c = ntVar.e;
        this.d = ntVar.f;
        this.g = ntVar.g;
    }

    public void a() {
        RetweetDialogFragment a = RetweetDialogFragment.a(this.e, bg.a().c().g(), this.a, this.a.d, this.f, this.g, this.b);
        if (this.c != null) {
            a.a(this.c);
        }
        if (this.d != null) {
            a.a(this.d);
        }
        this.b.getSupportFragmentManager().beginTransaction().add(a, null).commitAllowingStateLoss();
    }

    public void b() {
        FragmentManager supportFragmentManager = this.b.getSupportFragmentManager();
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        if (((RetweetDialogFragment) supportFragmentManager.findFragmentByTag("retweet_confirm_fragment")) == null) {
            RetweetDialogFragment a = RetweetDialogFragment.a(this.e, bg.a().c().g(), this.a, false, this.f, this.g, this.b);
            beginTransaction.add(a, "retweet_confirm_fragment");
            if (this.c != null) {
                a.a(this.c);
            }
            if (this.d != null) {
                a.a(this.d);
            }
            a.a(new nr(this));
            a.a(new ns(this));
        }
        beginTransaction.commitAllowingStateLoss();
    }
}
