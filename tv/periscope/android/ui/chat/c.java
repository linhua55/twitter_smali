package tv.periscope.android.ui.chat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.text.TextUtils;
import dce;
import defpackage.dcy;
import defpackage.dcz;
import tv.periscope.android.library.h;
import tv.periscope.android.library.j;
import tv.periscope.android.view.w;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType;

/* compiled from: Twttr */
public class c implements w<d, Message> {
    private final boolean a;
    private final String b;
    private final boolean c;
    private final String d;
    private final a e;
    private final dce f;

    public c(Resources resources, String str, String str2, boolean z, boolean z2, a aVar, dce dce) {
        this.a = z;
        if (TextUtils.isEmpty(str)) {
            this.b = null;
        } else {
            this.b = dcz.a(resources, str);
        }
        this.c = z2;
        this.d = str2;
        this.e = aVar;
        this.f = dce;
    }

    public void a(d dVar, Message message, int i) {
        String str;
        int i2 = 0;
        Context context = dVar.itemView.getContext();
        Resources resources = context.getResources();
        int a = a(message.f());
        if (!this.c || a <= 0) {
            dVar.h.setVisibility(8);
            dVar.i.setVisibility(8);
        } else {
            dVar.h.setVisibility(0);
            dVar.i.setVisibility(0);
            dVar.i.setText(String.valueOf(a));
        }
        dVar.b.setText(dcz.a(resources, message.i()));
        if (message.b() == MessageType.BroadcasterBlockedViewer) {
            dVar.c.setText(message.r());
            str = this.d;
        } else {
            dVar.c.setText(message.m());
            str = message.l();
        }
        if (this.b == null || TextUtils.isEmpty(message.m()) || !message.m().contains(this.b)) {
            dVar.e.setVisibility(8);
        } else {
            dVar.e.setVisibility(0);
        }
        int color = resources.getColor(h.ps__light_grey);
        if (a(message.f(), message.c())) {
            dVar.f.setVisibility(0);
            dVar.g.setBackgroundResource(j.ps_bg_chat_blocked);
            dVar.b.setTextColor(resources.getColor(h.ps__white));
            dVar.c.setTextColor(resources.getColor(h.ps__white_30));
        } else {
            dVar.f.setVisibility(8);
            dVar.g.setBackgroundResource(j.ps__bg_chat);
            dVar.b.setTextColor(color);
            dVar.c.setTextColor(resources.getColor(h.ps__dark_grey));
        }
        if (message.d() != null) {
            i2 = message.d().intValue();
        }
        dVar.d.setImageDrawable(null);
        dVar.d.getBackground().setColorFilter(dcy.a(resources, i2), Mode.SRC_ATOP);
        if (a(message.f(), message.c())) {
            dVar.d.setColorFilter(resources.getColor(h.ps__light_grey_90));
        } else if (this.a) {
            dVar.d.setColorFilter(dcy.b(resources, i2));
        } else {
            dVar.d.setColorFilter(null);
        }
        this.f.a(context, str, dVar.d);
    }

    private boolean a(String str, String str2) {
        return this.e != null && (this.e.a(str) || this.e.b(str2));
    }

    private int a(String str) {
        if (this.e != null) {
            return this.e.c(str);
        }
        return 0;
    }
}
