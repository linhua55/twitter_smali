package com.twitter.library.av.control;

import android.content.Context;
import android.view.View;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
public interface h {
    public static final h u;

    void a();

    void a(Context context, String str);

    void a(PlayerStartType playerStartType);

    void a(AVPlayerAttachment aVPlayerAttachment);

    void a(bd bdVar);

    void a(AVMedia aVMedia);

    void a_(boolean z);

    void b();

    void b_(boolean z);

    void c();

    void d();

    void e();

    boolean f();

    void g();

    View getView();

    void h();

    void i();

    void j();

    void l();

    void layout(int i, int i2, int i3, int i4);

    static {
        u = new i();
    }
}
