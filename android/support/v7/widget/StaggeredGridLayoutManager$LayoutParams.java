package android.support.v7.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;

/* compiled from: Twttr */
public class StaggeredGridLayoutManager$LayoutParams extends LayoutParams {
    public static final int INVALID_SPAN_ID = -1;
    boolean mFullSpan;
    StaggeredGridLayoutManager$Span mSpan;

    public StaggeredGridLayoutManager$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StaggeredGridLayoutManager$LayoutParams(int i, int i2) {
        super(i, i2);
    }

    public StaggeredGridLayoutManager$LayoutParams(MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
    }

    public StaggeredGridLayoutManager$LayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }

    public StaggeredGridLayoutManager$LayoutParams(LayoutParams layoutParams) {
        super(layoutParams);
    }

    public void setFullSpan(boolean z) {
        this.mFullSpan = z;
    }

    public boolean isFullSpan() {
        return this.mFullSpan;
    }

    public final int getSpanIndex() {
        if (this.mSpan == null) {
            return INVALID_SPAN_ID;
        }
        return this.mSpan.mIndex;
    }
}
