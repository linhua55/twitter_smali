package defpackage;

import android.content.Context;
import com.twitter.library.av.a;
import com.twitter.library.client.Session;
import com.twitter.model.av.DynamicAd;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bfj */
public final class bfj {
    final List<a> a;
    final Context b;
    final Session c;
    DynamicAd d;

    public bfj(Context context, Session session) {
        this.a = new LinkedList();
        this.b = context;
        this.c = session;
    }

    public bfj a(a aVar) {
        this.a.add(aVar);
        return this;
    }

    public void a(DynamicAd dynamicAd) {
        this.d = dynamicAd;
    }

    public List<bfi> a() {
        int i = 10;
        List<bfi> arrayList = new ArrayList();
        int size = this.a.size();
        if (size <= 10) {
            i = size;
        }
        int i2 = i;
        i = 0;
        int i3 = i2;
        while (i < size) {
            bfi bfi = new bfi(this.b, this.c, this.d);
            bfi.a(this.a.subList(i, i3));
            arrayList.add(bfi);
            i = i3 + 10;
            if (size <= i) {
                i = size;
            }
            i2 = i;
            i = i3;
            i3 = i2;
        }
        return arrayList;
    }
}
