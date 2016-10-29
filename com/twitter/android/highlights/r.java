package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import com.twitter.library.av.playback.AVPlayerAttachment;
import defpackage.bli;
import java.util.Map;

/* compiled from: Twttr */
public class r extends as {
    private final int a;
    private final String b;
    private final int c;

    public r(String str, int i, int i2) {
        super("LoadingStory", 2147483647L, 0, new bli(0, 0, null), true, null, null);
        this.b = str;
        this.a = i;
        this.c = i2;
    }

    public int a() {
        return 13;
    }

    String c() {
        return this.b;
    }

    boolean d() {
        return this.c == 3;
    }

    boolean e() {
        return this.c == 2;
    }

    public at a(View view) {
        return new s(view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new q();
    }

    public Intent a(Context context) {
        return null;
    }

    public String b() {
        return null;
    }
}
