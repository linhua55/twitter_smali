package com.twitter.android.livevideo.player;

import cwk;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class b implements c<a> {
    static final /* synthetic */ boolean a;
    private final cwk<a> b;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public b(cwk<a> cwk_com_twitter_android_livevideo_player_a) {
        if (a || cwk_com_twitter_android_livevideo_player_a != null) {
            this.b = cwk_com_twitter_android_livevideo_player_a;
            return;
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) MembersInjectors.a(this.b, new a());
    }

    public static c<a> a(cwk<a> cwk_com_twitter_android_livevideo_player_a) {
        return new b(cwk_com_twitter_android_livevideo_player_a);
    }
}
