package com.twitter.android.moments.ui.guide;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.IdRes;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentManager;
import android.view.View;
import com.twitter.android.util.t;
import com.twitter.ui.widget.Tooltip;
import com.twitter.ui.widget.ad;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
public class p {
    private final Activity a;
    private final FragmentManager b;
    private final t c;
    private final t d;
    private final t e;
    @IdRes
    private final int f;
    private final String g;
    private final boolean h;
    private View i;
    private View j;
    private boolean k;

    public p(Activity activity, FragmentManager fragmentManager, t tVar, t tVar2, t tVar3, boolean z, @IdRes int i, String str) {
        this.k = true;
        this.a = activity;
        this.b = fragmentManager;
        this.c = tVar;
        this.d = tVar2;
        this.e = tVar3;
        this.h = z;
        this.f = i;
        this.g = str;
    }

    public void a() {
        if (this.c.a()) {
            ad a;
            if (this.g != null) {
                a = Tooltip.a(this.a, this.g);
            } else {
                a = Tooltip.a(this.a, this.f);
            }
            a.a(2131363103).c(1).a(true).a(this.b, "post_follow_tag");
            this.c.b();
            this.d.b();
        }
    }

    private void c() {
        if (this.k && this.i != null && this.d.a()) {
            this.k = false;
            this.i.setTag("first_follow_button_tag");
            Tooltip.a(this.a, "first_follow_button_tag").a(2131363100).c(0).b(2131558964).a(true).a(this.b, "follow_button_tag");
            this.d.b();
        }
    }

    private void d() {
        if (this.k && this.j != null && this.e.a()) {
            this.k = false;
            this.j.setTag("first_thumbnail_tag");
            Tooltip.a(this.a, "first_thumbnail_tag").a(2131363112).c(0).b(2131558964).a(true).a(this.b, "first_thumbnail_tag");
            this.e.b();
        }
    }

    public void a(View view) {
        if (!this.h || this.i != null || view.getVisibility() != 0) {
            return;
        }
        if (view.getWidth() == 0 && view.getHeight() == 0) {
            view.addOnLayoutChangeListener(new q(this, view));
            return;
        }
        this.i = view;
        c();
    }

    @VisibleForTesting
    boolean a(Context context, int[] iArr, int i) {
        Size a = r.a(context);
        if (iArr[1] < 0 || iArr[1] + i > a.b()) {
            return false;
        }
        return true;
    }

    public void b(View view) {
        if (this.h && this.j == null && view.getVisibility() == 0) {
            this.j = view;
            d();
        }
    }

    public void a(boolean z) {
        this.k = z;
    }

    public void b() {
        d();
        c();
    }
}
