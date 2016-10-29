package com.twitter.android.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import bdl;
import buv;
import cgl;
import chk;
import com.twitter.android.client.w;
import com.twitter.library.media.util.ac;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.CollectionUtils;
import cpb;

/* compiled from: Twttr */
public abstract class cb<T> extends bdl<T> implements chk<T>, w {
    protected cb(Context context) {
        super(context);
    }

    protected final View a(Context context, T t, ViewGroup viewGroup) {
        return null;
    }

    protected final void a(View view, Context context, T t) {
    }

    protected void a(RichImageView richImageView, Tweet tweet, cgl cgl, MediaEntity mediaEntity, int i) {
        if (cgl != null) {
            a(richImageView, cgl, i);
        } else if (mediaEntity != null) {
            a(richImageView, tweet, mediaEntity, i);
        } else {
            a(richImageView, i);
        }
    }

    private void a(RichImageView richImageView, cgl cgl, int i) {
        if (cgl.v()) {
            richImageView.a(2130840234, i);
        } else if (cgl.u()) {
            richImageView.a(2130837600, i);
        } else if (cgl.w()) {
            richImageView.a(2130840052, i);
        } else {
            a(richImageView, i);
        }
    }

    private void a(RichImageView richImageView, Tweet tweet, MediaEntity mediaEntity, int i) {
        if (cpb.d(mediaEntity)) {
            a(richImageView, i);
        } else if (mediaEntity.m.equals(Type.c)) {
            if (ac.a(tweet)) {
                richImageView.a(2130840202, i);
            } else {
                richImageView.a(2130838703, i);
            }
        } else if (!buv.b() || CollectionUtils.b(mediaEntity.r)) {
            a(richImageView, i);
        } else {
            richImageView.a(2130840205, i);
        }
    }

    private void a(RichImageView richImageView, int i) {
        richImageView.a(0, i);
    }
}
