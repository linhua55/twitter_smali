package com.twitter.android;

import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.twitter.media.ui.image.BaseMediaImageView;

/* compiled from: Twttr */
class vs implements Runnable {
    final /* synthetic */ Fragment a;
    final /* synthetic */ Intent b;
    final /* synthetic */ BaseMediaImageView c;
    final /* synthetic */ vr d;

    vs(vr vrVar, Fragment fragment, Intent intent, BaseMediaImageView baseMediaImageView) {
        this.d = vrVar;
        this.a = fragment;
        this.b = intent;
        this.c = baseMediaImageView;
    }

    public void run() {
        FragmentActivity activity = this.a.getActivity();
        if (activity != null && !activity.isFinishing()) {
            GalleryActivity.a(activity, this.b, this.c);
        }
    }
}
