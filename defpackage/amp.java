package defpackage;

import android.media.MediaPlayer;
import android.os.SystemClock;
import com.twitter.library.media.player.InlineVideoView;

/* compiled from: Twttr */
/* renamed from: amp */
public class amp {
    private final amo a;
    private int b;
    private long c;

    public amp(amo amo) {
        this.b = 0;
        this.a = amo;
    }

    public void a(InlineVideoView inlineVideoView) {
        inlineVideoView.setOnPreparedListener(new amq(this));
        inlineVideoView.setOnErrorListener(new amr(this, inlineVideoView));
        inlineVideoView.setOnCompletionListener(new ams(this));
        inlineVideoView.setOnTouchListener(new amt(this, inlineVideoView));
    }

    private void a(MediaPlayer mediaPlayer) {
        mediaPlayer.start();
        this.c = SystemClock.elapsedRealtime();
    }

    public int a() {
        int i = 1;
        int i2 = SystemClock.elapsedRealtime() - this.c >= 500 ? 1 : 0;
        int i3 = this.b;
        if (i2 == 0) {
            i = 0;
        }
        i2 = i3 + i;
        this.b = 0;
        this.c = 0;
        return i2;
    }
}
