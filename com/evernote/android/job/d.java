package com.evernote.android.job;

import cxm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
class d {
    private static final cxm a;
    private final List<c> b;
    private final Object c;

    static {
        a = new com.evernote.android.job.util.d("JobCreatorHolder");
    }

    public d() {
        this.b = new ArrayList();
        this.c = new Object();
    }

    public void a(c cVar) {
        synchronized (this.c) {
            this.b.add(cVar);
        }
    }

    public Job a(String str) {
        synchronized (this.c) {
            int size = this.b.size();
            if (size == 0) {
                a.b("no JobCreator added");
                return null;
            }
            c cVar;
            ArrayList arrayList;
            if (size == 1) {
                cVar = (c) this.b.get(0);
                arrayList = null;
            } else {
                arrayList = new ArrayList(this.b);
                cVar = null;
            }
            if (cVar != null) {
                return cVar.a(str);
            }
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Job a = ((c) it.next()).a(str);
                    if (a != null) {
                        return a;
                    }
                }
            }
            return null;
        }
    }

    public boolean a() {
        boolean isEmpty;
        synchronized (this.c) {
            isEmpty = this.b.isEmpty();
        }
        return isEmpty;
    }
}
