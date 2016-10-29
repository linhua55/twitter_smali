package defpackage;

import android.content.Intent;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: aol */
public class aol {
    static <T> void a(Intent intent, String str, T t, n<T> nVar) {
        ab.a(intent, aol.a("RESULT_CUSTOM", str), (Object) t, (n) nVar);
    }

    public static <T> T a(Intent intent, n<T> nVar) {
        return aol.a(intent, BuildConfig.VERSION_NAME, nVar);
    }

    public static <T> T a(Intent intent, String str, n<T> nVar) {
        return ab.a(intent, aol.a("RESULT_CUSTOM", str), (n) nVar);
    }

    private static String a(String str, String str2) {
        return aj.a((CharSequence) str2) ? str : str + "_" + str2;
    }
}
