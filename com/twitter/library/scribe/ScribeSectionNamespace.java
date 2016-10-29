package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ScribeSectionNamespace extends ScribeSection {
    public static final Creator<ScribeSectionNamespace> CREATOR;
    private static final String[] a;

    static {
        CREATOR = new ag();
        a = new String[]{"client", "page", "section", "component", "element", "action"};
    }

    public ScribeSectionNamespace(String str) {
        int i = 0;
        super(null, 6);
        String[] split = str.split(":", 6);
        if (split.length == 5) {
            a(0, "android");
            while (i < 5) {
                a(i + 1, split[i]);
                i++;
            }
        }
    }

    public ScribeSectionNamespace(Parcel parcel) {
        super(parcel);
    }

    protected String a(int i) {
        return a[i];
    }
}
