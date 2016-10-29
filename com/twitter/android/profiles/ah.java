package com.twitter.android.profiles;

import android.content.Context;
import android.os.Bundle;
import com.twitter.android.ProfileActivity;
import com.twitter.android.ProfileActivity.DisplayState;
import com.twitter.android.ProfileBlockedProfileFragment;
import com.twitter.android.ProfileBlockerInterstitialFragment;
import com.twitter.android.ProfileProtectedViewFragment;
import com.twitter.android.mx;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;
import defpackage.brz;
import defpackage.bvy;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ah {
    private Context a;
    private Bundle b;
    private TwitterUser c;
    private boolean d;
    private m e;
    private int f;
    private bvy g;
    private DisplayState h;

    public ah() {
        this.b = new Bundle();
        this.d = false;
        this.h = DisplayState.NO_USER;
    }

    public ah a(Context context) {
        this.a = context;
        return this;
    }

    public ah a(Bundle bundle) {
        this.b = bundle;
        return this;
    }

    public ah a(TwitterUser twitterUser) {
        this.c = twitterUser;
        return this;
    }

    public ah a(boolean z) {
        this.d = z;
        return this;
    }

    public ah a(m mVar) {
        this.e = mVar;
        return this;
    }

    public ah a(int i) {
        this.f = i;
        return this;
    }

    public ah a(bvy bvy) {
        this.g = bvy;
        return this;
    }

    public ah a(DisplayState displayState) {
        this.h = displayState;
        return this;
    }

    public v a() {
        if (this.a == null || this.b == null || this.c == null || this.h == DisplayState.NO_USER) {
            return null;
        }
        switch (ai.a[this.h.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new x(this.a, this.b, this.c, this.d, false);
            case WireMessage.WIRE_CONTROL /*2*/:
                if (this.e == null) {
                    return null;
                }
                if (brz.b(this.e)) {
                    return new x(this.a, this.b, this.c, this.d, true);
                }
                return new x(this.a, this.b, this.c, this.d, false);
            case WireMessage.WIRE_AUTH /*3*/:
                return new an(this.b, this.c, ProfileActivity.f, ProfileBlockedProfileFragment.class);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return new an(this.b, this.c, ProfileActivity.g, ProfileBlockerInterstitialFragment.class);
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return new an(this.b, this.c, ProfileActivity.e, ProfileProtectedViewFragment.class);
            default:
                return null;
        }
    }
}
