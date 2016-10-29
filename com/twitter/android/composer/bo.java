package com.twitter.android.composer;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentManager;
import com.twitter.android.media.camera.VideoTooltipManager;
import com.twitter.android.mx;
import com.twitter.android.util.j;
import com.twitter.android.util.t;
import com.twitter.library.client.bg;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.Tooltip;
import com.twitter.ui.widget.af;
import defpackage.buv;
import java.util.HashMap;
import java.util.Map;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class bo implements af {
    public static final String[] a;
    private static bo b;
    private final Map<String, Map<String, t>> c;
    private Tooltip d;
    private final Context e;
    private af f;
    private boolean g;

    static {
        a = new String[]{"record_video_tooltip", "found_media_tooltip", "stickers_composer_tooltip"};
    }

    private bo(Context context) {
        this.c = new HashMap();
        this.e = context;
    }

    public static bo a(Context context, FragmentManager fragmentManager, Bundle bundle) {
        bo boVar;
        if (b != null) {
            boVar = b;
        } else {
            boVar = new bo(context);
        }
        if (bundle != null) {
            boVar.g = bundle.getBoolean("composer_tooltip_suppress_in_session");
            for (String findFragmentByTag : a) {
                Tooltip tooltip = (Tooltip) fragmentManager.findFragmentByTag(findFragmentByTag);
                if (tooltip != null) {
                    tooltip.a(boVar);
                    boVar.d = tooltip;
                    break;
                }
            }
        }
        return boVar;
    }

    public void a(af afVar) {
        this.f = afVar;
    }

    boolean a(String str) {
        TwitterUser f = bg.a().c().f();
        if (this.g || f == null) {
            return false;
        }
        if (str.equals("record_video_tooltip") && (!j.a() || VideoTooltipManager.a(this.e.getApplicationContext()))) {
            return false;
        }
        if (str.equals("stickers_composer_tooltip") && !buv.a(false)) {
            return false;
        }
        t tVar = (t) c().get(str);
        boolean z = tVar != null && tVar.a();
        return z;
    }

    void a(String str, FragmentManager fragmentManager) {
        int i = 2131559277;
        if (a(str)) {
            int i2;
            int i3;
            Object obj = -1;
            switch (str.hashCode()) {
                case -617825071:
                    if (str.equals("record_video_tooltip")) {
                        obj = null;
                        break;
                    }
                    break;
                case 516891181:
                    if (str.equals("stickers_composer_tooltip")) {
                        obj = 3;
                        break;
                    }
                    break;
                case 816581178:
                    if (str.equals("found_media_umf_tooltip")) {
                        obj = 2;
                        break;
                    }
                    break;
                case 1263919275:
                    if (str.equals("found_media_tooltip")) {
                        obj = 1;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case mx.View_android_theme /*0*/:
                    i2 = 2131362040;
                    i3 = 2131952248;
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                case WireMessage.WIRE_CONTROL /*2*/:
                    i2 = 2131362735;
                    i3 = 2131952249;
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    i2 = 2131363884;
                    i3 = 2131952243;
                    i = 2131559133;
                    break;
                default:
                    return;
            }
            this.d = Tooltip.a(this.e.getApplicationContext(), i3).a(i2).b(i).d(2131952221).a(this).a(fragmentManager, str);
            b(str);
        }
    }

    boolean a() {
        return this.d != null;
    }

    @VisibleForTesting
    void b(String str) {
        t tVar = (t) c().get(str);
        if (tVar != null) {
            tVar.b();
        }
        if (str.equals("found_media_umf_tooltip")) {
            b("found_media_tooltip");
        }
        b();
    }

    void b() {
        this.g = true;
    }

    void a(Bundle bundle) {
        bundle.putBoolean("composer_tooltip_suppress_in_session", this.g);
    }

    private Map<String, t> c() {
        Context context = this.e;
        String e = bg.a().c().e();
        if (!this.c.containsKey(e)) {
            Map hashMap = new HashMap();
            hashMap.put("record_video_tooltip", new t(context, "record_video_tooltip", 1, 0, e));
            hashMap.put("found_media_tooltip", t.a(context, "found_media_tooltip", e));
            hashMap.put("stickers_composer_tooltip", t.a(context, "stickers_composer_tooltip", e));
            hashMap.put("found_media_umf_tooltip", new t(context, "found_media_umf_tooltip", ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0, e));
            this.c.put(e, hashMap);
        }
        return (Map) this.c.get(e);
    }

    public void a(Tooltip tooltip, int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                tooltip.a(true);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                this.d = null;
                break;
        }
        if (this.f != null) {
            this.f.a(tooltip, i);
        }
    }
}
