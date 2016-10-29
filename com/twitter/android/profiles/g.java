package com.twitter.android.profiles;

import android.database.Cursor;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.Loader;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver;
import android.widget.ListView;
import com.twitter.android.mt;
import com.twitter.android.my;
import com.twitter.android.widget.do;
import com.twitter.library.client.bg;
import com.twitter.library.provider.dg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import defpackage.bcx;

/* compiled from: Twttr */
public class g extends al implements OnClickListener, f {
    private final do f;
    private final ListView g;
    private final View h;

    public g(FragmentActivity fragmentActivity, bg bgVar, ao aoVar, TwitterScribeAssociation twitterScribeAssociation, View view) {
        super(fragmentActivity, bgVar, aoVar, twitterScribeAssociation);
        this.f = new do(this.c, this.d);
        this.h = view;
        this.g = (ListView) this.h.findViewById(2131953120);
        this.g.setOnItemClickListener(this);
    }

    public void onClick(View view) {
        if (view.getId() == bcx.dismiss) {
            a();
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        super.onLoaderReset(loader);
        if (loader.getId() == g()) {
            a();
        }
    }

    public mt b() {
        if (this.e == null) {
            my myVar = new my(this.c, 2130837689, this, this.b.c(), true);
            myVar.a(this.f);
            myVar.a(this);
            this.e = new mt(this.c, myVar, d(), 19);
            this.e.a(this);
            this.e.a(this.b.a(), this.b.b());
            this.g.setAdapter(this.e);
        }
        return this.e;
    }

    protected Uri c() {
        return dg.x;
    }

    protected int d() {
        return 20;
    }

    protected int e() {
        return 3;
    }

    protected int f() {
        return 3;
    }

    protected int g() {
        return 3;
    }

    public void a() {
        this.h.setVisibility(8);
        if (this.e != null) {
            this.e.a(null);
        }
    }

    protected void h() {
        super.h();
        this.h.setVisibility(0);
        i();
    }

    protected void i() {
        if (a(true, true)) {
            ViewTreeObserver viewTreeObserver = this.g.getViewTreeObserver();
            viewTreeObserver.addOnPreDrawListener(new h(this, viewTreeObserver));
        }
    }

    protected String j() {
        return "user_similarities_list";
    }

    public boolean k() {
        return super.k() && this.g.getVisibility() == 0;
    }

    protected void l() {
    }

    private int a(boolean z) {
        if (this.e == null) {
            return 0;
        }
        int count;
        if (z) {
            count = this.e.getCount();
        } else {
            count = this.g.getChildCount();
        }
        int i = 0;
        for (int i2 = 0; i2 < count; i2++) {
            View view;
            if (z) {
                view = this.e.getView(i2, null, this.g);
                view.measure(0, 0);
            } else {
                view = this.g.getChildAt(i2);
            }
            i += view.getMeasuredHeight();
        }
        if (!z && count < this.e.getCount()) {
            count++;
        }
        return ((count - 1) * this.g.getDividerHeight()) + i;
    }

    private boolean a(boolean z, boolean z2) {
        int a = a(z2);
        if (a == this.g.getLayoutParams().height && !z) {
            return false;
        }
        this.g.getLayoutParams().height = a;
        this.g.requestLayout();
        return true;
    }
}
