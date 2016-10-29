package android.support.design.widget;

import android.graphics.Outline;

/* compiled from: Twttr */
class CircularBorderDrawableLollipop extends CircularBorderDrawable {
    CircularBorderDrawableLollipop() {
    }

    public void getOutline(Outline outline) {
        copyBounds(this.mRect);
        outline.setOval(this.mRect);
    }
}
