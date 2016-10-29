package com.twitter.android.smartfollow;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import com.twitter.android.smartfollow.finishingtimeline.FinishingTimelineState;
import com.twitter.android.smartfollow.finishingtimeline.a;
import com.twitter.android.smartfollow.followpeople.FollowPeopleState;
import com.twitter.android.smartfollow.waitingforsuggestions.WaitingForSuggestionsState;
import com.twitter.app.common.inject.d;
import com.twitter.app.common.inject.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;

/* compiled from: Twttr */
public class o extends d {
    private final t a;
    private final int b;

    public o(t tVar, int i) {
        this.a = tVar;
        this.b = i;
    }

    static Session a(bg bgVar) {
        return bgVar.c();
    }

    static l a(Application application, Session session) {
        return new l(application, session.e());
    }

    static Handler a() {
        return new Handler(Looper.getMainLooper());
    }

    int b() {
        return this.b;
    }

    FinishingTimelineState c() {
        return (FinishingTimelineState) this.a.a("presenter_finishing_timeline");
    }

    FollowPeopleState d() {
        return (FollowPeopleState) this.a.a("presenter_follow_people");
    }

    WaitingForSuggestionsState e() {
        return (WaitingForSuggestionsState) this.a.a("presenter_waiting_for_suggestions");
    }

    static com.twitter.app.common.di.d a(a aVar) {
        return aVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.smartfollow.followpeople.a aVar) {
        return aVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.smartfollow.interestpicker.a aVar) {
        return aVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.smartfollow.sharelocation.a aVar) {
        return aVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.smartfollow.waitingforsuggestions.a aVar) {
        return aVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.smartfollow.importcontacts.a aVar) {
        return aVar;
    }
}
