package com.twitter.platform;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.twitter.android.mx;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class n implements p {
    private final TwRadioType a;

    public n(Context context) {
        NetworkInfo a = a(context);
        Object obj = (a == null || !a.isConnectedOrConnecting()) ? null : 1;
        if (obj == null) {
            this.a = TwRadioType.a;
        } else {
            this.a = b(context);
        }
    }

    private static NetworkInfo a(Context context) {
        String str = "connectivity";
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    private static TwRadioType b(Context context) {
        NetworkInfo a = a(context);
        if (a != null && a.getType() == 1) {
            return TwRadioType.s;
        }
        String str = "phone";
        return a(((TelephonyManager) context.getSystemService("phone")).getNetworkType());
    }

    private static TwRadioType a(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                return TwRadioType.b;
            case WireMessage.WIRE_CHAT /*1*/:
                return TwRadioType.c;
            case WireMessage.WIRE_CONTROL /*2*/:
                return TwRadioType.d;
            case WireMessage.WIRE_AUTH /*3*/:
                return TwRadioType.e;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return TwRadioType.f;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return TwRadioType.g;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return TwRadioType.h;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return TwRadioType.i;
            case ControlMessage.CONTROL_BAN /*8*/:
                return TwRadioType.j;
            case mx.TwitterEditText_messageSize /*9*/:
                return TwRadioType.k;
            case mx.TwitterEditText_messageStyle /*10*/:
                return TwRadioType.l;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return TwRadioType.m;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return TwRadioType.n;
            case mx.TwitterEditText_characterCounterMode /*13*/:
                return TwRadioType.o;
            case mx.TwitterButton_labelMargin /*14*/:
                return TwRadioType.p;
            case mx.TwitterButton_strokeWidth /*15*/:
                return TwRadioType.q;
            default:
                return TwRadioType.b;
        }
    }

    public TwRadioType a() {
        return this.a;
    }
}
