package com.twitter.library.media.fresco;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.memory.a;
import com.facebook.common.memory.b;
import com.twitter.android.mx;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: Twttr */
public class f implements b {
    private static final f a;
    private final Collection<a> b;

    static {
        a = new f();
    }

    public static f a() {
        return a;
    }

    private f() {
        this.b = new ArrayList();
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.b.add(aVar);
        }
    }

    public void a(int i) {
        MemoryTrimType b = b(i);
        for (a a : this.b) {
            a.a(b);
        }
    }

    private MemoryTrimType b(int i) {
        switch (i) {
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
            case mx.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                return MemoryTrimType.d;
            case mx.AppCompatTheme_popupMenuStyle /*60*/:
            case mx.AppCompatTheme_panelMenuListTheme /*80*/:
                return MemoryTrimType.c;
            default:
                return MemoryTrimType.b;
        }
    }
}
