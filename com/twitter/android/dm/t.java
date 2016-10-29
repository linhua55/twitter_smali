package com.twitter.android.dm;

import android.content.Intent;
import android.net.Uri;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;

/* compiled from: Twttr */
public interface t {
    void B();

    void a(int i, int i2, Intent intent, AttachMediaListener attachMediaListener);

    void a(Uri uri);

    void a(Uri uri, AttachMediaListener attachMediaListener);

    void a(MediaAttachment mediaAttachment, AttachMediaListener attachMediaListener);

    void b(Uri uri, AttachMediaListener attachMediaListener);

    void b(MediaAttachment mediaAttachment);

    void c(int i);
}
