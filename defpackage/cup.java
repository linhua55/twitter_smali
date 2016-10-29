package defpackage;

import cta;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Deque;

/* compiled from: Twttr */
/* renamed from: cup */
class cup extends cta<File> {
    final /* synthetic */ cuo a;
    private final Deque<File> b;
    private File c;
    private String[] d;
    private int e;
    private File f;

    cup(cuo cuo) {
        this.a = cuo;
        this.b = new ArrayDeque();
        this.c = this.a.a;
        this.d = this.a.b;
    }

    protected /* synthetic */ Object a() {
        return c();
    }

    public boolean hasNext() {
        while (this.f == null && (!this.b.isEmpty() || this.e < this.d.length)) {
            if (this.e < this.d.length) {
                File file = new File(this.c, this.d[this.e]);
                this.e++;
                if (file.isFile()) {
                    this.f = file;
                } else if (file.isDirectory()) {
                    this.b.push(file);
                }
            } else {
                this.c = (File) this.b.pop();
                String[] list = this.c.list();
                if (list != null) {
                    this.d = list;
                    this.e = 0;
                }
            }
        }
        return this.f != null;
    }

    protected File c() {
        File file = this.f;
        this.f = null;
        return file;
    }
}
