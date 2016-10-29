package com.twitter.android.av;

import com.twitter.library.av.ai;
import com.twitter.library.av.c;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.a;
import com.twitter.model.av.k;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class bg extends d {
    static final Set<String> c;

    static {
        Set hashSet = new HashSet();
        hashSet.add("show");
        hashSet.add("open");
        hashSet.add("video_ad_skip");
        hashSet.add("view_more_videos:impression");
        hashSet.add("cta_app_open_impression");
        hashSet.add("cta_app_install_impression");
        hashSet.add("cta_url_impression");
        hashSet.add("cta_watch_impression");
        hashSet.add("cta_app_open_click");
        hashSet.add("cta_app_install_click");
        hashSet.add("cta_url_click");
        hashSet.add("cta_watch_click");
        hashSet.add("view_threshold");
        hashSet.add("play_from_tap");
        hashSet.add("video_view");
        hashSet.add("video_mrc_view");
        hashSet.add("heartbeat");
        c = Collections.unmodifiableSet(hashSet);
    }

    public bg(AVDataSource aVDataSource) {
        super(aVDataSource);
    }

    public boolean a(String str) {
        return c.contains(str);
    }

    public boolean b(String str) {
        return a(str);
    }

    public TwitterScribeItem a(c cVar) {
        TwitterScribeItem a = this.a.a(cVar.a, cVar.b);
        TwitterScribeLog.a(this.a.a(), a);
        if (cVar.e != null) {
            long j;
            String c = this.b ? TtmlNode.ANONYMOUS_REGION_ID : cVar.e.c();
            if (this.b) {
                j = -1;
            } else {
                j = cVar.e.j();
            }
            a.a(c, cVar.e.b(), j, cVar.h, cVar.k, cVar.m);
            a f = cVar.e.f();
            if (f != null) {
                a.X = f.b();
                a.Y = f.c();
                a.Z = f.d();
            }
        }
        if (cVar.q != null) {
            a.ac = cVar.q.longValue();
        }
        int i = (cVar.n == null || !cVar.n.f()) ? 2 : 1;
        a.ab = i;
        a(a, cVar.d);
        return a;
    }

    public static void a(TwitterScribeItem twitterScribeItem, AVMediaPlaylist aVMediaPlaylist) {
        if (ai.a()) {
            AVMedia k = aVMediaPlaylist != null ? aVMediaPlaylist.k() : null;
            if (k != null) {
                twitterScribeItem.ae = k.c();
                twitterScribeItem.af = k.j();
            }
            DynamicAd a = k.a(aVMediaPlaylist);
            twitterScribeItem.ad = a != null ? a.b : -1;
            twitterScribeItem.ag = k.b(aVMediaPlaylist);
        }
    }
}
