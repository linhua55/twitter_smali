package com.twitter.android.media.camera;

import android.content.Context;
import android.view.OrientationEventListener;

/* compiled from: Twttr */
class ab extends OrientationEventListener {
    final /* synthetic */ aa a;

    ab(aa aaVar, Context context) {
        this.a = aaVar;
        super(context);
    }

    public void onOrientationChanged(int i) {
        this.a.a(i);
    }
}
