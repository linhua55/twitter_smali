package com.twitter.android.moments.ui.guide;

import android.view.View;
import com.twitter.android.moments.ui.a;

/* compiled from: Twttr */
public class i implements a {
    private final a a;
    private final View b;

    public i(View view) {
        this.a = (a) view.findViewById(2131952793);
        this.b = view.findViewById(2131952794);
    }

    public void setIsBadged(boolean z) {
        this.a.setIsBadged(z);
        this.b.setVisibility(z ? 0 : 8);
    }
}
