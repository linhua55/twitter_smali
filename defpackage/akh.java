package defpackage;

import android.content.res.Resources;
import com.twitter.internal.android.widget.TypefacesSpan;
import com.twitter.library.util.aq;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ak;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: akh */
class akh {
    private final int a;
    private final int b;
    private final int[] c;
    private final int[] d;
    private final TypefacesSpan[] e;
    private final TypefacesSpan[] f;

    akh(int i, int[] iArr, int[] iArr2, TypefacesSpan[] typefacesSpanArr, TypefacesSpan[] typefacesSpanArr2) {
        this.a = i;
        this.c = iArr;
        this.d = iArr2;
        this.b = iArr.length - 1;
        this.e = typefacesSpanArr;
        this.f = typefacesSpanArr2;
    }

    public CharSequence a(Resources resources, List<TwitterUser> list, int i, int i2, String str) {
        if (CollectionUtils.b((Collection) list)) {
            return null;
        }
        int i3;
        if (i > this.b) {
            i3 = this.b - 1;
        } else {
            i3 = Math.min(list.size(), this.b);
        }
        int i4 = i - i3;
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < i3; i5++) {
            arrayList.add(((TwitterUser) list.get(i5)).d);
        }
        if (i4 > 0) {
            arrayList.add(Integer.valueOf(i4));
        }
        boolean z = i2 > 1;
        if (z) {
            arrayList.add(Integer.valueOf(i2));
        }
        if (str != null) {
            arrayList.add(str);
        }
        String a = w.a(resources.getString(a(z, i), arrayList.toArray()), ak.f());
        Object obj = (i3 > 1 || i4 != 0) ? null : 1;
        return aq.a(obj != null ? this.e : this.f, a, '\"');
    }

    private int a(boolean z, int i) {
        int[] iArr = z ? this.d : this.c;
        int min = Math.min(i - 1, this.b);
        return iArr.length > min ? iArr[min] : 0;
    }
}
