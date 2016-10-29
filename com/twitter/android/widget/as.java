package com.twitter.android.widget;

import android.support.annotation.IdRes;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.twitter.android.media.selection.MediaAttachmentController;

/* compiled from: Twttr */
public class as extends bk implements ar {
    private final View c;

    public as(FragmentActivity fragmentActivity, boolean z, MediaAttachmentController mediaAttachmentController, View view, @IdRes int i, bc bcVar) {
        super(fragmentActivity, z, mediaAttachmentController, i, bcVar);
        this.c = view;
    }

    public boolean a() {
        return this.c.isShown();
    }

    public void b() {
        this.c.setVisibility(0);
    }

    public void c() {
        this.c.setVisibility(8);
    }
}
