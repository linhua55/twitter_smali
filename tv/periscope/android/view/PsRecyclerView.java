package tv.periscope.android.view;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class PsRecyclerView extends RecyclerView {
    private boolean a;

    public PsRecyclerView(Context context) {
        super(context);
        this.a = true;
        a();
    }

    public PsRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = true;
        a();
    }

    public PsRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
        a();
    }

    private void a() {
        setOverScrollMode(2);
    }

    public void setAllowScroll(boolean z) {
        this.a = z;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.a) {
            switch (MotionEventCompat.getActionMasked(motionEvent)) {
                case p.View_paddingStart /*2*/:
                    return true;
            }
        }
        if (this.a && super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }
}
