package com.twitter.android.media.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class k implements OnClickListener {
    final /* synthetic */ CameraToolbar a;

    k(CameraToolbar cameraToolbar) {
        this.a = cameraToolbar;
    }

    public void onClick(View view) {
        if (this.a.m != null) {
            this.a.m.a();
        }
    }
}
