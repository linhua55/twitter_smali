package com.twitter.android.profilecompletionmodule;

import com.twitter.android.LocationState;
import com.twitter.android.profilecompletionmodule.addbio.AddBioState;
import com.twitter.android.profilecompletionmodule.addbio.b;
import com.twitter.android.profilecompletionmodule.addbirthday.AddBirthdayState;
import com.twitter.android.profilecompletionmodule.chooseavatar.ChooseAvatarState;
import com.twitter.android.profilecompletionmodule.chooseavatar.a;
import com.twitter.android.profilecompletionmodule.chooseheader.ChooseHeaderState;
import com.twitter.android.profilecompletionmodule.chooselocation.ChooseLocationState;
import com.twitter.android.profilecompletionmodule.profilepreview.c;
import com.twitter.app.common.inject.d;
import com.twitter.app.common.inject.t;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.collection.x;
import java.util.List;

/* compiled from: Twttr */
public class g extends d {
    private final TwitterUser a;
    private final List<String> b;
    private final t c;

    public g(TwitterUser twitterUser, List<String> list, t tVar) {
        this.a = twitterUser;
        this.b = list;
        this.c = tVar;
    }

    a a() {
        return new a(this.a.g() ? null : this.a.e);
    }

    ChooseAvatarState b() {
        return (ChooseAvatarState) this.c.a("presenter_choose_avatar");
    }

    com.twitter.android.profilecompletionmodule.chooseheader.a c() {
        return new com.twitter.android.profilecompletionmodule.chooseheader.a(this.a);
    }

    ChooseHeaderState d() {
        return (ChooseHeaderState) this.c.a("presenter_choose_header");
    }

    com.twitter.android.profilecompletionmodule.addbio.a e() {
        return new com.twitter.android.profilecompletionmodule.addbio.a(this.a.g, this.b);
    }

    AddBioState f() {
        return (AddBioState) this.c.a("presenter_add_bio");
    }

    com.twitter.android.profilecompletionmodule.addbirthday.a g() {
        return new com.twitter.android.profilecompletionmodule.addbirthday.a(this.a.t, this.a.Q, this.a.n);
    }

    AddBirthdayState h() {
        return (AddBirthdayState) this.c.a("presenter_add_birthday");
    }

    com.twitter.android.profilecompletionmodule.chooselocation.a i() {
        TwitterPlace twitterPlace = (TwitterPlace) x.a(this.a.r);
        return new com.twitter.android.profilecompletionmodule.chooselocation.a(new LocationState(twitterPlace, twitterPlace), this.a);
    }

    ChooseLocationState j() {
        return (ChooseLocationState) this.c.a("presenter_choose_location");
    }

    c k() {
        return new c(this.a);
    }

    static com.twitter.app.common.di.d a(b bVar) {
        return bVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.profilecompletionmodule.addbirthday.b bVar) {
        return bVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.profilecompletionmodule.chooseavatar.b bVar) {
        return bVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.profilecompletionmodule.chooseheader.b bVar) {
        return bVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.profilecompletionmodule.chooselocation.b bVar) {
        return bVar;
    }

    static com.twitter.app.common.di.d a(com.twitter.android.profilecompletionmodule.profilepreview.d dVar) {
        return dVar;
    }
}
