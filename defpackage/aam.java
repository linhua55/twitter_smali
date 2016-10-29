package defpackage;

import android.graphics.RectF;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import com.twitter.library.media.widget.MultiTouchImageView;

/* compiled from: Twttr */
/* renamed from: aam */
class aam implements OnLayoutChangeListener {
    final /* synthetic */ MultiTouchImageView a;
    final /* synthetic */ aaj b;

    aam(aaj aaj, MultiTouchImageView multiTouchImageView) {
        this.b = aaj;
        this.a = multiTouchImageView;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.b.h == null) {
            return;
        }
        if (i != this.b.h.getLeft() || i2 != this.b.h.getTop() || i3 != this.b.h.getRight() || i4 != this.b.h.getBottom()) {
            RectF activeRect = this.a.getActiveRect();
            this.b.h.setPadding(Math.round(activeRect.left), Math.round(activeRect.top), i3 - Math.round(activeRect.right), i4 - Math.round(activeRect.bottom));
            this.b.h.layout(i, i2, i3, i4);
        }
    }
}
