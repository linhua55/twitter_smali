package com.twitter.library.commerce.model;

import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.serialization.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class am {
    public static final n<am> a;
    private ArrayList<CreditCard> b;
    private ArrayList<CreditCard> c;
    private ArrayList<a> d;
    private ArrayList<m> e;
    private ArrayList<af> f;
    private a g;
    private CreditCard h;
    private m i;
    private af j;

    public am() {
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.f = new ArrayList();
    }

    static {
        a = new ao(null);
    }

    public CreditCard a() {
        if (this.h != null) {
            return this.h;
        }
        if (this.b.size() > 0) {
            return (CreditCard) this.b.get(0);
        }
        return null;
    }

    public CreditCard b() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            CreditCard creditCard = (CreditCard) it.next();
            if (creditCard.o()) {
                return creditCard;
            }
        }
        return null;
    }

    public m c() {
        if (this.i != null) {
            return this.i;
        }
        if (this.e.size() > 0) {
            return (m) this.e.get(0);
        }
        return null;
    }

    public af d() {
        if (this.j != null) {
            return this.j;
        }
        if (this.f.size() > 0) {
            return (af) this.f.get(0);
        }
        return null;
    }

    public void a(a aVar) {
        this.g = aVar;
    }

    public List<Integer> a(CreditCard creditCard) {
        List<Integer> c = creditCard.c();
        if (c.size() == 0) {
            this.b.add(creditCard);
        }
        return c;
    }

    public List<Integer> b(CreditCard creditCard) {
        this.c.add(creditCard);
        return null;
    }

    public List<Integer> b(a aVar) {
        List<Integer> a = aVar.a();
        if (a.size() == 0) {
            this.d.add(aVar);
        }
        return a;
    }

    public List<Integer> a(m mVar) {
        List<Integer> e = mVar.e();
        if (e.size() == 0) {
            this.e.add(mVar);
        }
        return e;
    }

    public List<Integer> a(af afVar) {
        List<Integer> e = afVar.e();
        if (e.size() == 0) {
            this.f.add(afVar);
        }
        return e;
    }

    public CreditCard[] e() {
        return (CreditCard[]) this.b.toArray(new CreditCard[0]);
    }

    public CreditCard[] f() {
        return (CreditCard[]) this.c.toArray(new CreditCard[0]);
    }

    public CreditCard[] a(List<Type> list) {
        int i = 0;
        List arrayList = new ArrayList();
        for (CreditCard creditCard : e()) {
            if (creditCard.p() && CreditCard.a(creditCard, list)) {
                arrayList.add(creditCard);
            }
        }
        CreditCard[] f = f();
        int length = f.length;
        while (i < length) {
            CreditCard creditCard2 = f[i];
            if (creditCard2.p() && CreditCard.a(creditCard2, list)) {
                arrayList.add(creditCard2);
            }
            i++;
        }
        return (CreditCard[]) arrayList.toArray(new CreditCard[arrayList.size()]);
    }

    public CreditCard[] g() {
        return a(null);
    }

    public a[] h() {
        return (a[]) this.d.toArray(new a[0]);
    }

    public void c(CreditCard creditCard) {
        this.h = creditCard;
    }

    public void b(m mVar) {
        this.i = mVar;
    }

    public void b(af afVar) {
        this.j = afVar;
    }
}
