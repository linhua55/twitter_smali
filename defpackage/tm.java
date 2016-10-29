package defpackage;

import android.text.Spanned;

/* compiled from: Twttr */
/* renamed from: tm */
public abstract class tm<T> extends to<T> {
    private final Class a;

    public tm(Class cls) {
        this.a = cls;
    }

    public String c(CharSequence charSequence, int i) {
        tp a_ = a_(charSequence, i);
        return (a_ != null ? charSequence.subSequence(a_.a, a_.b).toString() : "").trim();
    }

    public tp a_(CharSequence charSequence, int i) {
        if (i < 0) {
            return null;
        }
        if (!(charSequence instanceof Spanned)) {
            return new tp(0, charSequence.length());
        }
        int length = charSequence.length();
        Spanned spanned = (Spanned) charSequence;
        Object[] spans = spanned.getSpans(0, spanned.length(), this.a);
        int length2 = spans.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = length;
        while (i2 < length2) {
            Object obj = spans[i2];
            length = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (length < i && i < spanEnd) {
                return new tp(length, spanEnd);
            }
            if (i3 < spanEnd && spanEnd <= i) {
                i3 = spanEnd;
            }
            if (i > length || length >= i4) {
                length = i4;
            }
            i2++;
            i4 = length;
        }
        if (i3 >= spanned.length() || spanned.charAt(i3) != ' ' || i3 >= i4) {
            length = i3;
        } else {
            length = i3 + 1;
        }
        return new tp(length, i4);
    }
}
