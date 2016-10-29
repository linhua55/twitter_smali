package com.twitter.android.initialization;

import aks;
import android.content.Context;
import bdj;
import bus;
import com.twitter.android.av.ba;
import com.twitter.android.av.bi;
import com.twitter.android.card.j;
import com.twitter.android.client.t;
import com.twitter.android.client.x;
import com.twitter.android.util.aq;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.media.manager.TwitterImageRequester.Factory;
import com.twitter.library.media.manager.l;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.media.ui.image.BaseMediaImageView;
import defpackage.ani;
import defpackage.aof;
import defpackage.bdg;
import defpackage.cbz;
import rx;
import ry;
import rz;

/* compiled from: Twttr */
public class SingletonInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        x.a(context);
        l.a(context);
        aq.a(context);
        bus.a();
        cbz.a(new aks());
        j.a();
        t.a(context);
        AVPlayer.a(new bi());
        AVPlayer.a(ba.a);
        com.twitter.library.widget.tweet.content.j.a(new ani());
        TwitterDataSyncService.a(context);
        BaseMediaImageView.setImageRequesterFactory(new Factory());
        bdj a = bdj.a(context);
        a.a(new rx(context));
        a.a(new bdg(context));
        a.a(new rz(context));
        a.a(new ry(context));
    }
}
