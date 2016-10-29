package com.twitter.android.initialization;

import bbn;
import cuj;

/* compiled from: Twttr */
class c implements cuj<String> {
    final /* synthetic */ ErrorReporterInitializer a;

    c(ErrorReporterInitializer errorReporterInitializer) {
        this.a = errorReporterInitializer;
    }

    public boolean a(String str) {
        return (str == null || bbn.a().a(str)) ? false : true;
    }
}
