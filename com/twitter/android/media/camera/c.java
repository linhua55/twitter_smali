package com.twitter.android.media.camera;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.twitter.android.media.widget.CameraToolbar;
import com.twitter.library.client.Session;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
public interface c {
    void a(MediaType mediaType, MediaFile mediaFile);

    void a(boolean z);

    void aH_();

    View b();

    void b(int i);

    CameraToolbar c();

    Session g();

    int h();

    void i();

    FragmentActivity j();

    VideoTooltipManager k();
}
