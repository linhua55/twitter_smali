package com.twitter.android.eventtimelines;

import android.content.res.Resources;
import com.twitter.android.eventtimelines.page.d;
import com.twitter.android.eventtimelines.page.g;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import cxj;
import dagger.internal.c;
import java.util.Random;

/* compiled from: Twttr */
public final class q implements c<p> {
    static final /* synthetic */ boolean a;
    private final cxj<di> b;
    private final cxj<Resources> c;
    private final cxj<g> d;
    private final cxj<Session> e;
    private final cxj<d> f;
    private final cxj<Random> g;
    private final cxj<l> h;
    private final cxj<SearchTimelineState> i;

    static {
        a = !q.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public q(cxj<di> cxj_com_twitter_library_provider_di, cxj<Resources> cxj_android_content_res_Resources, cxj<g> cxj_com_twitter_android_eventtimelines_page_g, cxj<Session> cxj_com_twitter_library_client_Session, cxj<d> cxj_com_twitter_android_eventtimelines_page_d, cxj<Random> cxj_java_util_Random, cxj<l> cxj_com_twitter_android_eventtimelines_l, cxj<SearchTimelineState> cxj_com_twitter_android_eventtimelines_SearchTimelineState) {
        if (a || cxj_com_twitter_library_provider_di != null) {
            this.b = cxj_com_twitter_library_provider_di;
            if (a || cxj_android_content_res_Resources != null) {
                this.c = cxj_android_content_res_Resources;
                if (a || cxj_com_twitter_android_eventtimelines_page_g != null) {
                    this.d = cxj_com_twitter_android_eventtimelines_page_g;
                    if (a || cxj_com_twitter_library_client_Session != null) {
                        this.e = cxj_com_twitter_library_client_Session;
                        if (a || cxj_com_twitter_android_eventtimelines_page_d != null) {
                            this.f = cxj_com_twitter_android_eventtimelines_page_d;
                            if (a || cxj_java_util_Random != null) {
                                this.g = cxj_java_util_Random;
                                if (a || cxj_com_twitter_android_eventtimelines_l != null) {
                                    this.h = cxj_com_twitter_android_eventtimelines_l;
                                    if (a || cxj_com_twitter_android_eventtimelines_SearchTimelineState != null) {
                                        this.i = cxj_com_twitter_android_eventtimelines_SearchTimelineState;
                                        return;
                                    }
                                    throw new AssertionError();
                                }
                                throw new AssertionError();
                            }
                            throw new AssertionError();
                        }
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public p a() {
        return new p((di) this.b.b(), (Resources) this.c.b(), (g) this.d.b(), (Session) this.e.b(), (d) this.f.b(), (Random) this.g.b(), (l) this.h.b(), (SearchTimelineState) this.i.b());
    }

    public static c<p> a(cxj<di> cxj_com_twitter_library_provider_di, cxj<Resources> cxj_android_content_res_Resources, cxj<g> cxj_com_twitter_android_eventtimelines_page_g, cxj<Session> cxj_com_twitter_library_client_Session, cxj<d> cxj_com_twitter_android_eventtimelines_page_d, cxj<Random> cxj_java_util_Random, cxj<l> cxj_com_twitter_android_eventtimelines_l, cxj<SearchTimelineState> cxj_com_twitter_android_eventtimelines_SearchTimelineState) {
        return new q(cxj_com_twitter_library_provider_di, cxj_android_content_res_Resources, cxj_com_twitter_android_eventtimelines_page_g, cxj_com_twitter_library_client_Session, cxj_com_twitter_android_eventtimelines_page_d, cxj_java_util_Random, cxj_com_twitter_android_eventtimelines_l, cxj_com_twitter_android_eventtimelines_SearchTimelineState);
    }
}
