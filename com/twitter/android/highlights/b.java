package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import bli;
import com.twitter.library.av.playback.AVPlayerAttachment;
import java.util.Map;

/* compiled from: Twttr */
public class b extends as {
    public final int a;
    public boolean b;

    public b(int i) {
        super("EmptyStory", 2147483647L, 0, new bli(0, 0, null), true, null, null);
        this.a = i;
    }

    public int a() {
        return 12;
    }

    public at a(View view) {
        return new c(view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new a();
    }

    public Intent a(Context context) {
        return null;
    }

    public String b() {
        return null;
    }
}
