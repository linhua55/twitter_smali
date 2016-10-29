package com.twitter.library.util;

import android.content.Context;
import android.graphics.Paint.FontMetrics;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.support.v4.util.LongSparseArray;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.TextView;
import bbr;
import cfb;
import com.twitter.ui.widget.w;
import defpackage.bcw;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class q {
    private static q a;
    private static final long[] b;
    private static final int[] c;
    private final Context d;
    private Set<Integer> e;
    private Map<Integer, Integer> f;
    private LongSparseArray<Integer> g;
    private int h;
    private int i;
    private final u j;
    private boolean k;

    static {
        b = new long[]{547483776315893L, 547531020956152L, 547466596446711L, 547458006512106L, 547479481348601L, 547470891413991L, 547462301479416L, 547518136054266L, 547453711544819L, 547488071283191L, 150323863779L, 206158438627L, 210453405923L, 214748373219L, 219043340515L, 223338307811L, 227633275107L, 231928242403L, 236223209699L, 240518176995L, 244813144291L};
        c = new int[]{1041637, 1041638, 1041639, 1041640, 1041641, 1041642, 1041643, 1041644, 1041645, 1041646, 1042476, 1042487, 1042478, 1042479, 1042480, 1042481, 1042482, 1042483, 1042484, 1042485, 1042486};
    }

    public static synchronized q a(Context context) {
        q qVar;
        synchronized (q.class) {
            if (a == null) {
                a = new q(context);
            }
            qVar = a;
        }
        return qVar;
    }

    public static void a(Context context, TextView textView, CharSequence charSequence) {
        textView.setText(a(context).a((View) textView, charSequence, textView.getPaint().getFontMetrics()));
    }

    public SpannableStringBuilder a(View view, CharSequence charSequence, FontMetrics fontMetrics) {
        return a(view, charSequence != null ? new SpannableStringBuilder(charSequence) : null, fontMetrics);
    }

    public SpannableStringBuilder a(View view, SpannableStringBuilder spannableStringBuilder, FontMetrics fontMetrics) {
        if (spannableStringBuilder != null && this.k) {
            long nanoTime = System.nanoTime();
            int i = (int) (fontMetrics.descent - fontMetrics.ascent);
            int length = spannableStringBuilder.length();
            u uVar = this.j;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i2 < length) {
                try {
                    int i5;
                    int codePointAt = Character.codePointAt(spannableStringBuilder, i2);
                    int charCount = Character.charCount(codePointAt);
                    int i6 = i2 + charCount;
                    Integer num = (Integer) this.g.get((((long) i3) << 32) | ((long) codePointAt));
                    if (num != null) {
                        int a = a(num);
                        a(uVar, spannableStringBuilder, view, i, a, i2 - i4, i2 + charCount);
                        if (a != 0) {
                            i4 = 0;
                            i5 = 0;
                        }
                        i5 = charCount;
                        i4 = codePointAt;
                    } else {
                        a(uVar, spannableStringBuilder, view, i, a(Integer.valueOf(i3)), i2 - i4, i2);
                        if (i6 == length) {
                            a(uVar, spannableStringBuilder, view, i, a(Integer.valueOf(codePointAt)), i2, i2 + charCount);
                        }
                        i5 = charCount;
                        i4 = codePointAt;
                    }
                    i2 = i6;
                    i3 = i4;
                    i4 = i5;
                } catch (Throwable th) {
                    uVar.a = null;
                    uVar.b = null;
                }
            }
            CharSequence charSequence = uVar.a;
            s sVar = uVar.b;
            if (sVar != null) {
                List<t> list = sVar.a;
                if (list.size() <= 5) {
                    for (t tVar : list) {
                        tVar.a.b((Drawable) tVar.b.b());
                    }
                } else {
                    sVar.execute(new Void[0]);
                }
            }
            cfb.b("EmojiManager", "cost of emoji markup=" + (System.nanoTime() - nanoTime));
            if (charSequence != null) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
            }
            uVar.a = null;
            uVar.b = null;
        }
        return spannableStringBuilder;
    }

    private void a(u uVar, CharSequence charSequence, View view, int i, int i2, int i3, int i4) {
        if (i2 != 0) {
            if (uVar.a == null) {
                uVar.a = new SpannableString(charSequence);
            }
            if (uVar.b == null) {
                uVar.b = new s(view);
            }
            w wVar = new w();
            wVar.setBounds(0, 0, (this.i * 2) + i, i);
            t tVar = new t();
            tVar.a = wVar;
            tVar.b = new r(this, i2, i);
            uVar.b.a(tVar);
            uVar.a.setSpan(new ImageSpan(wVar), i3, i4, 33);
        }
    }

    private q(Context context) {
        this.j = new u();
        this.k = false;
        this.d = context.getApplicationContext();
    }

    int a(Integer num) {
        if (!this.e.contains(num)) {
            return 0;
        }
        Integer num2 = (Integer) this.f.get(num);
        if (num2 != null) {
            return num2.intValue();
        }
        int i;
        try {
            i = bcw.class.getField("em_" + Integer.toHexString(num.intValue())).getInt(null);
        } catch (Exception e) {
            i = 0;
        }
        if (i != 0) {
            this.f.put(num, Integer.valueOf(i));
            return i;
        }
        cfb.e("EmojiManager", "can not find resource for code=" + Integer.toHexString(num.intValue()));
        return i;
    }

    Drawable a(int i, int i2) {
        try {
            Drawable insetDrawable = new InsetDrawable(this.d.getResources().getDrawable(i), this.i + this.h, this.h, this.i + this.h, this.h);
            insetDrawable.setBounds(0, 0, (this.i * 2) + i2, i2);
            return insetDrawable;
        } catch (OutOfMemoryError e) {
            bbr.a(e);
            return null;
        }
    }
}
