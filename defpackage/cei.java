package defpackage;

import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;

/* compiled from: Twttr */
/* renamed from: cei */
public class cei {
    private String a;
    private String b;
    @DrawableRes
    private int c;
    @ColorInt
    private int d;

    public void a() {
        this.a = null;
        this.b = null;
        this.c = 0;
        this.d = 0;
    }

    public String b() {
        return this.a;
    }

    public cei a(String str) {
        this.a = str;
        return this;
    }

    public String c() {
        return this.b;
    }

    public cei b(String str) {
        this.b = str;
        return this;
    }

    @DrawableRes
    public int d() {
        return this.c;
    }

    public cei a(@DrawableRes int i) {
        this.c = i;
        return this;
    }

    @ColorInt
    public int e() {
        return this.d;
    }

    public cei b(@ColorInt int i) {
        this.d = i;
        return this;
    }
}
