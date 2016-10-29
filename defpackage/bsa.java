package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ProgressBar;

/* compiled from: Twttr */
/* renamed from: bsa */
public class bsa {
    private ProgressBar a;

    public boolean a(ViewGroup viewGroup, Context context) {
        return a(viewGroup, context, null);
    }

    public boolean a(ViewGroup viewGroup, Context context, LayoutParams layoutParams) {
        if (this.a != null) {
            return false;
        }
        this.a = new ProgressBar(context, null, 16842874);
        if (layoutParams != null) {
            viewGroup.addView(this.a, layoutParams);
        } else {
            viewGroup.addView(this.a);
        }
        viewGroup.bringChildToFront(this.a);
        viewGroup.requestLayout();
        return true;
    }

    public boolean a(ViewGroup viewGroup) {
        if (this.a == null) {
            return false;
        }
        viewGroup.removeView(this.a);
        this.a = null;
        return true;
    }

    public void a(boolean z, int i, int i2, int i3, int i4) {
        if (this.a != null) {
            int i5 = i3 - i;
            int measuredWidth = this.a.getMeasuredWidth();
            if (i5 >= measuredWidth) {
                int measuredHeight = this.a.getMeasuredHeight();
                int i6 = i4 - i2;
                if (i6 >= measuredHeight) {
                    i5 = (i5 - measuredWidth) / 2;
                    i6 = (i6 - measuredHeight) / 2;
                    this.a.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
                }
            }
        }
    }
}
