package com.twitter.library.api.dm.requests;

import android.content.Context;
import android.database.Cursor;
import bid;
import bii;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.media.manager.k;
import com.twitter.library.service.aa;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.as;
import com.twitter.model.core.x;
import com.twitter.model.dms.ae;
import com.twitter.model.dms.af;
import com.twitter.model.dms.c;
import com.twitter.model.dms.z;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.j;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import defpackage.biw;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class q extends SendDMRequest {
    private final String i;
    private final String j;
    private final long k;
    private final String l;
    private final Set<Long> m;
    private final Session n;
    private final c r;
    private final ae s;
    private DraftAttachment t;
    private final boolean u;
    private bii v;
    private aa w;
    private String x;

    public q(Context context, Session session, String str, String str2, String str3, as asVar, Set<Long> set, DraftAttachment draftAttachment, boolean z) {
        super(context, q.class.getName(), session);
        this.i = str;
        this.j = str2;
        this.k = session.g();
        this.l = str3;
        this.m = set;
        this.n = session;
        this.t = draftAttachment;
        this.u = z;
        EditableMedia a = draftAttachment != null ? draftAttachment.a(3) : null;
        if (a != null) {
            this.s = null;
            this.r = (c) new z().a((MediaEntity) new x().a(a.k.a().toString()).a(Size.a(a.k.e.a(), a.k.e.b())).a(a(a)).q()).q();
        } else if (asVar != null) {
            this.s = (ae) new af().a(asVar.e).a(asVar).q();
            this.r = this.s;
        } else {
            this.s = null;
            this.r = null;
        }
    }

    protected boolean b(aa aaVar) {
        return (this.i == null && CollectionUtils.b(this.m)) ? false : true;
    }

    public Runnable c(AsyncOperation asyncOperation) {
        return new r(this);
    }

    private void s() {
        String a = this.i == null ? biw.a(this.k, CollectionUtils.e(this.m)) : this.i;
        if (this.i == null || !a(a)) {
            b(a);
        }
        if (this.v == null) {
            this.v = this.b.a(a, this.j, this.k, this.l, this.t, this.r, this.c);
        }
        this.c.a();
    }

    protected void a(aa aaVar) {
        j.a(this.v != null, "Attempting to send a null message.");
        this.w = aaVar;
        if (!this.u || this.t == null) {
            a();
        } else {
            b(this.t);
        }
    }

    private void b(DraftAttachment draftAttachment) {
        this.x = az.a(this.p).a(new k(this.p, draftAttachment.f.toString(), MediaType.ANIMATED_GIF), new s(this, draftAttachment));
    }

    void a() {
        a(this.v, this.t, this.w, this.s);
    }

    public void a(DraftAttachment draftAttachment) {
        this.t = draftAttachment;
        this.b.a(this.v, draftAttachment, this.c);
        this.c.a();
        az.a(this.p).a(new u(this.p, this.n, this));
    }

    private boolean a(String str) {
        boolean z = false;
        Cursor d = S().d(str);
        if (d != null) {
            try {
                if (d.getCount() > 0) {
                    z = true;
                }
                d.close();
            } catch (Throwable th) {
                d.close();
            }
        }
        return z;
    }

    private void b(String str) {
        new bid(this.p, this.n, str, (long[]) e.b(CollectionUtils.e(this.m), new long[0])).b();
    }

    public String at_() {
        return this.j;
    }

    public boolean e() {
        return false;
    }

    private Type a(EditableMedia editableMedia) {
        switch (t.a[editableMedia.g().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return Type.IMAGE;
            case WireMessage.WIRE_CONTROL /*2*/:
                return Type.ANIMATED_GIF;
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return Type.VIDEO;
            default:
                return Type.UNKNOWN;
        }
    }
}
