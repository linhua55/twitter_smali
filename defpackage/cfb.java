package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
/* renamed from: cfb */
public abstract class cfb {
    private static final CopyOnWriteArrayList<cfc> a;

    static {
        a = new CopyOnWriteArrayList();
    }

    public static void a(cfc cfc) {
        a.addIfAbsent(cfc);
    }

    public static boolean a() {
        return !a.isEmpty();
    }

    public static void a(String str, String str2) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).a(str, str2);
        }
    }

    public static void b(String str, String str2) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).b(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).a(str, str2, th);
        }
    }

    public static void c(String str, String str2) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).c(str, str2);
        }
    }

    public static void d(String str, String str2) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).d(str, str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).b(str, str2, th);
        }
    }

    public static void e(String str, String str2) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).e(str, str2);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        int size = a.size();
        for (int i = 0; i < size; i++) {
            ((cfc) a.get(i)).c(str, str2, th);
        }
    }

    public static String a(Throwable th) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }
}
