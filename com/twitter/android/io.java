package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.annotation.DrawableRes;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import com.google.android.exoplayer.MediaFormat;
import com.twitter.android.dialog.LoggedOutDialogFragment;
import com.twitter.android.dialog.g;
import com.twitter.android.dialog.n;
import com.twitter.android.util.AppEventTrack;
import com.twitter.android.util.bi;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bbw;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class io {
    public static boolean a() {
        return bg.a().e();
    }

    public static boolean a(Activity activity) {
        return a() && activity.getIntent().getBooleanExtra("is_landing_page", false);
    }

    public static void a(FragmentActivity fragmentActivity, int i, String str) {
        LoggedOutDialogFragment d = d(fragmentActivity, i, str);
        a((Activity) fragmentActivity, d.b() + "::impression");
        d.show(fragmentActivity.getSupportFragmentManager(), "logged_out_dialog_fragment");
    }

    public static void b(FragmentActivity fragmentActivity, int i, String str) {
        new Handler(Looper.getMainLooper()).post(new ip(fragmentActivity, d(fragmentActivity, i, str)));
    }

    private static LoggedOutDialogFragment d(FragmentActivity fragmentActivity, int i, String str) {
        return (LoggedOutDialogFragment) ((n) ((n) ((n) ((n) new g(0).a(a((Activity) fragmentActivity, i)).c(2131362936)).d(2131362935)).b(a((Activity) fragmentActivity, i, str))).a(a(i))).i();
    }

    private static String a(Activity activity, int i) {
        String str;
        String b = b((Context) activity);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                str = "favorite";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_BAN /*8*/:
                str = "retweet";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                str = "reply";
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                str = "follow";
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                str = "following";
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                str = "followers";
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case mx.TwitterEditText_messageSize /*9*/:
                str = "favorites";
                break;
            case mx.TwitterEditText_messageStyle /*10*/:
                str = "share_via_dm";
                break;
            default:
                throw new IllegalArgumentException("Unknown action " + i);
        }
        return b + ":login_signup_dialog:" + str;
    }

    @VisibleForTesting
    static String a(Activity activity, int i, String str) {
        int i2;
        switch (i) {
            case MediaFormat.NO_VALUE /*-1*/:
                i2 = 2131362940;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                i2 = 2131362941;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                i2 = 2131362944;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                i2 = 2131362943;
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                i2 = 2131362937;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                i2 = 2131362939;
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                i2 = 2131362938;
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                i2 = 2131362942;
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                i2 = 2131362947;
                break;
            case mx.TwitterEditText_messageSize /*9*/:
                i2 = 2131362946;
                break;
            case mx.TwitterEditText_messageStyle /*10*/:
                i2 = 2131362945;
                break;
            default:
                throw new IllegalArgumentException("Unknown action " + i);
        }
        return activity.getString(i2, new Object[]{e.b(str)});
    }

    @DrawableRes
    private static int a(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case mx.TwitterEditText_messageSize /*9*/:
                return 2130839449;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_BAN /*8*/:
                return 2130839451;
            case WireMessage.WIRE_AUTH /*3*/:
                return 2130839450;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 2130839447;
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return 2130839448;
            case mx.TwitterEditText_messageStyle /*10*/:
                return 2130839452;
            default:
                return 0;
        }
    }

    public static void b(Activity activity) {
        Intent putExtra = new Intent(activity, FlowActivity.class).putExtra("flow_data", bi.a(activity).a(false, false, true));
        Parcelable intent = activity.getIntent();
        if (intent != null) {
            putExtra.putExtra("android.intent.extra.INTENT", intent);
        }
        activity.startActivity(putExtra);
    }

    public static void a(boolean z, Intent intent) {
        if (a()) {
            intent.putExtra("is_landing_page", z);
        }
    }

    public static void c(Activity activity) {
        activity.startActivity(d(activity));
    }

    public static Intent d(Activity activity) {
        Intent intent = new Intent(activity, LoginActivity.class);
        Parcelable intent2 = activity.getIntent();
        if (intent2 != null) {
            intent.putExtra("android.intent.extra.INTENT", intent2);
        }
        return intent;
    }

    public static void a(Activity activity, String str) {
        if (a(activity)) {
            bbw bbw = (TwitterScribeLog) new TwitterScribeLog(0).b(str);
            AppEventTrack.a((Context) activity, (TwitterScribeLog) bbw);
            bbu.a(bbw);
        }
    }

    public static void b(Activity activity, String str) {
        if (a(activity)) {
            PreferenceManager.getDefaultSharedPreferences(activity).edit().putString("logged_out_landing", str).apply();
            a(activity, "external:" + str + ":::impression");
        }
    }

    public static void a(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().remove("logged_out_landing").apply();
    }

    public static String b(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("logged_out_landing", "external");
    }

    public static void c(FragmentActivity fragmentActivity, int i, String str) {
        int i2 = 0;
        if (i == 12) {
            i2 = 8;
        } else if (i == 11) {
            i2 = 9;
        }
        a(fragmentActivity, i2, str);
    }
}
