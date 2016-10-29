package defpackage;

import android.content.Context;
import com.twitter.android.av.bk;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
/* renamed from: ud */
class ud extends bk {
    ud() {
    }

    public VideoPlayerView a(Context context, AVPlayerAttachment aVPlayerAttachment, Mode mode) {
        return ua.b(context, aVPlayerAttachment, mode, false);
    }
}
