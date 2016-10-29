package tv.periscope.android.view;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.AttributeSet;
import android.view.View;
import defpackage.ddc;

/* compiled from: Twttr */
public class CarouselView extends RecyclerView {
    private int a;
    private boolean b;
    @Nullable
    private c c;
    @Nullable
    private g d;
    @Nullable
    private f e;

    public CarouselView(Context context) {
        this(context, null);
    }

    public CarouselView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CarouselView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = -1;
        setCarouselLayoutManager(context);
        b();
        a();
    }

    private void setCarouselLayoutManager(Context context) {
        super.setLayoutManager(new CarouselLayoutManager(context));
    }

    private void a() {
        addOnScrollListener(new e(this));
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.b = true;
    }

    public boolean fling(int i, int i2) {
        double a = ddc.a(getContext(), (float) i) * ((double) Math.signum((float) i));
        float centerX = getCenterX();
        if (Math.abs(a) <= ((double) centerX)) {
            return false;
        }
        a(a((int) (a + ((double) centerX))));
        return true;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.b) {
            View e;
            this.b = false;
            if (this.a == -1) {
                e = e();
            } else {
                e = b(this.a);
                this.a = -1;
            }
            scrollBy(-((int) c(e)), 0);
        }
        d();
    }

    public void setItemTransformer(@Nullable g gVar) {
        this.d = gVar;
    }

    public void setCarouselScrollListener(@Nullable f fVar) {
        this.e = fVar;
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        throw new UnsupportedOperationException("Layout manager is set internally to enforce the user of a carousel specific layout manager.");
    }

    private void b() {
        if (this.c != null) {
            removeItemDecoration(this.c);
        }
        this.c = new c();
        addItemDecoration(this.c);
    }

    public void a(@Nullable View view) {
        if (view != null) {
            int i = (int) (-c(view));
            if (i != 0) {
                smoothScrollBy(i, 0);
                if (this.e != null) {
                    this.e.a(view, ((b) getChildViewHolder(view)).l);
                }
            }
        }
    }

    private void c() {
        a(e());
    }

    private float getCenterX() {
        return ((float) getWidth()) / 2.0f;
    }

    private float b(@Nullable View view) {
        if (view == null) {
            return 0.0f;
        }
        return ((float) view.getLeft()) + (((float) view.getWidth()) / 2.0f);
    }

    private float c(@Nullable View view) {
        return getCenterX() - b(view);
    }

    private void d() {
        if (this.d != null) {
            int childCount = getChildCount();
            if (childCount != 0) {
                for (int i = 0; i < childCount; i++) {
                    this.d.a(this, getChildAt(i));
                }
            }
        }
    }

    @Nullable
    private View e() {
        return a((int) getCenterX());
    }

    @Nullable
    private View a(int i) {
        View view = null;
        int childCount = getChildCount();
        if (childCount != 0) {
            int i2 = 0;
            float f = Float.MAX_VALUE;
            while (i2 < childCount) {
                View childAt = getChildAt(i2);
                float abs = Math.abs(((float) i) - b(childAt));
                if (abs > f) {
                    break;
                }
                i2++;
                f = abs;
                view = childAt;
            }
        }
        return view;
    }

    @Nullable
    private View b(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (getChildAdapterPosition(childAt) == i) {
                return childAt;
            }
        }
        return null;
    }
}
