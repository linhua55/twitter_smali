package com.twitter.android.media.selection;

import java.util.List;

/* compiled from: Twttr */
public interface AttachMediaListener {

    /* compiled from: Twttr */
    public enum MediaAttachFailure {
        NONE,
        FAILED,
        INVALID,
        GIF_TOO_LARGE,
        CANCELED
    }

    void a(List<MediaAttachment> list);

    boolean a(MediaAttachment mediaAttachment);
}
