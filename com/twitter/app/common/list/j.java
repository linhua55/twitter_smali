package com.twitter.app.common.list;

import android.content.Intent;
import android.os.Bundle;

/* compiled from: Twttr */
public class j extends i<j> {
    public j(Bundle bundle) {
        super(bundle);
    }

    public j(h hVar) {
        super(hVar);
    }

    public static j a(Intent intent) {
        return new j(intent != null ? intent.getExtras() : null);
    }
}
