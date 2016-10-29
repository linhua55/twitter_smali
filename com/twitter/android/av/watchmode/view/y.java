package com.twitter.android.av.watchmode.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import cgu;
import com.twitter.android.av.watchmode.h;
import com.twitter.android.client.av;
import com.twitter.android.kr;
import com.twitter.library.av.playback.AVDataSource;

/* compiled from: Twttr */
public class y extends av<AVDataSource, WatchModeListItemView> {
    private final LayoutInflater a;
    private final kr b;
    private final h c;
    private s d;
    private o e;

    public /* synthetic */ View b(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public y(LayoutInflater layoutInflater, h hVar, kr krVar) {
        this.a = layoutInflater;
        this.c = hVar;
        this.b = krVar;
    }

    public WatchModeListItemView a(ViewGroup viewGroup, int i) {
        WatchModeListItemView watchModeListItemView = (WatchModeListItemView) this.a.inflate(2130969535, viewGroup, false);
        watchModeListItemView.setScrollClickListener(this.d);
        watchModeListItemView.setFullscreenListener(this.e);
        return watchModeListItemView;
    }

    protected void a(WatchModeListItemView watchModeListItemView, AVDataSource aVDataSource, int i) {
        watchModeListItemView.setVideoContainerConfig(this.c.a(watchModeListItemView, aVDataSource));
        this.b.a(watchModeListItemView, aVDataSource, new Bundle());
    }

    protected void a(s sVar) {
        this.d = sVar;
    }

    public void a(o oVar) {
        this.e = oVar;
    }

    public cgu<AVDataSource> a(cgu<AVDataSource> cgu_com_twitter_library_av_playback_AVDataSource) {
        if (getItemCount() != 1 || cgu_com_twitter_library_av_playback_AVDataSource == null || cgu_com_twitter_library_av_playback_AVDataSource.aU_() < 2) {
            return super.a((cgu) cgu_com_twitter_library_av_playback_AVDataSource);
        }
        cgu<AVDataSource> b = super.b(cgu_com_twitter_library_av_playback_AVDataSource);
        notifyItemRangeInserted(1, cgu_com_twitter_library_av_playback_AVDataSource.aU_() - 1);
        return b;
    }
}
