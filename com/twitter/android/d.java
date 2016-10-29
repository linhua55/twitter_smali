package com.twitter.android;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
public class d extends c {
    private final Animation a;
    private final Animation b;
    private final View c;
    private final e d;
    private Account e;

    public d(Context context, View view, e eVar) {
        this.a = AnimationUtils.loadAnimation(context, 2131034190);
        this.b = AnimationUtils.loadAnimation(context, 2131034191);
        this.b.setAnimationListener(this);
        this.c = view;
        this.d = eVar;
    }

    public void a(Account account) {
        this.e = account;
        this.c.startAnimation(this.b);
    }

    public void onAnimationEnd(Animation animation) {
        if (this.d != null) {
            this.d.a(this.e.name);
        }
        this.c.startAnimation(this.a);
        this.e = null;
    }
}
