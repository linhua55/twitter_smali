package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import com.twitter.android.av.GalleryVideoChromeView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.ui.image.MediaImageView;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aas */
public class aas extends aaq {
    public aas(Context context, ViewGroup viewGroup, int i, aao aao, TwitterScribeAssociation twitterScribeAssociation, List<MediaImageView> list) {
        super(context, viewGroup, i, aao, twitterScribeAssociation, list);
    }

    public h g() {
        return this.h != null ? this.h.getChromeView() : null;
    }

    protected Mode e() {
        return Mode.FULLSCREEN_PERISCOPE;
    }

    public void a(boolean z) {
        super.a(z);
        if (z) {
            AVPlayer f = f();
            if (f != null && f.D() != null) {
                GalleryVideoChromeView a = this.c.a();
                if (a != null) {
                    a.setShouldShowControls(f.D().d());
                }
            }
        }
    }
}
