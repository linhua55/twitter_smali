package com.twitter.library.api;

import bzh;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.android.mx;
import com.twitter.internal.network.k;
import com.twitter.library.service.a;
import com.twitter.library.service.c;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.g;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.ObjectUtils;
import defpackage.cun;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;

@Deprecated
/* compiled from: Twttr */
public class as extends c {
    private final int a;
    private final TwitterUser b;
    private Object c;
    private boolean d;

    private as(TwitterUser twitterUser, int i) {
        this.d = false;
        this.b = twitterUser;
        this.a = i;
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        Throwable th;
        if (str != null) {
            if (str.startsWith("application/json")) {
                Closeable closeable = null;
                try {
                    JsonParser a = at.a(inputStream);
                    if (i != 200) {
                        switch (this.a) {
                            case mx.AppCompatTheme_dividerVertical /*55*/:
                                if (i >= 200 && i < 300) {
                                    this.c = at.d(a);
                                    break;
                                }
                                this.c = g.c(a, cd.class);
                                this.d = true;
                                break;
                                break;
                            case mx.AppCompatTheme_popupMenuStyle /*60*/:
                                cd cdVar = (cd) g.c(a, cd.class);
                                ca caVar = (ca) CollectionUtils.b((Iterable) cdVar);
                                if (i != 403 || caVar == null || caVar.b != 85) {
                                    this.c = cdVar;
                                    this.d = true;
                                    break;
                                }
                                this.c = at.a(cdVar);
                                break;
                                break;
                            default:
                                this.c = g.c(a, cd.class);
                                this.d = true;
                                break;
                        }
                    }
                    try {
                        switch (this.a) {
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                this.c = at.m(a);
                                break;
                            case mx.UserView_actionButtonPaddingRight /*5*/:
                                this.c = at.o(a);
                                break;
                            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                                this.c = at.B(a);
                                break;
                            case mx.TwitterEditText_messageSize /*9*/:
                                this.c = at.r(a);
                                break;
                            case mx.TwitterEditText_messageStyle /*10*/:
                                this.c = UserSettings.a(a);
                                break;
                            case mx.TwitterEditText_maxCharacterCount /*11*/:
                                this.c = at.n(a);
                                break;
                            case mx.TwitterEditText_characterCounterMode /*13*/:
                                this.c = at.C(a);
                                break;
                            case mx.TwitterButton_labelMargin /*14*/:
                                this.c = at.F(a);
                                break;
                            case mx.TwitterButton_strokeWidth /*15*/:
                                this.c = at.I(a);
                                break;
                            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                                this.c = at.G(a);
                                break;
                            case mx.TwitterButton_knockout /*18*/:
                                this.c = at.f(a);
                                break;
                            case mx.TweetView_mediaTopMargin /*21*/:
                                this.c = at.a(a);
                                break;
                            case mx.TweetView_autoLink /*24*/:
                                this.c = at.a(a, this.b);
                                break;
                            case mx.TweetView_mediaTagIcon /*27*/:
                                this.c = at.s(a);
                                break;
                            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                                this.c = at.t(a);
                                break;
                            case mx.TweetView_tweetViewLayoutId /*29*/:
                                this.c = at.E(a);
                                break;
                            case mx.AppCompatTheme_actionModeSplitBackground /*30*/:
                                this.c = Integer.valueOf(at.h(a));
                                break;
                            case mx.AppCompatTheme_actionModePopupWindowStyle /*39*/:
                                this.c = at.H(a);
                                break;
                            case mx.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                                this.c = at.K(a);
                                break;
                            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                                this.c = at.u(a);
                                break;
                            case mx.AppCompatTheme_listDividerAlertDialog /*44*/:
                                this.c = at.b(a, this.b);
                                break;
                            case mx.AppCompatTheme_actionDropDownStyle /*45*/:
                                this.c = at.d(a, this.b);
                                break;
                            case mx.AppCompatTheme_homeAsUpIndicator /*48*/:
                                this.c = at.g(a);
                                break;
                            case mx.AppCompatTheme_buttonBarStyle /*50*/:
                                this.c = Long.valueOf(at.Q(a));
                                break;
                            case mx.AppCompatTheme_buttonBarButtonStyle /*51*/:
                                this.c = at.c(a);
                                break;
                            case mx.AppCompatTheme_selectableItemBackgroundBorderless /*53*/:
                                this.c = at.T(a);
                                break;
                            case mx.AppCompatTheme_borderlessButtonStyle /*54*/:
                                this.c = at.U(a);
                                break;
                            case mx.AppCompatTheme_dividerVertical /*55*/:
                                this.c = at.d(a);
                                break;
                            case mx.AppCompatTheme_activityChooserViewStyle /*57*/:
                                this.c = at.f(a, this.b);
                                break;
                            case mx.AppCompatTheme_toolbarStyle /*58*/:
                                this.c = at.V(a);
                                break;
                            case mx.AppCompatTheme_popupMenuStyle /*60*/:
                                this.c = g.c(a, TwitterUser.class);
                                break;
                            case mx.AppCompatTheme_editTextBackground /*63*/:
                                this.c = at.O(a);
                                break;
                            case mx.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                                this.c = at.P(a);
                                break;
                            case mx.AppCompatTheme_panelMenuListTheme /*80*/:
                                this.c = Boolean.valueOf(at.b(a));
                                break;
                            case mx.AppCompatTheme_colorControlNormal /*85*/:
                                this.c = at.R(a);
                                break;
                            case mx.AppCompatTheme_colorControlActivated /*86*/:
                                this.c = Boolean.valueOf(at.W(a));
                                break;
                            case mx.AppCompatTheme_colorControlHighlight /*87*/:
                                this.c = Boolean.valueOf(at.X(a));
                                break;
                            case mx.AppCompatTheme_colorButtonNormal /*88*/:
                                this.c = at.S(a);
                                break;
                            case mx.AppCompatTheme_colorSwitchThumbNormal /*89*/:
                                this.c = at.p(a);
                                break;
                            case mx.AppCompatTheme_controlBackground /*90*/:
                                this.c = at.Z(a);
                                break;
                            case mx.AppCompatTheme_alertDialogStyle /*91*/:
                                this.c = at.l(a);
                                break;
                            case mx.AppCompatTheme_alertDialogCenterButtons /*93*/:
                                this.c = Boolean.valueOf(at.i(a));
                                break;
                            case mx.AppCompatTheme_alertDialogTheme /*94*/:
                                this.c = at.j(a);
                                break;
                            case mx.AppCompatTheme_textColorAlertDialogListItem /*95*/:
                                this.c = at.k(a);
                                break;
                            case mx.AppCompatTheme_buttonBarPositiveButtonStyle /*96*/:
                                this.c = at.q(a);
                                break;
                            case mx.AppCompatTheme_buttonBarNegativeButtonStyle /*97*/:
                                this.c = at.Y(a);
                                break;
                            case mx.AppCompatTheme_buttonBarNeutralButtonStyle /*98*/:
                                this.c = bzh.a(a);
                                break;
                            case mx.AppCompatTheme_buttonStyle /*100*/:
                                this.c = at.aa(a);
                                break;
                            case mx.AppCompatTheme_buttonStyleSmall /*101*/:
                                this.c = at.ab(a);
                                break;
                            case mx.AppCompatTheme_checkboxStyle /*102*/:
                                this.c = bzh.b(a);
                                break;
                            case mx.AppCompatTheme_editTextStyle /*104*/:
                                this.c = at.L(a);
                                break;
                            case mx.AppCompatTheme_radioButtonStyle /*105*/:
                                this.c = at.c(a, this.b);
                                break;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = a;
                        cun.a(closeable);
                        throw th;
                    }
                    cun.a((Closeable) a);
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    cun.a(closeable);
                    throw th;
                }
            }
            throw new IOException("Reader could not validate. content-type=[" + str + "], or encoding=[" + str2 + "]");
        }
    }

    public <T> T b() {
        return ObjectUtils.a(this.c);
    }

    public static as a(int i) {
        return new as(null, i);
    }

    public static as a(int i, TwitterUser twitterUser) {
        return new as(twitterUser, i);
    }

    public void a(k kVar) {
        if (this.d) {
            ca caVar = (ca) CollectionUtils.b((cd) this.c);
            if (caVar != null) {
                kVar.j = caVar.b;
            }
        }
    }

    public a a() {
        return this.d ? a.a((cd) this.c) : null;
    }
}
