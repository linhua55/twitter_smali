package com.twitter.android.media.stickers;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentManager;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.ui.widget.Tooltip;
import com.twitter.ui.widget.af;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class h implements af {
    private final Context a;
    private final SharedPreferences b;
    private final FragmentManager c;
    private final String d;
    private Tooltip e;

    public h(Context context, FragmentManager fragmentManager, String str) {
        this.a = context;
        this.c = fragmentManager;
        this.d = str;
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public void a() {
        if (c()) {
            this.e = Tooltip.a(this.a, this.d).a(2131363882).a(this).a(this.c, "media_viewer_tag");
            this.b.edit().putBoolean("sticker_media_viewer_tooltip", false).apply();
        }
    }

    public void b() {
        if (this.e != null) {
            this.e.a(true);
        }
    }

    public void a(Tooltip tooltip, int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                ((Tooltip) e.a(tooltip)).a(true);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.e = null;
            default:
        }
    }

    private boolean c() {
        return this.b.getBoolean("sticker_media_viewer_tooltip", true);
    }
}
