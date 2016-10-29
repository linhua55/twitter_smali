package com.twitter.android.widget;

import java.util.Comparator;
import java.util.Locale;

/* compiled from: Twttr */
class bw implements Comparator<Locale> {
    final /* synthetic */ LocalePreference a;

    bw(LocalePreference localePreference) {
        this.a = localePreference;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Locale) obj, (Locale) obj2);
    }

    public int a(Locale locale, Locale locale2) {
        int compareTo = locale.getLanguage().compareTo(locale2.getLanguage());
        return compareTo == 0 ? locale.getCountry().compareTo(locale2.getCountry()) : compareTo;
    }
}
