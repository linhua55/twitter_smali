package com.twitter.library.media.util;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/* compiled from: Twttr */
final class aa implements a {
    final /* synthetic */ Activity a;

    aa(Activity activity) {
        this.a = activity;
    }

    public void a(Intent intent, int i, Bundle bundle) {
        this.a.startActivityForResult(intent, i);
    }
}
