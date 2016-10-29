package com.twitter.android.av.watchmode;

import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;
import cxj;
import dagger.internal.c;
import uz;

/* compiled from: Twttr */
public final class j implements c<i> {
    static final /* synthetic */ boolean a;
    private final cxj<uz> b;
    private final cxj<AVDataSource> c;
    private final cxj<TwitterScribeAssociation> d;

    static {
        a = !j.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public j(cxj<uz> cxj_uz, cxj<AVDataSource> cxj_com_twitter_library_av_playback_AVDataSource, cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation) {
        if (a || cxj_uz != null) {
            this.b = cxj_uz;
            if (a || cxj_com_twitter_library_av_playback_AVDataSource != null) {
                this.c = cxj_com_twitter_library_av_playback_AVDataSource;
                if (a || cxj_com_twitter_library_scribe_TwitterScribeAssociation != null) {
                    this.d = cxj_com_twitter_library_scribe_TwitterScribeAssociation;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public i a() {
        return new i((uz) this.b.b(), (AVDataSource) this.c.b(), (TwitterScribeAssociation) this.d.b());
    }

    public static c<i> a(cxj<uz> cxj_uz, cxj<AVDataSource> cxj_com_twitter_library_av_playback_AVDataSource, cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation) {
        return new j(cxj_uz, cxj_com_twitter_library_av_playback_AVDataSource, cxj_com_twitter_library_scribe_TwitterScribeAssociation);
    }
}
