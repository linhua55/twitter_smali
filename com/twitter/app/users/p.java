package com.twitter.app.users;

import com.twitter.android.io;
import com.twitter.android.mx;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class p extends t {
    public final boolean e;
    public final int f;

    p(TwitterFragmentActivity twitterFragmentActivity, t tVar) {
        boolean z = true;
        super(tVar);
        a(false);
        q a = q.a(twitterFragmentActivity.getIntent());
        this.f = a.b();
        switch (this.f) {
            case WireMessage.WIRE_CONTROL /*2*/:
            case mx.TweetView_previewFlags /*26*/:
                a(false);
                b(false);
                c(true);
                this.e = true;
                a(0);
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                c(false);
                this.e = false;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case ControlMessage.CONTROL_BAN /*8*/:
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
            case mx.TwitterButton_iconLayout /*19*/:
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                if (io.a()) {
                    z = false;
                }
                c(z);
                this.e = false;
                a(0);
            case mx.TwitterButton_knockout /*18*/:
                this.e = true;
            case mx.TweetView_mediaTopMargin /*21*/:
                a(false);
                this.e = true;
            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                a(0);
                d(true);
                this.e = false;
            default:
                c(false);
                if (a.e() != null) {
                    z = false;
                }
                this.e = z;
        }
    }
}
