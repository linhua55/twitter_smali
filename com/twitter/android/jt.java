package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import bqk;
import ccc;
import cgu;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.av.video.n;
import com.twitter.android.widget.cb;
import com.twitter.config.d;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.be;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import com.twitter.util.collection.ReferenceList;
import com.twitter.util.math.Size;
import cpb;
import defpackage.bcw;
import defpackage.cgr;
import java.util.Iterator;

/* compiled from: Twttr */
public class jt extends cb<jv> {
    @VisibleForTesting
    private final Context a;
    private final int b;
    private final OnClickListener c;
    private final kr<View, Object> d;
    private final ReferenceList<MediaImageView> e;
    private final TwitterScribeAssociation f;
    private boolean g;

    public jt(Context context, int i, OnClickListener onClickListener, kr<View, Object> krVar, TwitterScribeAssociation twitterScribeAssociation) {
        super(context);
        this.e = ReferenceList.a();
        this.a = context;
        this.b = i;
        this.c = onClickListener;
        this.d = krVar;
        this.f = twitterScribeAssociation;
    }

    public int getViewTypeCount() {
        return 2;
    }

    public int getItemViewType(int i) {
        jv jvVar = (jv) getItem(i);
        if (jvVar != null && d.a("android_media_profile_tab_autoplay_videos") && be.b(jvVar.b)) {
            return 1;
        }
        return 0;
    }

    public long getItemId(int i) {
        jv jvVar = (jv) getItem(i);
        if (jvVar != null) {
            return jvVar.c();
        }
        return Long.MIN_VALUE;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (getItemViewType(i) == 0) {
            return b(i, view, viewGroup);
        }
        return a(i, view, viewGroup);
    }

    @VisibleForTesting
    View a(int i, View view, ViewGroup viewGroup) {
        OnClickListener juVar;
        if (view instanceof VideoContainerHost) {
            view = (VideoContainerHost) view;
            view.a();
        } else {
            view = (VideoContainerHost) LayoutInflater.from(this.a).inflate(2130969527, viewGroup, false);
        }
        jv jvVar = (jv) getItem(i);
        TweetAVDataSource tweetAVDataSource = new TweetAVDataSource(jvVar.d());
        if (tweetAVDataSource.d()) {
            juVar = new ju(this, view);
        } else {
            juVar = this.c;
        }
        view.setVideoContainerConfig(new n(tweetAVDataSource, this.f, bqk.c, Mode.a, juVar));
        view.setTag(new jy(jvVar, null));
        return view;
    }

    @VisibleForTesting
    View b(int i, View view, ViewGroup viewGroup) {
        if (view instanceof MediaImageView) {
            view = (MediaImageView) view;
        } else {
            view = (MediaImageView) LayoutInflater.from(this.a).inflate(2130969180, viewGroup, false);
        }
        OnClickListener onClickListener = this.c;
        kr krVar = this.d;
        jv jvVar = (jv) getItem(i);
        Tweet d = jvVar.d();
        view.setOnClickListener(onClickListener);
        view.setTag(new jy(jvVar, view));
        view.setFromMemoryOnly(this.g);
        view.setAspectRatio(jvVar.a());
        if (view.a(jvVar.b())) {
            RichImageView richImageView = (RichImageView) view.getImageView();
            if (be.d(d) || d.L()) {
                richImageView.setOverlayDrawable(bcw.player_overlay);
            } else {
                richImageView.setOverlayDrawable(2130840027);
            }
            a(richImageView, jvVar.b, jvVar.d, jvVar.c, this.a.getResources().getDimensionPixelSize(2131689713));
            if (this.g) {
                this.e.b(view);
            }
            krVar.a(view, null, Bundle.EMPTY);
        }
        view.setVisibility(0);
        return view;
    }

    public cgu<jv> a(Cursor cursor) {
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        if (cursor == null || !cursor.moveToFirst()) {
            return new cgr((Iterable) d.q(), cursor);
        }
        int i = this.b;
        do {
            long j = cursor.getLong(i);
            Tweet a = ccc.a.a(cursor);
            MediaEntity c;
            if (a.h()) {
                for (MediaEntity c2 : cpb.a(a, Size.b)) {
                    d.c(new jv(j, a, c2));
                }
            } else if (a.M()) {
                c2 = cpb.c(a.Y());
                if (c2 != null) {
                    d.c(new jv(j, a, c2));
                }
            } else if (a.L() || be.c(a)) {
                ImageSpec o = be.o(a);
                if (o != null && aj.b(o.c)) {
                    d.c(new jv(j, a, a.aa()));
                }
            }
        } while (cursor.moveToNext());
        return new cgr((Iterable) d.q(), cursor);
    }

    public cgu<jv> ad_() {
        return cgr.b();
    }

    public void b(boolean z) {
        if (this.g != z) {
            this.g = z;
            if (!this.g) {
                Iterator it = this.e.iterator();
                while (it.hasNext()) {
                    ((MediaImageView) it.next()).setFromMemoryOnly(false);
                }
                this.e.b();
            }
        }
    }
}
