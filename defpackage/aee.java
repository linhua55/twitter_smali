package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.twitter.android.moments.ui.VideoFillCropFrameLayout;
import com.twitter.android.moments.viewmodels.j;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.moments.g;

/* compiled from: Twttr */
/* renamed from: aee */
public class aee {
    private final ViewGroup a;
    private final MediaImageView b;
    private final VideoFillCropFrameLayout c;

    public aee(Context context) {
        this.a = a(context);
        this.b = (MediaImageView) this.a.findViewById(2131952752);
        this.c = (VideoFillCropFrameLayout) this.a.findViewById(2131952788);
    }

    public View a() {
        return this.a;
    }

    public void a(j jVar) {
        aea.a(jVar, this.b);
    }

    public ViewGroup b() {
        return this.c;
    }

    public void b(j jVar) {
        this.b.setVisibility(8);
        this.c.removeAllViews();
        this.c.setVisibility(0);
        g g = jVar.g();
        if (g != null) {
            this.c.a(g.f, g.a());
        } else {
            this.c.a(jVar.f(), null);
        }
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        this.c.setAVPlayerAttachment(aVPlayerAttachment);
    }

    private ViewGroup a(Context context) {
        return (ViewGroup) LayoutInflater.from(context).inflate(2130969094, new FrameLayout(context), false);
    }
}
