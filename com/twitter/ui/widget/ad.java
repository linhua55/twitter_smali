package com.twitter.ui.widget;

import android.content.Context;
import android.support.annotation.StyleRes;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;

/* compiled from: Twttr */
public class ad {
    private final Context a;
    private int b;
    private int c;
    private af d;
    private CharSequence e;
    private int f;
    private String g;
    private int h;
    private boolean i;

    private ad(Context context, int i) {
        this.a = context;
        this.f = i;
    }

    private ad(Context context, String str) {
        this.a = context;
        this.g = str;
    }

    public ad a(int i) {
        this.e = this.a.getString(i);
        return this;
    }

    public ad a(CharSequence charSequence) {
        this.e = charSequence;
        return this;
    }

    public ad b(@StyleRes int i) {
        this.c = i;
        return this;
    }

    public ad c(int i) {
        if (i == 1 || i == 0 || i == 2 || i == 3) {
            this.b = i;
            return this;
        }
        throw new IllegalArgumentException("arrowDirection must be one of the Tooltip.POINTING_* constants");
    }

    public ad a(af afVar) {
        this.d = afVar;
        return this;
    }

    public ad d(int i) {
        this.h = i;
        return this;
    }

    public ad a(boolean z) {
        this.i = z;
        return this;
    }

    public Tooltip a(FragmentManager fragmentManager, String str) {
        return a(fragmentManager, str, true);
    }

    public Tooltip a(FragmentManager fragmentManager, String str, boolean z) {
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag(str);
        if (findFragmentByTag instanceof Tooltip) {
            Tooltip tooltip = (Tooltip) findFragmentByTag;
            tooltip.a(this.d);
            return tooltip;
        }
        tooltip = Tooltip.b(this.f, this.g, this.h, this.e, this.b, this.c, this.d, this.i, z, str);
        fragmentManager.beginTransaction().add(tooltip, str).commitAllowingStateLoss();
        return tooltip;
    }
}
