package defpackage;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bef */
public class bef {
    public static String a(Context context, String str) {
        if (str == null) {
            return null;
        }
        Builder buildUpon = Uri.parse(str).buildUpon();
        CharSequence string = PreferenceManager.getDefaultSharedPreferences(context).getString("kdt", BuildConfig.VERSION_NAME);
        if (aj.b(string)) {
            buildUpon.appendQueryParameter("kdt", string);
        }
        return buildUpon.toString();
    }

    public static String a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("kdt", BuildConfig.VERSION_NAME);
    }

    public static void b(Context context, String str) {
        if (aj.b((CharSequence) str)) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString("kdt", str).apply();
        }
    }
}
