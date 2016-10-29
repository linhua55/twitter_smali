package com.google.android.gms.ads.internal.formats;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.oi;
import java.util.List;

@oi
public class a {
    static final int a;
    static final int b;
    private static final int c;
    private static final int d;
    private final String e;
    private final List<Drawable> f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;

    static {
        c = Color.rgb(12, 174, 206);
        d = Color.rgb(204, 204, 204);
        a = d;
        b = c;
    }

    public a(String str, List<Drawable> list, Integer num, Integer num2, Integer num3, int i) {
        this.e = str;
        this.f = list;
        this.g = num != null ? num.intValue() : a;
        this.h = num2 != null ? num2.intValue() : b;
        this.i = num3 != null ? num3.intValue() : 12;
        this.j = i;
    }

    public String a() {
        return this.e;
    }

    public List<Drawable> b() {
        return this.f;
    }

    public int c() {
        return this.g;
    }

    public int d() {
        return this.h;
    }

    public int e() {
        return this.i;
    }

    public int f() {
        return this.j;
    }
}
