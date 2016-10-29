package com.twitter.android.av.watchmode;

import android.content.Context;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class r implements c<q> {
    static final /* synthetic */ boolean a;
    private final cwk<q> b;
    private final cxj<Context> c;
    private final cxj<TwitterScribeAssociation> d;
    private final cxj<AVDataSource> e;

    static {
        a = !r.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public r(cwk<q> cwk_com_twitter_android_av_watchmode_q, cxj<Context> cxj_android_content_Context, cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation, cxj<AVDataSource> cxj_com_twitter_library_av_playback_AVDataSource) {
        if (a || cwk_com_twitter_android_av_watchmode_q != null) {
            this.b = cwk_com_twitter_android_av_watchmode_q;
            if (a || cxj_android_content_Context != null) {
                this.c = cxj_android_content_Context;
                if (a || cxj_com_twitter_library_scribe_TwitterScribeAssociation != null) {
                    this.d = cxj_com_twitter_library_scribe_TwitterScribeAssociation;
                    if (a || cxj_com_twitter_library_av_playback_AVDataSource != null) {
                        this.e = cxj_com_twitter_library_av_playback_AVDataSource;
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

    public q a() {
        return (q) MembersInjectors.a(this.b, new q((Context) this.c.b(), (TwitterScribeAssociation) this.d.b(), (AVDataSource) this.e.b()));
    }

    public static c<q> a(cwk<q> cwk_com_twitter_android_av_watchmode_q, cxj<Context> cxj_android_content_Context, cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation, cxj<AVDataSource> cxj_com_twitter_library_av_playback_AVDataSource) {
        return new r(cwk_com_twitter_android_av_watchmode_q, cxj_android_content_Context, cxj_com_twitter_library_scribe_TwitterScribeAssociation, cxj_com_twitter_library_av_playback_AVDataSource);
    }
}
