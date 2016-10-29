package com.twitter.library.widget;

import android.content.Context;
import android.graphics.Paint.FontMetrics;
import android.support.annotation.ColorInt;
import android.text.SpannableStringBuilder;
import android.view.View;
import buz;
import com.twitter.internal.android.widget.TypefacesSpan;
import com.twitter.library.util.q;
import com.twitter.library.view.d;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cr;
import com.twitter.model.core.e;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.buy;
import java.util.List;

/* compiled from: Twttr */
public class am {
    private final Context a;
    private final View b;
    private final FontMetrics c;
    private m d;
    @ColorInt
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    @ColorInt
    private int k;
    private CharSequence l;
    private String m;
    private ap n;

    public am(Context context, View view, FontMetrics fontMetrics) {
        this.a = context;
        this.b = view;
        this.c = fontMetrics;
        this.i = true;
    }

    public am a(m mVar) {
        this.d = mVar;
        return this;
    }

    public am a(@ColorInt int i) {
        this.e = i;
        return this;
    }

    public am b(@ColorInt int i) {
        this.k = i;
        return this;
    }

    public am a(boolean z) {
        this.f = z;
        return this;
    }

    public am b(boolean z) {
        this.g = z;
        return this;
    }

    public am c(boolean z) {
        this.h = z;
        return this;
    }

    public am d(boolean z) {
        this.i = z;
        return this;
    }

    public am e(boolean z) {
        this.j = z;
        return this;
    }

    public am a(CharSequence charSequence) {
        this.l = charSequence;
        return this;
    }

    public am a(ap apVar) {
        this.n = apVar;
        return this;
    }

    public am a(String str) {
        this.m = str;
        return this;
    }

    public SpannableStringBuilder a(CharSequence charSequence, bg bgVar, Iterable<? extends e> iterable) {
        SpannableStringBuilder spannableStringBuilder;
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
        a((Iterable) iterable, spannableStringBuilder2);
        boolean z = d.a() && !bgVar.f.c();
        if (this.i) {
            SpannableStringBuilder a = a(bgVar, spannableStringBuilder2);
            if (z) {
                n d = n.d();
                for (cr aoVar : bgVar.b()) {
                    d.c(new ao(aoVar));
                }
                List<ao> list = (List) d.q();
                bg bgVar2 = (bg) new bi(bgVar).e().q();
                for (ao aoVar2 : list) {
                    bgVar2.b(aoVar2.a, aoVar2.b);
                }
                spannableStringBuilder = a;
                bgVar = bgVar2;
            } else {
                spannableStringBuilder = a;
            }
        } else {
            spannableStringBuilder = spannableStringBuilder2;
        }
        if (z) {
            spannableStringBuilder = d.a(this.a, bgVar.f, spannableStringBuilder, false, this.b);
        }
        if (this.j && buz.a().b()) {
            spannableStringBuilder = a(this.a, spannableStringBuilder);
        }
        return q.a(this.a).a(this.b, spannableStringBuilder, this.c);
    }

    private void a(Iterable<? extends e> iterable, SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length();
        for (e eVar : iterable) {
            if (eVar.g >= 0 && eVar.h <= length) {
                spannableStringBuilder.setSpan(new TypefacesSpan(this.a, 1), eVar.g, eVar.h, 33);
            }
        }
    }

    private SpannableStringBuilder a(bg bgVar, SpannableStringBuilder spannableStringBuilder) {
        boolean z = true;
        boolean a = buy.a();
        o a2 = o.a((CharSequence) spannableStringBuilder).a(bgVar).b(this.e).a(this.d);
        boolean z2 = a && this.f;
        a2 = a2.e(z2);
        z2 = a && this.g;
        o f = a2.f(z2);
        if (!(a && this.h)) {
            z = false;
        }
        return f.d(z).a();
    }

    private SpannableStringBuilder a(Context context, SpannableStringBuilder spannableStringBuilder) {
        if (!aj.a(this.l)) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append(this.m);
            spannableStringBuilder.append(this.l);
            spannableStringBuilder.setSpan(new an(this, this.e, Integer.valueOf(this.k), true, false), length, spannableStringBuilder.length(), 33);
        }
        return spannableStringBuilder;
    }
}
