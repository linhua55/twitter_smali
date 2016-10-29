package com.twitter.library.av.model.parser;

import com.twitter.model.core.am;
import cpb;
import java.util.Comparator;

/* compiled from: Twttr */
class f implements Comparator<am> {
    private final float a;
    private final e b;

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((am) obj, (am) obj2);
    }

    f(float f, e eVar) {
        this.a = f;
        this.b = eVar;
    }

    public int a(am amVar, am amVar2) {
        int i = 0;
        int i2 = -1;
        if (amVar == null) {
            if (amVar2 == null) {
                i2 = 0;
            }
            return i2;
        } else if (amVar2 == null) {
            return 1;
        } else {
            if (a(amVar)) {
                if (!a(amVar2)) {
                    i = 1;
                }
                return i;
            } else if (a(amVar2)) {
                return -1;
            } else {
                if (b(amVar)) {
                    if (!b(amVar2)) {
                        i = 1;
                    }
                    return i;
                } else if (b(amVar2)) {
                    return -1;
                } else {
                    int indexOf = cpb.a.indexOf(amVar.d);
                    int indexOf2 = cpb.a.indexOf(amVar2.d);
                    if (indexOf == indexOf2) {
                        if (amVar.b == amVar2.b) {
                            return 0;
                        }
                        if (((float) amVar.b) > this.a || ((float) amVar2.b) > this.a) {
                            if (amVar.b >= amVar2.b) {
                                return -1;
                            }
                            return 1;
                        } else if (amVar.b <= amVar2.b) {
                            return -1;
                        } else {
                            return 1;
                        }
                    } else if (indexOf >= indexOf2) {
                        return -1;
                    } else {
                        return 1;
                    }
                }
            }
        }
    }

    private boolean a(am amVar) {
        return this.b.a && d.a(amVar);
    }

    private boolean b(am amVar) {
        return this.b.b && d.b(amVar);
    }
}
