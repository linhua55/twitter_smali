package com.twitter.media;

import android.os.Build;

/* compiled from: Twttr */
public class NativeInit {
    static boolean a;
    static boolean b;

    private static native boolean nativeInit();

    public static synchronized void a() {
        synchronized (NativeInit.class) {
            if (!b) {
                try {
                    if (c()) {
                        System.loadLibrary("twittermedia");
                        if (nativeInit()) {
                            a = true;
                        }
                    }
                    b = true;
                } catch (Exception e) {
                    b = true;
                } catch (LinkageError e2) {
                    b = true;
                } catch (Throwable th) {
                    b = true;
                }
            }
        }
    }

    public static boolean b() {
        a();
        return a;
    }

    private static boolean c() {
        return Build.CPU_ABI.equalsIgnoreCase("armeabi") || Build.CPU_ABI.equalsIgnoreCase("armeabi-v7a") || Build.CPU_ABI.equalsIgnoreCase("x86");
    }
}
