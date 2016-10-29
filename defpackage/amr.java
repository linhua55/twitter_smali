package defpackage;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.twitter.library.media.player.InlineVideoView;

/* compiled from: Twttr */
/* renamed from: amr */
class amr implements OnErrorListener {
    final /* synthetic */ InlineVideoView a;
    final /* synthetic */ amp b;

    amr(amp amp, InlineVideoView inlineVideoView) {
        this.b = amp;
        this.a = inlineVideoView;
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.a.a(false);
        return true;
    }
}
