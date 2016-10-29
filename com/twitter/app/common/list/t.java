package com.twitter.app.common.list;

import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.StringRes;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class t<T extends t<T>> {
    private String a;
    @StringRes
    private int b;
    @StringRes
    private int c;
    @LayoutRes
    private int d;
    @LayoutRes
    private int e;
    @IdRes
    private int f;
    @LayoutRes
    private int g;
    private boolean h;
    private int i;
    private int j;
    private int k;
    private boolean l;

    public t() {
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
        this.h = true;
    }

    public String a() {
        return this.a;
    }

    public T a(String str) {
        this.a = str;
        return (t) ObjectUtils.a(this);
    }

    @StringRes
    public int b() {
        return this.b;
    }

    public T a(@StringRes int i) {
        this.b = i;
        return (t) ObjectUtils.a(this);
    }

    @StringRes
    public int c() {
        return this.c;
    }

    public T b(@StringRes int i) {
        this.c = i;
        return (t) ObjectUtils.a(this);
    }

    public boolean d() {
        return (this.b == 0 && this.c == 0) ? false : true;
    }

    @LayoutRes
    public int e() {
        return this.d;
    }

    public T c(@LayoutRes int i) {
        this.d = i;
        return (t) ObjectUtils.a(this);
    }

    @LayoutRes
    public int f() {
        return this.e;
    }

    public T d(@LayoutRes int i) {
        this.e = i;
        return (t) ObjectUtils.a(this);
    }

    @IdRes
    public int g() {
        return this.f;
    }

    public T e(@IdRes int i) {
        this.f = i;
        return (t) ObjectUtils.a(this);
    }

    @LayoutRes
    public int h() {
        return this.g;
    }

    public T f(@LayoutRes int i) {
        this.g = i;
        return (t) ObjectUtils.a(this);
    }

    public boolean i() {
        return this.h;
    }

    public T a(boolean z) {
        this.h = z;
        return (t) ObjectUtils.a(this);
    }

    public int j() {
        return this.i;
    }

    public T g(int i) {
        this.i = i;
        return (t) ObjectUtils.a(this);
    }

    public int k() {
        return this.j;
    }

    public T h(int i) {
        this.j = i;
        return (t) ObjectUtils.a(this);
    }

    public int l() {
        return this.k;
    }

    public T i(int i) {
        this.k = i;
        return (t) ObjectUtils.a(this);
    }

    public boolean m() {
        return this.l;
    }

    public T b(boolean z) {
        this.l = z;
        return (t) ObjectUtils.a(this);
    }
}
