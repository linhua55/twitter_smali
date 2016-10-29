package defpackage;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.q;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
/* renamed from: cwv */
public abstract class cwv<T> {
    protected final Context a;
    protected final cwu<T> b;
    protected final q c;
    protected final cwy d;
    protected volatile long e;
    protected final List<cwz> f;
    private final int g;

    protected abstract String a();

    public cwv(Context context, cwu<T> cwu_T, q qVar, cwy cwy, int i) throws IOException {
        this.f = new CopyOnWriteArrayList();
        this.a = context.getApplicationContext();
        this.b = cwu_T;
        this.d = cwy;
        this.c = qVar;
        this.e = this.c.a();
        this.g = i;
    }

    public void a(T t) throws IOException {
        byte[] a = this.b.a(t);
        a(a.length);
        this.d.a(a);
    }

    public void a(cwz cwz) {
        if (cwz != null) {
            this.f.add(cwz);
        }
    }

    public boolean d() throws IOException {
        boolean z = true;
        String str = null;
        if (this.d.b()) {
            z = false;
        } else {
            str = a();
            this.d.a(str);
            CommonUtils.a(this.a, 4, "Fabric", String.format(Locale.US, "generated new file %s", new Object[]{str}));
            this.e = this.c.a();
        }
        b(str);
        return z;
    }

    private void a(int i) throws IOException {
        if (!this.d.a(i, c())) {
            CommonUtils.a(this.a, 4, "Fabric", String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[]{Integer.valueOf(this.d.a()), Integer.valueOf(i), Integer.valueOf(c())}));
            d();
        }
    }

    protected int b() {
        return this.g;
    }

    protected int c() {
        return 8000;
    }

    private void b(String str) {
        for (cwz a : this.f) {
            try {
                a.a(str);
            } catch (Throwable e) {
                CommonUtils.a(this.a, "One of the roll over listeners threw an exception", e);
            }
        }
    }

    public List<File> e() {
        return this.d.a(1);
    }

    public void a(List<File> list) {
        this.d.a((List) list);
    }

    public void f() {
        this.d.a(this.d.c());
        this.d.d();
    }

    public void g() {
        List<File> c = this.d.c();
        int b = b();
        if (c.size() > b) {
            int size = c.size() - b;
            CommonUtils.a(this.a, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", new Object[]{Integer.valueOf(c.size()), Integer.valueOf(b), Integer.valueOf(size)}));
            TreeSet treeSet = new TreeSet(new cww(this));
            for (File file : c) {
                treeSet.add(new cwx(file, a(file.getName())));
            }
            List arrayList = new ArrayList();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                arrayList.add(((cwx) it.next()).a);
                if (arrayList.size() == size) {
                    break;
                }
            }
            this.d.a(arrayList);
        }
    }

    public long a(String str) {
        long j = 0;
        String[] split = str.split("_");
        if (split.length == 3) {
            try {
                j = Long.valueOf(split[2]).longValue();
            } catch (NumberFormatException e) {
            }
        }
        return j;
    }
}
