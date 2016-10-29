package com.twitter.app.users;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import com.twitter.android.io;
import com.twitter.android.mx;
import com.twitter.android.util.u;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.util.FriendshipCache;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class UsersActivity extends TwitterFragmentActivity {
    public t a(Bundle bundle, t tVar) {
        return new p(this, tVar);
    }

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        String action = intent.getAction();
        p pVar = (p) tVar;
        q a = q.a(intent);
        if (bundle == null) {
            aa aaVar = (aa) aa.a(intent).h(pVar.e);
            switch (pVar.f) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    aaVar.c(2131362641);
                    break;
                case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                    aaVar.c(2131362643);
                    break;
                case mx.TwitterEditText_messageStyle /*10*/:
                case mx.TwitterButton_iconLayout /*19*/:
                case mx.TweetView_mediaTopMargin /*21*/:
                    aaVar.c(2131362659);
                    break;
                case mx.TwitterButton_knockout /*18*/:
                    aaVar.c(2131362645);
                    break;
                case mx.TweetView_previewFlags /*26*/:
                    aaVar.c(2131362649);
                    break;
            }
            aaVar.a(intent.getIntExtra("fast_followers_count", -1));
            String f = a.f();
            if (!(action == null || f == null)) {
                aaVar.c(f);
            }
            Fragment usersFragment = new UsersFragment();
            usersFragment.e(!io.a());
            usersFragment.a(aaVar.d());
            getSupportFragmentManager().beginTransaction().add(2131951923, usersFragment).commit();
        }
        int i = pVar.f;
        if (i == 6) {
            setTitle(a.d());
        } else {
            setTitle(a(i));
        }
        if (i == 1) {
            u.a((TwitterFragmentActivity) this, a.a());
        }
    }

    @StringRes
    static int a(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                return 2131363386;
            case WireMessage.WIRE_CHAT /*1*/:
                return 2131363385;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 2131361963;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return 2131362317;
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TwitterButton_iconLayout /*19*/:
            case mx.TweetView_mediaTopMargin /*21*/:
                return 2131364198;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return 2131362891;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return 2131363518;
            case mx.TwitterButton_knockout /*18*/:
                return 2131362709;
            case mx.TweetView_previewFlags /*26*/:
                return 2131363127;
            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                return 2131363454;
            default:
                return 2131364116;
        }
    }

    public void onBackPressed() {
        FriendshipCache P = ((UsersFragment) getSupportFragmentManager().findFragmentById(2131951923)).P();
        if (!P.a()) {
            setResult(-1, new q().a(P).a((Context) this));
        }
        super.onBackPressed();
    }
}
