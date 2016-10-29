package com.crashlytics.android.answers;

import java.util.HashSet;

/* compiled from: Twttr */
final class SamplingEventFilter$1 extends HashSet<Type> {
    SamplingEventFilter$1() {
        add(Type.START);
        add(Type.RESUME);
        add(Type.PAUSE);
        add(Type.STOP);
    }
}
