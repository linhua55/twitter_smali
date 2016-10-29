package com.crashlytics.android.core;

/* compiled from: Twttr */
public class CrashlyticsMissingDependencyException extends RuntimeException {
    private static final long serialVersionUID = -1151536370019872859L;

    CrashlyticsMissingDependencyException(String str) {
        super(a(str));
    }

    private static String a(String str) {
        return "\n" + str + "\n";
    }
}
