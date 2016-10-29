package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;

/* compiled from: Twttr */
class StaggeredGridLayoutManager$2 extends LinearSmoothScroller {
    final /* synthetic */ StaggeredGridLayoutManager this$0;

    StaggeredGridLayoutManager$2(StaggeredGridLayoutManager staggeredGridLayoutManager, Context context) {
        this.this$0 = staggeredGridLayoutManager;
        super(context);
    }

    public PointF computeScrollVectorForPosition(int i) {
        int access$400 = StaggeredGridLayoutManager.access$400(this.this$0, i);
        if (access$400 == 0) {
            return null;
        }
        if (StaggeredGridLayoutManager.access$500(this.this$0) == 0) {
            return new PointF((float) access$400, 0.0f);
        }
        return new PointF(0.0f, (float) access$400);
    }
}
