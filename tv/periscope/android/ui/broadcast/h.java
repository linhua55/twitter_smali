package tv.periscope.android.ui.broadcast;

import android.content.Context;
import android.view.OrientationEventListener;

/* compiled from: Twttr */
class h extends OrientationEventListener {
    final /* synthetic */ f a;

    h(f fVar, Context context, int i) {
        this.a = fVar;
        super(context, i);
    }

    public void onOrientationChanged(int i) {
        if (i != -1) {
            this.a.I = (double) (((i + 45) / 90) * 90);
            this.a.B();
        }
    }
}
