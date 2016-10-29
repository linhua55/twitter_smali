package defpackage;

import android.graphics.Bitmap;
import com.facebook.common.references.a;
import com.facebook.imagepipeline.animated.impl.l;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: ds */
class ds implements l {
    final /* synthetic */ List a;
    final /* synthetic */ dq b;

    ds(dq dqVar, List list) {
        this.b = dqVar;
        this.a = list;
    }

    public void a(int i, Bitmap bitmap) {
    }

    public a<Bitmap> a(int i) {
        return a.b((a) this.a.get(i));
    }
}
