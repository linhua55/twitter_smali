package com.twitter.app.users;

import android.content.Intent;
import android.os.Bundle;

/* compiled from: Twttr */
public class aa extends z<aa> {
    public aa(Bundle bundle) {
        super(bundle);
    }

    public aa(y yVar) {
        super(yVar);
    }

    public static aa a(Intent intent) {
        return new aa(intent != null ? intent.getExtras() : null);
    }
}
