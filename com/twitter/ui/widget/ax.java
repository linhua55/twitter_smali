package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.SparseArray;
import java.util.HashMap;
import java.util.Map;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class ax {
    private static ax g;
    private static volatile boolean h;
    public final Typeface a;
    public final Typeface b;
    public final Typeface c;
    public final Typeface d;
    public final Typeface e;
    public final boolean f;
    private final Context i;
    private final Map<String, Typeface> j;
    private final SparseArray<Typeface> k;

    private ax(Context context) {
        this.i = context.getApplicationContext();
        this.j = new HashMap();
        this.k = new SparseArray();
        this.f = a(context.getResources());
        this.a = a("fonts/light.ttf", 0);
        this.b = a("fonts/lightItalic.ttf", 2);
        this.c = a("fonts/bold.ttf", 1);
        this.d = a("fonts/boldItalic.ttf", 3);
        this.e = this.f ? this.a : Typeface.SERIF;
    }

    public Typeface a(int i) {
        if ((i & 1) != 0 && (i & 2) != 0) {
            return this.d;
        }
        if ((i & 1) != 0) {
            return this.c;
        }
        if ((i & 2) != 0) {
            return this.b;
        }
        return this.a;
    }

    public static synchronized ax a(Context context) {
        ax axVar;
        synchronized (ax.class) {
            if (g == null) {
                g = new ax(context);
            }
            axVar = g;
        }
        return axVar;
    }

    public static void a(boolean z) {
        h = z;
    }

    public Typeface b(int i) {
        switch (i) {
            case p.View_android_focusable /*1*/:
                return this.c;
            case p.View_paddingStart /*2*/:
                return this.b;
            case p.View_paddingEnd /*3*/:
                return this.d;
            default:
                return this.a;
        }
    }

    public Typeface a(String str, int i) {
        if (!this.f || h) {
            return c(i);
        }
        if (!this.j.containsKey(str)) {
            this.j.put(str, Typeface.createFromAsset(this.i.getAssets(), str));
        }
        return (Typeface) this.j.get(str);
    }

    private Typeface c(int i) {
        Typeface typeface = (Typeface) this.k.get(i);
        if (typeface == null) {
            switch (i) {
                case p.View_android_theme /*0*/:
                    typeface = Typeface.DEFAULT;
                    break;
                case p.View_android_focusable /*1*/:
                    typeface = Typeface.DEFAULT_BOLD;
                    break;
                case p.View_paddingEnd /*3*/:
                    typeface = Typeface.create(Typeface.DEFAULT_BOLD, i);
                    break;
                default:
                    typeface = Typeface.create(Typeface.DEFAULT, i);
                    break;
            }
            this.k.put(i, typeface);
        }
        return typeface;
    }

    public Typeface a(Typeface typeface, boolean z) {
        if (!this.f || h || !z) {
            return typeface;
        }
        return b(typeface != null ? typeface.getStyle() : 0);
    }

    private static boolean a(Resources resources) {
        return resources.getDisplayMetrics().densityDpi >= 320 || resources.getConfiguration().smallestScreenWidthDp >= 600;
    }
}
