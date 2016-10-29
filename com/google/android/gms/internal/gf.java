package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.api.v;
import com.twitter.android.mx;
import java.lang.ref.WeakReference;
import java.util.Map;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@oi
public abstract class gf implements v {
    protected Context a;
    protected String b;
    protected WeakReference<sz> c;

    public gf(sz szVar) {
        this.a = szVar.getContext();
        this.b = ar.e().a(this.a, szVar.o().b);
        this.c = new WeakReference(szVar);
    }

    private void a(String str, Map<String, String> map) {
        sz szVar = (sz) this.c.get();
        if (szVar != null) {
            szVar.a(str, (Map) map);
        }
    }

    private String c(String str) {
        String str2 = "internal";
        Object obj = -1;
        switch (str.hashCode()) {
            case -1396664534:
                if (str.equals("badUrl")) {
                    obj = 6;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    obj = 2;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    obj = 7;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    obj = 3;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    obj = 1;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    obj = 8;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    obj = 9;
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    obj = null;
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    obj = 5;
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    obj = 4;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return "internal";
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return "io";
            case mx.UserView_actionButtonPaddingBottom /*6*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return "network";
            case ControlMessage.CONTROL_BAN /*8*/:
            case mx.TwitterEditText_messageSize /*9*/:
                return "policy";
            default:
                return str2;
        }
    }

    public void a() {
    }

    protected void a(String str, String str2, int i) {
        a.a.post(new gh(this, str, str2, i));
    }

    protected void a(String str, String str2, int i, int i2, boolean z) {
        a.a.post(new gg(this, str, str2, i, i2, z));
    }

    protected void a(String str, String str2, String str3, String str4) {
        a.a.post(new gi(this, str, str2, str3, str4));
    }

    public abstract boolean a(String str);

    protected String b(String str) {
        return aa.a().a(str);
    }

    public abstract void b();
}
