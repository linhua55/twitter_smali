package com.twitter.android.av.watchmode;

import bqk;
import com.twitter.android.av.video.a;
import com.twitter.android.av.video.n;
import com.twitter.android.av.watchmode.view.WatchModeListItemView;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.util.object.e;
import cvi;
import rx.o;
import uz;
import vd;

/* compiled from: Twttr */
public class i implements h {
    private final uz a;
    private final TwitterScribeAssociation b;
    private final TwitterScribeAssociation c;
    private final AVDataSource d;
    private final o<vd> e;

    public i(uz uzVar, AVDataSource aVDataSource, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = uzVar;
        this.d = aVDataSource;
        this.e = this.a.a(aVDataSource);
        ((TwitterScribeAssociation) twitterScribeAssociation.b("watch_mode")).c(null);
        this.b = (TwitterScribeAssociation) new TwitterScribeAssociation(twitterScribeAssociation).d("original_video");
        this.c = (TwitterScribeAssociation) new TwitterScribeAssociation(twitterScribeAssociation).d("suggested_video");
    }

    public o<vd> a() {
        return (o) e.a(this.e);
    }

    private TwitterScribeAssociation a(AVDataSource aVDataSource) {
        if (c(aVDataSource)) {
            return this.b;
        }
        return this.c;
    }

    public n a(WatchModeListItemView watchModeListItemView, AVDataSource aVDataSource) {
        return (n) new com.twitter.android.av.video.o().a(aVDataSource).a(Mode.i).a(a.b(aVDataSource)).a(watchModeListItemView.getChromeView()).a(a(aVDataSource)).a(b(aVDataSource)).q();
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.RETAINED) {
            cvi.a(this.a);
        }
    }

    private bqk b(AVDataSource aVDataSource) {
        if (c(aVDataSource)) {
            return bqk.b;
        }
        return bqk.h;
    }

    private boolean c(AVDataSource aVDataSource) {
        return aVDataSource == this.d;
    }
}
