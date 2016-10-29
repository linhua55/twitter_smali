package org.slf4j.helpers;

/* compiled from: Twttr */
public class d {
    public static final void a(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }

    public static final void a(String str) {
        System.err.println("SLF4J: " + str);
    }
}
