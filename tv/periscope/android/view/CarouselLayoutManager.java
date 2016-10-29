package tv.periscope.android.view;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;

/* compiled from: Twttr */
public class CarouselLayoutManager extends LinearLayoutManager {
    private boolean a;

    public CarouselLayoutManager(Context context) {
        super(context, 0, false);
        this.a = true;
    }

    public boolean canScrollHorizontally() {
        return this.a;
    }

    public boolean canScrollVertically() {
        return false;
    }
}
