package com.twitter.ui.widget.slidingtab;

import android.view.View;
import android.view.View.OnClickListener;
import java.util.Iterator;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ SlidingTabLayout a;

    private b(SlidingTabLayout slidingTabLayout) {
        this.a = slidingTabLayout;
    }

    public void onClick(View view) {
        for (int i = 0; i < this.a.f.getChildCount(); i++) {
            if (view == this.a.f.getChildAt(i)) {
                this.a.e.setCurrentItem(i);
                if (this.a.a != null && !this.a.a.isEmpty()) {
                    Iterator it = this.a.a.iterator();
                    while (it.hasNext()) {
                        ((d) it.next()).a(i);
                    }
                    return;
                }
                return;
            }
        }
    }
}
