package com.google.gson.internal;

import com.google.gson.internal.LinkedTreeMap$com.google.gson.internal.s;
import com.google.gson.internal.LinkedTreeMap$com.google.gson.internal.u;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean a;
    private static final Comparator<Comparable> b;
    Comparator<? super K> comparator;
    private s entrySet;
    final x<K, V> header;
    private u keySet;
    int modCount;
    x<K, V> root;
    int size;

    static {
        a = !LinkedTreeMap.class.desiredAssertionStatus();
        b = new r();
    }

    public LinkedTreeMap() {
        this(b);
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.header = new x();
        if (comparator == null) {
            comparator = b;
        }
        this.comparator = comparator;
    }

    public int size() {
        return this.size;
    }

    public V get(Object obj) {
        x a = a(obj);
        return a != null ? a.g : null;
    }

    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        x a = a((Object) k, true);
        V v2 = a.g;
        a.g = v;
        return v2;
    }

    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        x xVar = this.header;
        xVar.e = xVar;
        xVar.d = xVar;
    }

    public V remove(Object obj) {
        x b = b(obj);
        return b != null ? b.g : null;
    }

    x<K, V> a(K k, boolean z) {
        int i;
        Comparator comparator = this.comparator;
        x<K, V> xVar = this.root;
        if (xVar != null) {
            int compareTo;
            Comparable comparable = comparator == b ? (Comparable) k : null;
            while (true) {
                compareTo = comparable != null ? comparable.compareTo(xVar.f) : comparator.compare(k, xVar.f);
                if (compareTo == 0) {
                    return xVar;
                }
                x<K, V> xVar2 = compareTo < 0 ? xVar.b : xVar.c;
                if (xVar2 == null) {
                    break;
                }
                xVar = xVar2;
            }
            int i2 = compareTo;
            x xVar3 = xVar;
            i = i2;
        } else {
            x<K, V> xVar4 = xVar;
            i = 0;
        }
        if (!z) {
            return null;
        }
        x<K, V> xVar5;
        x xVar6 = this.header;
        if (xVar3 != null) {
            xVar5 = new x(xVar3, k, xVar6, xVar6.e);
            if (i < 0) {
                xVar3.b = xVar5;
            } else {
                xVar3.c = xVar5;
            }
            b(xVar3, true);
        } else if (comparator != b || (k instanceof Comparable)) {
            xVar5 = new x(xVar3, k, xVar6, xVar6.e);
            this.root = xVar5;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.size++;
        this.modCount++;
        return xVar5;
    }

    x<K, V> a(Object obj) {
        x<K, V> xVar = null;
        if (obj != null) {
            try {
                xVar = a(obj, false);
            } catch (ClassCastException e) {
            }
        }
        return xVar;
    }

    x<K, V> a(Entry<?, ?> entry) {
        x<K, V> a = a(entry.getKey());
        Object obj = (a == null || !a(a.g, entry.getValue())) ? null : 1;
        return obj != null ? a : null;
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    void a(x<K, V> xVar, boolean z) {
        int i = 0;
        if (z) {
            xVar.e.d = xVar.d;
            xVar.d.e = xVar.e;
        }
        x xVar2 = xVar.b;
        x xVar3 = xVar.c;
        x xVar4 = xVar.a;
        if (xVar2 == null || xVar3 == null) {
            if (xVar2 != null) {
                a((x) xVar, xVar2);
                xVar.b = null;
            } else if (xVar3 != null) {
                a((x) xVar, xVar3);
                xVar.c = null;
            } else {
                a((x) xVar, null);
            }
            b(xVar4, false);
            this.size--;
            this.modCount++;
            return;
        }
        int i2;
        xVar2 = xVar2.h > xVar3.h ? xVar2.b() : xVar3.a();
        a(xVar2, false);
        xVar4 = xVar.b;
        if (xVar4 != null) {
            i2 = xVar4.h;
            xVar2.b = xVar4;
            xVar4.a = xVar2;
            xVar.b = null;
        } else {
            i2 = 0;
        }
        xVar4 = xVar.c;
        if (xVar4 != null) {
            i = xVar4.h;
            xVar2.c = xVar4;
            xVar4.a = xVar2;
            xVar.c = null;
        }
        xVar2.h = Math.max(i2, i) + 1;
        a((x) xVar, xVar2);
    }

    x<K, V> b(Object obj) {
        x a = a(obj);
        if (a != null) {
            a(a, true);
        }
        return a;
    }

    private void a(x<K, V> xVar, x<K, V> xVar2) {
        x xVar3 = xVar.a;
        xVar.a = null;
        if (xVar2 != null) {
            xVar2.a = xVar3;
        }
        if (xVar3 == null) {
            this.root = xVar2;
        } else if (xVar3.b == xVar) {
            xVar3.b = xVar2;
        } else if (a || xVar3.c == xVar) {
            xVar3.c = xVar2;
        } else {
            throw new AssertionError();
        }
    }

    private void b(x<K, V> xVar, boolean z) {
        x xVar2;
        while (xVar2 != null) {
            int i;
            x xVar3 = xVar2.b;
            x xVar4 = xVar2.c;
            int i2 = xVar3 != null ? xVar3.h : 0;
            if (xVar4 != null) {
                i = xVar4.h;
            } else {
                i = 0;
            }
            int i3 = i2 - i;
            x xVar5;
            if (i3 == -2) {
                xVar3 = xVar4.b;
                xVar5 = xVar4.c;
                if (xVar5 != null) {
                    i2 = xVar5.h;
                } else {
                    i2 = 0;
                }
                if (xVar3 != null) {
                    i = xVar3.h;
                } else {
                    i = 0;
                }
                i -= i2;
                if (i == -1 || (i == 0 && !z)) {
                    a(xVar2);
                } else if (a || i == 1) {
                    b(xVar4);
                    a(xVar2);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                xVar4 = xVar3.b;
                xVar5 = xVar3.c;
                i2 = xVar5 != null ? xVar5.h : 0;
                if (xVar4 != null) {
                    i = xVar4.h;
                } else {
                    i = 0;
                }
                i -= i2;
                if (i == 1 || (i == 0 && !z)) {
                    b(xVar2);
                } else if (a || i == -1) {
                    a(xVar3);
                    b(xVar2);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                xVar2.h = i2 + 1;
                if (z) {
                    return;
                }
            } else if (a || i3 == -1 || i3 == 1) {
                xVar2.h = Math.max(i2, i) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            xVar2 = xVar2.a;
        }
    }

    private void a(x<K, V> xVar) {
        int i;
        int i2 = 0;
        x xVar2 = xVar.b;
        x xVar3 = xVar.c;
        x xVar4 = xVar3.b;
        x xVar5 = xVar3.c;
        xVar.c = xVar4;
        if (xVar4 != null) {
            xVar4.a = xVar;
        }
        a((x) xVar, xVar3);
        xVar3.b = xVar;
        xVar.a = xVar3;
        if (xVar2 != null) {
            i = xVar2.h;
        } else {
            i = 0;
        }
        xVar.h = Math.max(i, xVar4 != null ? xVar4.h : 0) + 1;
        int i3 = xVar.h;
        if (xVar5 != null) {
            i2 = xVar5.h;
        }
        xVar3.h = Math.max(i3, i2) + 1;
    }

    private void b(x<K, V> xVar) {
        int i;
        int i2 = 0;
        x xVar2 = xVar.b;
        x xVar3 = xVar.c;
        x xVar4 = xVar2.b;
        x xVar5 = xVar2.c;
        xVar.b = xVar5;
        if (xVar5 != null) {
            xVar5.a = xVar;
        }
        a((x) xVar, xVar2);
        xVar2.c = xVar;
        xVar.a = xVar2;
        if (xVar3 != null) {
            i = xVar3.h;
        } else {
            i = 0;
        }
        xVar.h = Math.max(i, xVar5 != null ? xVar5.h : 0) + 1;
        int i3 = xVar.h;
        if (xVar4 != null) {
            i2 = xVar4.h;
        }
        xVar2.h = Math.max(i3, i2) + 1;
    }

    public Set<Entry<K, V>> entrySet() {
        Set set = this.entrySet;
        if (set != null) {
            return set;
        }
        Set<Entry<K, V>> sVar = new s(this);
        this.entrySet = sVar;
        return sVar;
    }

    public Set<K> keySet() {
        Set set = this.keySet;
        if (set != null) {
            return set;
        }
        Set<K> uVar = new u(this);
        this.keySet = uVar;
        return uVar;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }
}
