package com.twitter.android.widget;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.google.android.gms.maps.SupportMapFragment;
import com.twitter.util.ai;
import defpackage.bcu;

/* compiled from: Twttr */
public class TwitterMapFragment extends SupportMapFragment {
    private boolean a;
    private fy b;
    private final OnTouchListener c;

    public TwitterMapFragment() {
        this.c = new fx(this);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ai.b(false);
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        ai.b(true);
        onCreateView.setBackgroundColor(getResources().getColor(bcu.clear));
        View a = a((ViewGroup) onCreateView);
        if (a != null) {
            a.setBackgroundColor(getResources().getColor(bcu.clear));
            a.setOnTouchListener(this.c);
            if (!(c() == null || this.b == null)) {
                this.b.a();
            }
        }
        return onCreateView;
    }

    private View a(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                childAt = a((ViewGroup) childAt);
                if (childAt != null) {
                    return childAt;
                }
            } else if ((childAt instanceof TextureView) || (childAt instanceof SurfaceView)) {
                return childAt;
            }
        }
        return null;
    }
}
