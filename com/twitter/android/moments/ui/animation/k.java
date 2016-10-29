package com.twitter.android.moments.ui.animation;

import android.content.Context;
import com.google.android.exoplayer.DefaultLoadControl;
import com.twitter.internal.network.i;
import com.twitter.library.network.j;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import cvi;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class k extends x implements i {
    private final String a;
    private final File b;

    protected k(Context context, String str, String str2, File file) {
        super(context, str);
        this.a = str2;
        this.b = file;
    }

    protected void a_(aa aaVar) {
        aaVar.a(new j(this.p, this.a).a(this).a(DefaultLoadControl.DEFAULT_HIGH_WATERMARK_MS).a().c());
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        byte[] b = cvi.b(inputStream);
        if (b != null) {
            cvi.a(b, this.b);
        }
    }

    public void a(com.twitter.internal.network.k kVar) {
    }
}
