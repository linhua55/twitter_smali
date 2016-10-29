package com.twitter.library.api;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class i extends x {
    private final String[] a;
    private final String[] b;
    private final int c;
    private final long g;
    private int h;

    public i(Context context, Session session, long j, String[] strArr, String[] strArr2, int i) {
        super(context, i.class.getName(), session);
        this.a = strArr;
        this.b = strArr2;
        this.c = i;
        this.g = j;
        if (this.a == null && this.b == null) {
            throw new IllegalArgumentException("No categories were provided");
        }
    }

    protected void a_(aa aaVar) {
        int length;
        int i;
        Object obj;
        aa aaVar2;
        aa aaVar3;
        Object obj2;
        aa aaVar4;
        Object obj3;
        aa aaVar5 = new aa();
        aa aaVar6 = new aa();
        if (this.a != null) {
            length = (this.b != null ? this.b.length : 0) + this.a.length;
        } else {
            length = this.b.length;
        }
        if (this.a != null) {
            i = 0;
            obj = null;
            aaVar2 = aaVar6;
            aaVar3 = aaVar5;
            while (i < this.a.length) {
                n nVar = (n) new n(this.p, N(), this.g, this.a[i], (this.c - this.h) / (length - i)).a(this);
                nVar.a(i == 0 ? "-1" : null);
                nVar.b(i == length + -1 ? "0" : null);
                aaVar6 = nVar.P();
                if (aaVar6.b()) {
                    obj2 = 1;
                    aaVar5 = aaVar6;
                    aaVar6 = aaVar2;
                } else {
                    obj2 = obj;
                    aaVar5 = aaVar3;
                }
                this.h = nVar.g() + this.h;
                i++;
                obj = obj2;
                aaVar2 = aaVar6;
                aaVar3 = aaVar5;
            }
        } else {
            obj = null;
            aaVar2 = aaVar6;
            aaVar3 = aaVar5;
        }
        if (this.b != null) {
            int length2 = this.a != null ? this.a.length : 0;
            aaVar4 = aaVar3;
            aaVar3 = aaVar2;
            obj3 = obj;
            int i2 = 0;
            while (i2 < this.b.length) {
                int i3 = length2 + i2;
                i = (this.c - this.h) / (length - i3);
                m mVar = (m) new m(this.p, N(), this.g, this.b[i2], (i / 20) + 1, i).a(this);
                mVar.a(i3 == 0 ? "-1" : null);
                mVar.b(i3 == length + -1 ? "0" : null);
                aaVar6 = mVar.P();
                if (aaVar6.b()) {
                    obj2 = 1;
                    aaVar2 = aaVar3;
                    aaVar3 = aaVar6;
                } else {
                    obj2 = obj3;
                    aaVar3 = aaVar4;
                    aaVar2 = aaVar6;
                }
                this.h = mVar.e() + this.h;
                i2++;
                aaVar4 = aaVar3;
                aaVar3 = aaVar2;
                obj3 = obj2;
            }
        } else {
            aaVar4 = aaVar3;
            aaVar3 = aaVar2;
            obj3 = obj;
        }
        if (obj3 != null) {
            aaVar.a(aaVar4);
        } else {
            aaVar.a(aaVar3);
        }
    }
}
