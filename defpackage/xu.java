package defpackage;

import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import bgv;

/* compiled from: Twttr */
/* renamed from: xu */
public abstract class xu<T extends bgv> extends xe<T> {
    protected final TextView j;

    xu(xf<T, ? extends xv, ?> xfVar) {
        super(xfVar);
        this.j = ((xv) xfVar.a).a;
    }

    void d() {
        int i = 2131689899;
        LayoutParams layoutParams = (LayoutParams) this.j.getLayoutParams();
        int dimensionPixelSize = this.g.getDimensionPixelSize(2131689899);
        if (this.c != null) {
            bgv bgv = this.c.a;
            if (!(this.i.a(bgv.bf_()) || bgv.e())) {
                i = 2131689898;
            }
        } else {
            i = 2131689898;
        }
        layoutParams.setMargins(0, dimensionPixelSize, 0, this.g.getDimensionPixelSize(i));
        this.j.setLayoutParams(layoutParams);
        if (this.d != null && this.i.a(this.a.bf_()) && this.a.e()) {
            this.d.setPadding(this.d.getPaddingLeft(), this.d.getPaddingTop(), this.d.getPaddingRight(), this.g.getDimensionPixelSize(2131689909));
        }
    }
}
