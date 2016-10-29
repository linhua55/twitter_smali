package com.twitter.android.browser;

import android.content.Context;
import cbp;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.BrowserTimingHelper.Dwell;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.WebsiteAssetsLog;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.ImmutableList;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.caw;
import defpackage.cbs;
import defpackage.cgl;
import defpackage.cmb;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class h {
    private final Context a;
    private final long b;
    private final Tweet c;
    private final boolean d;
    private final cbs e;
    private String f;
    private String g;
    private TwitterScribeLog h;

    public h(Context context, long j, Tweet tweet, cbs cbs) {
        this.a = context;
        this.b = j;
        this.c = tweet;
        boolean z = this.c != null && this.c.q();
        this.d = z;
        this.e = cbs;
        if (this.c != null) {
            cgl aa = this.c.aa();
            if (aa != null) {
                cmb N = aa.N();
                if (N != null) {
                    this.f = caw.a("website_url", N);
                    this.g = caw.a("website_dest_url", N);
                }
            }
        }
    }

    void a() {
        this.h = b("load_started");
    }

    void a(long j) {
        if (this.d && j > 0) {
            Dwell dwell = Dwell.a;
            while (dwell != null && ((long) dwell.c()) * 1000 < j) {
                a(dwell.a());
                dwell = dwell.b();
            }
        }
    }

    void a(PromotedEvent promotedEvent) {
        if (this.d) {
            this.e.a(cbp.a(promotedEvent, this.c.f).a());
        }
    }

    void a(String str) {
        if (this.c != null) {
            bbu.a(b(str));
        }
    }

    void a(long j, long j2) {
        if (this.c != null) {
            a((TwitterScribeLog) ((TwitterScribeLog) b("dismiss").b(j)).f(String.valueOf(j2)));
        }
    }

    void a(long j, Map<String, String> map) {
        if (this.c != null) {
            a(this.h);
            a((TwitterScribeLog) ((TwitterScribeLog) b("load_finished").b(j)).f(aq.a((Map) map)));
        }
    }

    TwitterScribeLog b(String str) {
        return ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.b).b("web_view::::" + str)).d(this.f)).m(this.g)).a(this.a, this.c, null, null);
    }

    private void a(TwitterScribeLog twitterScribeLog) {
        bbu.a((bbw) twitterScribeLog);
    }

    void a(WebsiteAssetsLog websiteAssetsLog) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.b).h("asset_prefetching_event")).b("web_view::::assets_loaded")).a(this.a)).a(websiteAssetsLog));
    }

    void a(String str, List<String> list) {
        int size = list == null ? 0 : list.size();
        if (str != null && size >= 2 && size <= 15) {
            List subList;
            if (str.equals((String) list.get(0))) {
                subList = list.subList(1, size);
            }
            List<String> a = ImmutableList.a(subList);
            if (a.size() > 1) {
                bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.b).b("web_view::::tco_resolution")).d(str);
                for (String c : a) {
                    bbw.a(TwitterScribeItem.c(c));
                }
                bbu.a(bbw);
            }
        }
    }
}
