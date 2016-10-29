package defpackage;

import android.content.res.Resources;
import android.util.SparseArray;
import com.twitter.internal.android.widget.TypefacesSpan;
import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aki */
public class aki {
    private static final int[] a;
    private final SparseArray<akh> b;
    private final TypefacesSpan[] c;
    private final TypefacesSpan[] d;
    private final Resources e;

    static {
        a = new int[0];
    }

    public aki(Resources resources, TypefacesSpan[] typefacesSpanArr, TypefacesSpan[] typefacesSpanArr2) {
        this.b = new SparseArray(12);
        this.e = resources;
        this.c = typefacesSpanArr;
        this.d = typefacesSpanArr2;
        a(5, new int[]{2131362713, 2131362717, 2131362714, 2131362712, 2131362715}, a);
        a(4, new int[]{2131363506, 2131363510, 2131363508}, new int[]{2131363507, 2131363511, 2131363509});
        a(9, new int[]{2131363512, 2131363516, 2131363514}, new int[]{2131363513, 2131363517, 2131363515});
        a(11, new int[]{2131363500, 2131363504, 2131363502}, new int[]{2131363501, 2131363505, 2131363503});
        a(17, new int[]{2131363494, 2131363498, 2131363496}, new int[]{2131363495, 2131363499, 2131363497});
        a(1, new int[]{2131362879, 2131362883, 2131362881}, new int[]{2131362880, 2131362884, 2131362882});
        a(10, new int[]{2131362885, 2131362889, 2131362887}, new int[]{2131362886, 2131362890, 2131362888});
        a(12, new int[]{2131362873, 2131362877, 2131362875}, new int[]{2131362874, 2131362878, 2131362876});
        a(16, new int[]{2131362867, 2131362871, 2131362869}, new int[]{2131362868, 2131362872, 2131362870});
    }

    public CharSequence a(int i, List<TwitterUser> list, int i2, int i3, String str) {
        akh akh = (akh) this.b.get(i);
        if (akh == null) {
            bbn.a(new IllegalArgumentException("Type not supported: " + i));
            return null;
        }
        try {
            return akh.a(this.e, list, i2, i3, str);
        } catch (Throwable th) {
            bbn.a(th);
            return null;
        }
    }

    private void a(int i, int[] iArr, int[] iArr2) {
        this.b.put(i, new akh(i, iArr, iArr2, this.c, this.d));
    }
}
