package tv.periscope.android.ui.broadcast;

import android.media.AudioManager.OnAudioFocusChangeListener;
import tv.periscope.android.api.Constants;

/* compiled from: Twttr */
class g implements OnAudioFocusChangeListener {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void onAudioFocusChange(int i) {
        switch (i) {
            case -2:
            case Constants.VALUE_BROADCAST_PERSISTENT /*-1*/:
                this.a.n.b(this.a.j, this.a.b);
                this.a.F();
            default:
        }
    }
}
