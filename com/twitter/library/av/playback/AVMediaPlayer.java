package com.twitter.library.av.playback;

import android.content.Context;
import android.media.MediaPlayer.OnCompletionListener;
import android.view.Surface;
import com.twitter.library.av.s;
import com.twitter.model.av.AVMedia;
import java.util.Map;

/* compiled from: Twttr */
public interface AVMediaPlayer {
    public static final AVMediaPlayer a;

    void A();

    boolean B();

    bd C();

    void D();

    void a(float f);

    void a(Context context, AVMedia aVMedia, Map<String, String> map);

    void a(OnCompletionListener onCompletionListener);

    void a(Surface surface);

    void a(s sVar);

    void a(boolean z);

    w b();

    void b(long j);

    void b(boolean z);

    int e();

    String f();

    boolean q();

    boolean r();

    void s();

    boolean t();

    boolean u();

    boolean v();

    boolean w();

    boolean x();

    void y();

    boolean z();

    static {
        a = new v();
    }
}
