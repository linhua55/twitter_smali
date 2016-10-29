package com.twitter.library.view;

import android.support.annotation.ColorInt;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.SparseArray;
import bbl;
import bbn;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.bg;
import com.twitter.model.core.cr;
import com.twitter.model.core.e;
import com.twitter.model.core.q;
import com.twitter.util.aj;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class o {
    private final SpannableStringBuilder a;
    private bg b;
    @ColorInt
    private int c;
    @ColorInt
    private int d;
    private m e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;

    private o(SpannableStringBuilder spannableStringBuilder) {
        this.a = spannableStringBuilder;
        this.i = true;
        this.j = true;
        this.k = true;
        this.l = true;
    }

    public o a(bg bgVar) {
        this.b = bgVar;
        return this;
    }

    public o a(@ColorInt int i) {
        this.c = i;
        return this;
    }

    public o b(@ColorInt int i) {
        this.d = i;
        return this;
    }

    public o a(m mVar) {
        this.e = mVar;
        return this;
    }

    public o a(boolean z) {
        this.f = z;
        return this;
    }

    public o b(boolean z) {
        this.g = z;
        return this;
    }

    public o c(boolean z) {
        this.h = z;
        return this;
    }

    public o d(boolean z) {
        this.i = z;
        return this;
    }

    public o e(boolean z) {
        this.j = z;
        return this;
    }

    public o f(boolean z) {
        this.k = z;
        return this;
    }

    public SpannableStringBuilder a() {
        if (this.b != null) {
            if (this.i) {
                a(this.a, this.b.e);
            }
            if (this.j) {
                a(this.a, this.b.f);
            }
            if (this.k) {
                a(this.a, this.b.g);
            }
            if (this.l) {
                return a(this.a);
            }
        }
        return this.a;
    }

    public static o a(CharSequence charSequence) {
        return new o(new SpannableStringBuilder(charSequence));
    }

    private SpannableStringBuilder a(SpannableStringBuilder spannableStringBuilder) {
        if (this.b != null && this.b.a()) {
            SparseArray sparseArray = new SparseArray();
            int i = 0;
            for (cr crVar : this.b.b()) {
                int i2 = crVar.g;
                if (sparseArray.get(i2) == null) {
                    sparseArray.put(i2, Boolean.TRUE);
                    int i3 = i2 - i;
                    i2 = crVar.h - i;
                    if (i3 >= 0 && i2 <= spannableStringBuilder.length()) {
                        int length;
                        int i4;
                        int i5;
                        Object pVar;
                        Object obj = crVar.D;
                        if (aj.b(obj)) {
                            spannableStringBuilder.replace(i3, i2, obj);
                            length = i2 - (obj.length() + i3);
                            i4 = i2 - length;
                            i5 = i + length;
                        } else {
                            i4 = i2;
                            i5 = i;
                        }
                        if (this.e != null) {
                            boolean z;
                            WeakReference weakReference = new WeakReference(this.e);
                            Integer valueOf = this.h ? Integer.valueOf(this.c) : null;
                            length = this.d;
                            if (this.g) {
                                z = false;
                            } else {
                                z = true;
                            }
                            pVar = new p(this, length, valueOf, z, this.f, weakReference, crVar);
                        } else {
                            pVar = new ForegroundColorSpan(this.c);
                        }
                        spannableStringBuilder.setSpan(pVar, i3, i4, 33);
                        i = i5;
                    }
                }
            }
        }
        return spannableStringBuilder;
    }

    public static void a(m mVar, e eVar) {
        if (eVar instanceof ap) {
            mVar.a((ap) eVar);
        } else if (eVar instanceof q) {
            mVar.a((q) eVar);
        } else if (eVar instanceof b) {
            mVar.a((b) eVar);
        }
    }

    private <T extends e> void a(Spannable spannable, Iterable<T> iterable) {
        for (T t : iterable) {
            int i = t.g;
            int i2 = t.h;
            if (i >= 0 && i2 >= 0 && i < i2 && i2 <= this.a.length()) {
                Object qVar;
                if (this.e != null) {
                    boolean z;
                    WeakReference weakReference = new WeakReference(this.e);
                    Integer valueOf = this.h ? Integer.valueOf(this.c) : null;
                    int i3 = this.d;
                    if (this.g) {
                        z = false;
                    } else {
                        z = true;
                    }
                    qVar = new q(this, i3, valueOf, z, this.f, weakReference, t);
                } else {
                    qVar = new ForegroundColorSpan(this.c);
                }
                spannable.setSpan(qVar, i, i2, 33);
            } else if (i >= i2) {
                bbl bbl = new bbl();
                if (aj.b(this.a)) {
                    bbl.a("content", this.a);
                }
                if (t instanceof q) {
                    q qVar2 = (q) t;
                    if (aj.b(qVar2.c)) {
                        bbl.a("hashtag_text", qVar2.c);
                    }
                } else if (t instanceof b) {
                    b bVar = (b) t;
                    if (aj.b(bVar.c)) {
                        bbl.a("cashtag_text", bVar.c);
                    }
                } else if (t instanceof ap) {
                    ap apVar = (ap) t;
                    if (aj.b(apVar.i)) {
                        bbl.a("mention screenname", apVar.i);
                    }
                }
                bbl.a(TtmlNode.START, Integer.valueOf(t.g)).a(TtmlNode.END, Integer.valueOf(t.h)).a(new IllegalArgumentException("entity with invalid length"));
                bbn.a(bbl);
            }
        }
    }
}
