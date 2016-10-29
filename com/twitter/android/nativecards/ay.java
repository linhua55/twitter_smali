package com.twitter.android.nativecards;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.library.widget.LandscapeAwareAspectRatioFrameLayout;

/* compiled from: Twttr */
public class ay implements b {
    public /* synthetic */ View a(Context context, ViewGroup viewGroup) {
        return b(context, viewGroup);
    }

    public LandscapeAwareAspectRatioFrameLayout b(Context context, ViewGroup viewGroup) {
        return a(context, LayoutInflater.from(context), viewGroup);
    }

    public LandscapeAwareAspectRatioFrameLayout a(Context context, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        LandscapeAwareAspectRatioFrameLayout landscapeAwareAspectRatioFrameLayout = new LandscapeAwareAspectRatioFrameLayout(context);
        landscapeAwareAspectRatioFrameLayout.setAspectRatio(1.0f);
        landscapeAwareAspectRatioFrameLayout.addView(layoutInflater.inflate(2130969522, viewGroup, false));
        return landscapeAwareAspectRatioFrameLayout;
    }
}
