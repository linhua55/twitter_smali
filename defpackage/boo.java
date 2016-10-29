package defpackage;

import android.content.Context;
import bdc;
import bop;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: boo */
public class boo {
    public static boolean a() {
        return d.a("profile_birthday_delight_enabled");
    }

    public static boolean b() {
        return d.a("profile_birthday_display_enabled");
    }

    public static boolean c() {
        return d.a("profile_birthday_collection_enabled");
    }

    public static boolean d() {
        return d.a("profile_account_linking_vine_display_enabled");
    }

    public static boolean e() {
        return d.a("profile_account_linking_vine_edit_enabled");
    }

    public static boolean f() {
        return d.a("profile_account_linking_forced_extended_profile_request_enabled");
    }

    public static com.twitter.model.profile.d a(ExtendedProfile extendedProfile) {
        if (extendedProfile != null && extendedProfile.b()) {
            return extendedProfile.i;
        }
        return null;
    }

    public static boolean a(ExtendedProfile extendedProfile, boolean z) {
        com.twitter.model.profile.d a = boo.a(extendedProfile);
        return (a == null || a.e == z) ? false : true;
    }

    public static String a(Visibility visibility, Context context) {
        switch (bop.a[visibility.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return context.getResources().getString(bdc.edit_birthdate_visibility_self);
            case WireMessage.WIRE_CONTROL /*2*/:
                return context.getResources().getString(bdc.edit_birthdate_visibility_followers);
            case WireMessage.WIRE_AUTH /*3*/:
                return context.getResources().getString(bdc.edit_birthdate_visibility_following);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return context.getResources().getString(bdc.edit_birthdate_visibility_mutualfollow);
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return context.getResources().getString(bdc.edit_birthdate_visibility_public);
            default:
                return null;
        }
    }
}
