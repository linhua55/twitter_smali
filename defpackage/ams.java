package defpackage;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

/* compiled from: Twttr */
/* renamed from: ams */
class ams implements OnCompletionListener {
    final /* synthetic */ amp a;

    ams(amp amp) {
        this.a = amp;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        mediaPlayer.seekTo(0);
        this.a.a(mediaPlayer);
        this.a.b = this.a.b + 1;
    }
}
