package com.google.android.gms.location;

import java.util.Comparator;

final class b implements Comparator<DetectedActivity> {
    b() {
    }

    public int a(DetectedActivity detectedActivity, DetectedActivity detectedActivity2) {
        int compareTo = Integer.valueOf(detectedActivity2.b()).compareTo(Integer.valueOf(detectedActivity.b()));
        return compareTo == 0 ? Integer.valueOf(detectedActivity.a()).compareTo(Integer.valueOf(detectedActivity2.a())) : compareTo;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((DetectedActivity) obj, (DetectedActivity) obj2);
    }
}
