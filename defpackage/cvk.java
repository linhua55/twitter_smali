package defpackage;

/* compiled from: Twttr */
/* renamed from: cvk */
public final class cvk {
    public static boolean a(String str) {
        return str != null && (str.startsWith("application/json") || str.startsWith("text/html") || str.startsWith("text/plain") || str.startsWith("text/xml") || str.startsWith("application/xml") || str.startsWith("application/javascript") || str.startsWith("text/json") || str.startsWith("text/javascript"));
    }
}
