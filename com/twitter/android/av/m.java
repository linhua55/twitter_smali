package com.twitter.android.av;

import com.twitter.library.api.PromotedEvent;
import com.twitter.library.av.c;
import com.twitter.library.av.playback.au;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.Video;
import com.twitter.model.av.VideoCta;
import com.twitter.model.av.k;
import com.twitter.model.core.Tweet;
import defpackage.cni;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class m implements j {
    static final String b;
    static final Map<String, PromotedEvent> c;
    static final Map<String, PromotedEvent> d;
    private final n e;
    private final au f;

    static {
        b = m.class.getName() + ".KEY_PLAYER_STATE_VIDEO_PLAY_SENT";
        Map hashMap = new HashMap();
        hashMap.put("playback_start", PromotedEvent.VIDEO_CONTENT_PLAYBACK_START);
        hashMap.put("playback_25", PromotedEvent.VIDEO_CONTENT_PLAYBACK_25);
        hashMap.put("playback_50", PromotedEvent.VIDEO_CONTENT_PLAYBACK_50);
        hashMap.put("playback_75", PromotedEvent.VIDEO_CONTENT_PLAYBACK_75);
        hashMap.put("playback_95", PromotedEvent.VIDEO_CONTENT_PLAYBACK_95);
        hashMap.put("playback_complete", PromotedEvent.VIDEO_CONTENT_PLAYBACK_COMPLETE);
        hashMap.put("cta_app_install_click", PromotedEvent.VIDEO_CTA_APP_INSTALL_CLICK);
        hashMap.put("cta_app_open_click", PromotedEvent.VIDEO_CTA_APP_OPEN_CLICK);
        hashMap.put("cta_watch_click", PromotedEvent.VIDEO_CTA_WATCH_CLICK);
        hashMap.put("cta_url_click", PromotedEvent.VIDEO_CTA_URL_CLICK);
        hashMap.put("video_view", PromotedEvent.VIDEO_CONTENT_VIEW);
        hashMap.put("view_threshold", PromotedEvent.VIDEO_CONTENT_VIEW_THRESHOLD);
        hashMap.put("play_from_tap", PromotedEvent.VIDEO_CONTENT_PLAY_FROM_TAP);
        hashMap.put("video_mrc_view", PromotedEvent.VIDEO_CONTENT_MRC_VIEW);
        hashMap.put("video_groupm_view", PromotedEvent.VIDEO_CONTENT_GROUPM_VIEW);
        hashMap.put("video_1sec_view", PromotedEvent.VIDEO_CONTENT_1SEC_VIEW);
        hashMap.put("video_session", PromotedEvent.VIDEO_SESSION);
        c = Collections.unmodifiableMap(hashMap);
        hashMap = new HashMap();
        hashMap.put("playback_start", PromotedEvent.VIDEO_AD_PLAYBACK_START);
        hashMap.put("playback_25", PromotedEvent.VIDEO_AD_PLAYBACK_25);
        hashMap.put("playback_50", PromotedEvent.VIDEO_AD_PLAYBACK_50);
        hashMap.put("playback_75", PromotedEvent.VIDEO_AD_PLAYBACK_75);
        hashMap.put("playback_95", PromotedEvent.VIDEO_AD_PLAYBACK_95);
        hashMap.put("playback_complete", PromotedEvent.VIDEO_AD_PLAYBACK_COMPLETE);
        hashMap.put("cta_app_install_click", PromotedEvent.VIDEO_CTA_APP_INSTALL_CLICK);
        hashMap.put("cta_app_open_click", PromotedEvent.VIDEO_CTA_APP_OPEN_CLICK);
        hashMap.put("cta_watch_click", PromotedEvent.VIDEO_CTA_WATCH_CLICK);
        hashMap.put("cta_url_click", PromotedEvent.VIDEO_CTA_URL_CLICK);
        hashMap.put("video_view", PromotedEvent.VIDEO_AD_VIEW);
        hashMap.put("view_threshold", PromotedEvent.VIDEO_AD_VIEW_THRESHOLD);
        hashMap.put("marketplace_ad_impression", PromotedEvent.IMPRESSION);
        hashMap.put("play_from_tap", PromotedEvent.VIDEO_AD_PLAY_FROM_TAP);
        hashMap.put("video_mrc_view", PromotedEvent.VIDEO_AD_MRC_VIEW);
        hashMap.put("video_groupm_view", PromotedEvent.VIDEO_AD_GROUPM_VIEW);
        hashMap.put("video_1sec_view", PromotedEvent.VIDEO_AD_1SEC_VIEW);
        hashMap.put("video_session", PromotedEvent.VIDEO_SESSION);
        d = Collections.unmodifiableMap(hashMap);
    }

    public m(au auVar, boolean z) {
        this(new n(z), auVar);
    }

    protected m(n nVar, au auVar) {
        this.e = nVar;
        this.f = auVar;
    }

    public static boolean a(Tweet tweet) {
        return !p.a(tweet);
    }

    public void a(c cVar) {
        cni cni;
        String str = null;
        if (a(cVar.e, cVar.d)) {
            cni = k.a(cVar.d).c;
        } else {
            cni = this.f.c().i().b();
        }
        if (cni != null) {
            String b;
            String c;
            if (cVar.e instanceof Video) {
                VideoCta k = ((Video) cVar.e).k();
                if (k != null) {
                    b = k.b();
                    c = k.c();
                    str = k.d();
                    this.e.a(this.f, cni, cVar, cVar.c, b, c, str, cVar.p);
                }
            }
            c = null;
            b = null;
            this.e.a(this.f, cni, cVar, cVar.c, b, c, str, cVar.p);
        }
    }

    private boolean a(AVMedia aVMedia, AVMediaPlaylist aVMediaPlaylist) {
        if (aVMedia == null || aVMediaPlaylist == null) {
            return false;
        }
        DynamicAd a = k.a(aVMediaPlaylist);
        if (a != null && a.b() && a.a(aVMedia)) {
            return true;
        }
        return false;
    }
}
