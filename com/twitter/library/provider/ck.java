package com.twitter.library.provider;

import android.net.Uri;
import android.net.Uri.Builder;
import com.twitter.android.mx;
import com.twitter.config.a;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ck {
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final Uri e;

    static {
        a = a.a() + ".permission.RESTRICTED";
        b = a.a() + "AVATARS_CHANGED";
        c = a.a() + ".provider.TwitterProvider";
        d = "content://" + c + '/';
        e = Uri.parse(d);
    }

    public static Builder a(Builder builder, long j) {
        return builder.appendQueryParameter("ownerId", String.valueOf(j));
    }

    public static Uri a(Uri uri, long j) {
        return a(uri.buildUpon(), j).build();
    }

    public static Uri a(long j, long j2) {
        return dc.d.buildUpon().appendEncodedPath(String.valueOf(j)).appendQueryParameter("ownerId", String.valueOf(j2)).build();
    }

    public static Uri b(long j, long j2) {
        return dc.a.buildUpon().appendEncodedPath(String.valueOf(j)).appendQueryParameter("ownerId", String.valueOf(j2)).build();
    }

    public static Uri a(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                return df.b;
            case WireMessage.WIRE_CHAT /*1*/:
                return df.c;
            case WireMessage.WIRE_CONTROL /*2*/:
                return df.k;
            case WireMessage.WIRE_AUTH /*3*/:
                return df.g;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return df.h;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return df.e;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return df.d;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return df.p;
            case ControlMessage.CONTROL_BAN /*8*/:
                return df.j;
            case mx.TwitterEditText_messageSize /*9*/:
                return df.l;
            case mx.TwitterEditText_messageStyle /*10*/:
                return df.n;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return df.m;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return df.o;
            case mx.TwitterEditText_characterCounterMode /*13*/:
                return df.i;
            case mx.TwitterButton_labelMargin /*14*/:
                return df.f;
            default:
                return null;
        }
    }
}
