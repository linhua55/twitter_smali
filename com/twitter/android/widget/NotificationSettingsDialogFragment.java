package com.twitter.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.os.Bundle;
import bbu;
import com.twitter.app.common.account.a;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.app.common.base.d;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public final class NotificationSettingsDialogFragment extends BaseDialogFragment {
    private String a;
    private a c;
    private int d;
    private String e;
    private Context f;
    private TwitterScribeItem g;
    private String h;
    private String i;

    static /* synthetic */ int a(NotificationSettingsDialogFragment notificationSettingsDialogFragment, int i) {
        int i2 = notificationSettingsDialogFragment.d ^ i;
        notificationSettingsDialogFragment.d = i2;
        return i2;
    }

    public /* synthetic */ d g() {
        return a();
    }

    public static NotificationSettingsDialogFragment a(String str, String str2, String str3, String str4) {
        return (NotificationSettingsDialogFragment) ((da) ((da) ((da) ((da) new da(0).a(str)).b(str2)).c(str3)).d(str4)).i();
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f = activity;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new IntentFilter().addAction(PushRegistration.b);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("NotificationSettingsDialogFragment_account_name", this.a);
        bundle.putString("collapse_key", this.e);
        bundle.putString("event_id", this.h);
        bundle.putString("query", this.i);
    }

    public cy a() {
        return cy.a(getArguments());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.app.Dialog onCreateDialog(android.os.Bundle r12) {
        /*
        r11 = this;
        r10 = 2;
        r0 = -1;
        r5 = 1;
        r6 = 0;
        if (r12 != 0) goto L_0x009b;
    L_0x0006:
        r1 = r11.a();
        r2 = r1.a();
        r11.a = r2;
        r2 = r1.b();
        r11.e = r2;
        r2 = r1.c();
        r11.h = r2;
        r1 = r1.d();
        r11.i = r1;
    L_0x0022:
        r1 = new com.twitter.library.scribe.TwitterScribeItem;
        r1.<init>();
        r11.g = r1;
        r1 = r11.f;
        r7 = r1.getResources();
        r1 = r11.a;
        r1 = com.twitter.library.util.b.b(r1);
        r11.c = r1;
        r1 = r11.e;
        r2 = r1.hashCode();
        switch(r2) {
            case 956662491: goto L_0x00c1;
            default: goto L_0x0040;
        };
    L_0x0040:
        r1 = r0;
    L_0x0041:
        switch(r1) {
            case 0: goto L_0x00cd;
            default: goto L_0x0044;
        };
    L_0x0044:
        r2 = "";
        r1 = "";
    L_0x004a:
        r3 = r11.f;
        r4 = r11.c;
        r4 = r4.d();
        r3 = com.twitter.library.platform.notifications.PushRegistration.a(r3, r4);
        r11.d = r3;
        r3 = r11.d;
        r3 = r3 & r0;
        if (r0 != r3) goto L_0x00f8;
    L_0x005d:
        r4 = r5;
    L_0x005e:
        if (r4 == 0) goto L_0x00fb;
    L_0x0060:
        r3 = 2131363217; // 0x7f0a0591 float:1.8346237E38 double:1.0530333443E-314;
    L_0x0063:
        r3 = r7.getString(r3);
        r8 = new java.lang.String[r10];
        r9 = 2131363433; // 0x7f0a0669 float:1.8346675E38 double:1.053033451E-314;
        r10 = new java.lang.Object[r10];
        r10[r6] = r3;
        r10[r5] = r2;
        r2 = r7.getString(r9, r10);
        r8[r6] = r2;
        r2 = 2131362041; // 0x7f0a00f9 float:1.8343851E38 double:1.0530327633E-314;
        r2 = r7.getString(r2);
        r8[r5] = r2;
        r2 = new android.app.AlertDialog$Builder;
        r3 = r11.getActivity();
        r2.<init>(r3);
        r1 = r2.setTitle(r1);
        r3 = new com.twitter.android.widget.cx;
        r3.<init>(r11, r0, r4);
        r1.setItems(r8, r3);
        r0 = r2.create();
        return r0;
    L_0x009b:
        r1 = "NotificationSettingsDialogFragment_account_name";
        r1 = r12.getString(r1);
        r11.a = r1;
        r1 = "collapse_key";
        r1 = r12.getString(r1);
        r11.e = r1;
        r1 = "event_id";
        r1 = r12.getString(r1);
        r11.h = r1;
        r1 = "query";
        r1 = r12.getString(r1);
        r11.i = r1;
        goto L_0x0022;
    L_0x00c1:
        r2 = "event_parrot";
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x0040;
    L_0x00ca:
        r1 = r6;
        goto L_0x0041;
    L_0x00cd:
        r0 = 2131363136; // 0x7f0a0540 float:1.8346072E38 double:1.0530333043E-314;
        r2 = r7.getString(r0);
        r0 = 2131363455; // 0x7f0a067f float:1.834672E38 double:1.053033462E-314;
        r1 = r7.getString(r0);
        r0 = 131072; // 0x20000 float:1.83671E-40 double:6.47582E-319;
        r3 = r11.g;
        r4 = r11.h;
        r3.b = r4;
        r3 = r11.g;
        r4 = r11.i;
        r3.w = r4;
        r3 = r11.g;
        r4 = 12;
        r3.c = r4;
        r3 = r11.g;
        r4 = "event_parrot";
        r3.x = r4;
        goto L_0x004a;
    L_0x00f8:
        r4 = r6;
        goto L_0x005e;
    L_0x00fb:
        r3 = 2131363220; // 0x7f0a0594 float:1.8346243E38 double:1.053033346E-314;
        goto L_0x0063;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.widget.NotificationSettingsDialogFragment.onCreateDialog(android.os.Bundle):android.app.Dialog");
    }

    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        b("cancel");
    }

    private void b(String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b(new String[]{"search", "universal_top", TtmlNode.ANONYMOUS_REGION_ID, "recommendation", str})).a(this.g)).g(this.i));
    }
}
