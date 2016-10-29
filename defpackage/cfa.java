package defpackage;

import android.os.Process;
import android.util.Log;
import com.twitter.config.AppConfig;
import com.twitter.util.collection.ImmutableCollection;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.b;
import com.twitter.util.h;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Collection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: cfa */
public class cfa {
    private static final Pattern a;

    static {
        a = Pattern.compile("\\(\\s*(\\d+)\\):");
    }

    public static void a(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (Log.isLoggable(str, 3)) {
            Log.d(str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (Log.isLoggable(str, 4)) {
            Log.i(str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (Log.isLoggable(str, 6)) {
            Log.e(str, str2);
        }
    }

    public static void a(String str, String str2, String str3) {
        AppConfig m = AppConfig.m();
        if (m.a() || m.b() || m.o()) {
            Log.d(str, "[" + str3 + "]: " + str2);
        }
    }

    public static Collection<String> a(boolean z) {
        h.c();
        Collection a = MutableList.a();
        cfa.a(a, z);
        return ImmutableList.a(a);
    }

    public static Collection<String> a(int i, boolean z) {
        h.c();
        Collection bVar = new b(i);
        cfa.a(bVar, z);
        return ImmutableCollection.a(bVar);
    }

    private static void a(Collection<String> collection, boolean z) {
        h.c();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -v brief -d").getInputStream()));
            String num = Integer.toString(Process.myPid());
            while (true) {
                CharSequence readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return;
                }
                if (z) {
                    Matcher matcher = a.matcher(readLine);
                    if (!matcher.find() || matcher.group(1).equals(num)) {
                        collection.add(readLine);
                    }
                } else {
                    collection.add(readLine);
                }
            }
        } catch (IOException e) {
        }
    }
}
