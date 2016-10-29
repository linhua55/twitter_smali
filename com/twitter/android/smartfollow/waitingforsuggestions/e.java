package com.twitter.android.smartfollow.waitingforsuggestions;

import android.os.Handler;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class e implements c<a> {
    static final /* synthetic */ boolean a;
    private final cwk<a> b;
    private final cxj<Handler> c;
    private final cxj<WaitingForSuggestionsState> d;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public e(cwk<a> cwk_com_twitter_android_smartfollow_waitingforsuggestions_a, cxj<Handler> cxj_android_os_Handler, cxj<WaitingForSuggestionsState> cxj_com_twitter_android_smartfollow_waitingforsuggestions_WaitingForSuggestionsState) {
        if (a || cwk_com_twitter_android_smartfollow_waitingforsuggestions_a != null) {
            this.b = cwk_com_twitter_android_smartfollow_waitingforsuggestions_a;
            if (a || cxj_android_os_Handler != null) {
                this.c = cxj_android_os_Handler;
                if (a || cxj_com_twitter_android_smartfollow_waitingforsuggestions_WaitingForSuggestionsState != null) {
                    this.d = cxj_com_twitter_android_smartfollow_waitingforsuggestions_WaitingForSuggestionsState;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) MembersInjectors.a(this.b, new a((Handler) this.c.b(), (WaitingForSuggestionsState) this.d.b()));
    }

    public static c<a> a(cwk<a> cwk_com_twitter_android_smartfollow_waitingforsuggestions_a, cxj<Handler> cxj_android_os_Handler, cxj<WaitingForSuggestionsState> cxj_com_twitter_android_smartfollow_waitingforsuggestions_WaitingForSuggestionsState) {
        return new e(cwk_com_twitter_android_smartfollow_waitingforsuggestions_a, cxj_android_os_Handler, cxj_com_twitter_android_smartfollow_waitingforsuggestions_WaitingForSuggestionsState);
    }
}
