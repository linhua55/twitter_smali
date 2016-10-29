package com.twitter.app.users;

import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.widget.BaseAdapter;
import com.twitter.android.hy;
import com.twitter.android.hz;
import com.twitter.android.widget.er;
import defpackage.bdl;

/* compiled from: Twttr */
public abstract class InjectableUsersFragment<T extends o> extends UsersFragment {
    protected T a;

    public abstract T t();

    public void onCreate(Bundle bundle) {
        boolean z = true;
        super.onCreate(bundle);
        this.a = t();
        if (bundle != null) {
            this.a.b(bundle);
            if (bundle.getBoolean("fetched")) {
                z = false;
            }
        }
        this.a.a(z);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("fetched", this.a.c().j());
        this.a.a(bundle);
    }

    public void a() {
        super.a();
        this.a.a();
    }

    protected void f_(@DrawableRes int i) {
        bdl g = g(i);
        g.a(this);
        this.q = new er(null, null, new BaseAdapter[]{this.a.c(), g}, 2130968716, 1);
        ap().a(g, this.q);
    }

    hy g(@DrawableRes int i) {
        return new hy(getContext(), i, this, this.m, w(), aM(), aN(), new hz());
    }
}
