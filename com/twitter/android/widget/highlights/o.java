package com.twitter.android.widget.highlights;

import android.view.View;
import java.util.Comparator;

/* compiled from: Twttr */
class o implements Comparator<View> {
    o() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((View) obj, (View) obj2);
    }

    public int a(View view, View view2) {
        StoriesViewPager$LayoutParams storiesViewPager$LayoutParams = (StoriesViewPager$LayoutParams) view.getLayoutParams();
        StoriesViewPager$LayoutParams storiesViewPager$LayoutParams2 = (StoriesViewPager$LayoutParams) view2.getLayoutParams();
        if (storiesViewPager$LayoutParams.a != storiesViewPager$LayoutParams2.a) {
            return storiesViewPager$LayoutParams.a ? 1 : -1;
        } else {
            return storiesViewPager$LayoutParams.e - storiesViewPager$LayoutParams2.e;
        }
    }
}
