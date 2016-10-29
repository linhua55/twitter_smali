package defpackage;

import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.twitter.library.media.player.InlineVideoView;

/* compiled from: Twttr */
/* renamed from: amt */
class amt implements OnTouchListener {
    final /* synthetic */ InlineVideoView a;
    final /* synthetic */ amp b;

    amt(amp amp, InlineVideoView inlineVideoView) {
        this.b = amp;
        this.a = inlineVideoView;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if ((motionEvent.getAction() & MotionEventCompat.ACTION_MASK) != 0) {
            return false;
        }
        if (this.a.b()) {
            this.a.c();
        } else {
            this.a.pause();
        }
        return true;
    }
}
