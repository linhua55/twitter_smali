package defpackage;

import android.graphics.Rect;
import com.twitter.android.moments.ui.FillCropFrameLayout;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
/* renamed from: ahb */
class ahb implements afu {
    private final FillCropFrameLayout a;
    private final afc b;
    private final afg c;
    private Size d;

    ahb(FillCropFrameLayout fillCropFrameLayout, afc afc) {
        this.a = fillCropFrameLayout;
        this.b = afc;
        this.c = new afg();
    }

    public void a(ahh ahh, Size size, Rect rect) {
        this.a.a(size, rect);
        this.d = size;
    }

    public void a(ahh ahh) {
        if (this.d != null && this.a.getConstraint() != null) {
            this.b.a(this.c.a(this.d, Size.a(this.a), this.a.getConstraint()));
        }
    }

    public void a(ahh ahh, boolean z) {
    }

    public void a(ahh ahh, int i) {
    }
}
