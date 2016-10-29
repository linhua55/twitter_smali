package com.twitter.media;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;

/* compiled from: Twttr */
public class NativeCrashHandler {
    private static a a;

    private static native boolean nativeInstall(String str, boolean z);

    public static synchronized void a(File file) {
        Closeable fileReader;
        Closeable bufferedReader;
        Throwable th;
        Closeable closeable = null;
        synchronized (NativeCrashHandler.class) {
            try {
                fileReader = new FileReader(file);
                try {
                    bufferedReader = new BufferedReader(fileReader);
                    try {
                        String readLine = bufferedReader.readLine();
                        String readLine2 = bufferedReader.readLine();
                        if (!(readLine == null || readLine2 == null)) {
                            a.a((CrashType) Enum.valueOf(CrashType.class, readLine), readLine2);
                        }
                        MediaUtils.a(fileReader);
                        MediaUtils.a(bufferedReader);
                    } catch (Exception e) {
                        closeable = bufferedReader;
                        bufferedReader = fileReader;
                        MediaUtils.a(bufferedReader);
                        MediaUtils.a(closeable);
                        file.delete();
                    } catch (Throwable th2) {
                        th = th2;
                        MediaUtils.a(fileReader);
                        MediaUtils.a(bufferedReader);
                        throw th;
                    }
                } catch (Exception e2) {
                    bufferedReader = fileReader;
                    MediaUtils.a(bufferedReader);
                    MediaUtils.a(closeable);
                    file.delete();
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    bufferedReader = null;
                    th = th4;
                    MediaUtils.a(fileReader);
                    MediaUtils.a(bufferedReader);
                    throw th;
                }
            } catch (Exception e3) {
                bufferedReader = null;
                MediaUtils.a(bufferedReader);
                MediaUtils.a(closeable);
                file.delete();
            } catch (Throwable th32) {
                fileReader = null;
                th = th32;
                bufferedReader = null;
                MediaUtils.a(fileReader);
                MediaUtils.a(bufferedReader);
                throw th;
            }
            try {
                file.delete();
            } catch (Exception e4) {
            }
        }
    }

    public static synchronized boolean a(File file, boolean z, a aVar) {
        boolean z2;
        synchronized (NativeCrashHandler.class) {
            try {
                a = aVar;
                if (file.exists()) {
                    a(file);
                }
                if (NativeInit.b() && nativeInstall(file.getAbsolutePath(), z)) {
                    z2 = true;
                }
            } catch (Exception e) {
            } catch (LinkageError e2) {
            }
            z2 = false;
        }
        return z2;
    }
}
