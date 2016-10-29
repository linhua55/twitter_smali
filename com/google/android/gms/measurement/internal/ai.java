package com.google.android.gms.measurement.internal;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.wg;
import com.google.android.gms.internal.wh;
import com.google.android.gms.internal.wi;
import com.google.android.gms.internal.wk;
import com.google.android.gms.internal.wr;
import com.google.android.gms.internal.ws;
import com.google.android.gms.internal.wt;
import com.google.android.gms.internal.ww;
import com.google.android.gms.internal.wx;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

class ai extends cl {
    ai(bx bxVar) {
        super(bxVar);
    }

    private Boolean a(wh whVar, ws wsVar, long j) {
        Boolean a;
        if (whVar.e != null) {
            a = new bm(whVar.e).a(j);
            if (a == null) {
                return null;
            }
            if (!a.booleanValue()) {
                return Boolean.valueOf(false);
            }
        }
        Set hashSet = new HashSet();
        for (wi wiVar : whVar.c) {
            if (TextUtils.isEmpty(wiVar.d)) {
                s().c().a("null or empty param name in filter. event", wsVar.b);
                return null;
            }
            hashSet.add(wiVar.d);
        }
        ArrayMap arrayMap = new ArrayMap();
        for (wt wtVar : wsVar.a) {
            if (hashSet.contains(wtVar.a)) {
                if (wtVar.c != null) {
                    arrayMap.put(wtVar.a, wtVar.c);
                } else if (wtVar.d != null) {
                    arrayMap.put(wtVar.a, wtVar.d);
                } else if (wtVar.b != null) {
                    arrayMap.put(wtVar.a, wtVar.b);
                } else {
                    s().c().a("Unknown value for param. event, param", wsVar.b, wtVar.a);
                    return null;
                }
            }
        }
        for (wi wiVar2 : whVar.c) {
            CharSequence charSequence = wiVar2.d;
            if (TextUtils.isEmpty(charSequence)) {
                s().c().a("Event has empty param name. event", wsVar.b);
                return null;
            }
            Object obj = arrayMap.get(charSequence);
            if (obj instanceof Long) {
                if (wiVar2.b == null) {
                    s().c().a("No number filter for long param. event, param", wsVar.b, charSequence);
                    return null;
                }
                a = new bm(wiVar2.b).a(((Long) obj).longValue());
                if (a == null) {
                    return null;
                }
                if (!a.booleanValue()) {
                    return Boolean.valueOf(false);
                }
            } else if (obj instanceof Float) {
                if (wiVar2.b == null) {
                    s().c().a("No number filter for float param. event, param", wsVar.b, charSequence);
                    return null;
                }
                a = new bm(wiVar2.b).a(((Float) obj).floatValue());
                if (a == null) {
                    return null;
                }
                if (!a.booleanValue()) {
                    return Boolean.valueOf(false);
                }
            } else if (obj instanceof String) {
                if (wiVar2.a == null) {
                    s().c().a("No string filter for String param. event, param", wsVar.b, charSequence);
                    return null;
                }
                a = new ab(wiVar2.a).a((String) obj);
                if (a == null) {
                    return null;
                }
                if (!a.booleanValue()) {
                    return Boolean.valueOf(false);
                }
            } else if (obj == null) {
                s().z().a("Missing param for filter. event, param", wsVar.b, charSequence);
                return Boolean.valueOf(false);
            } else {
                s().c().a("Unknown param type. event, param", wsVar.b, charSequence);
                return null;
            }
        }
        return Boolean.valueOf(true);
    }

    private Boolean a(wk wkVar, wx wxVar) {
        Boolean bool = null;
        wi wiVar = wkVar.c;
        if (wiVar == null) {
            s().c().a("Missing property filter. property", wxVar.b);
            return bool;
        } else if (wxVar.d != null) {
            if (wiVar.b != null) {
                return new bm(wiVar.b).a(wxVar.d.longValue());
            }
            s().c().a("No number filter for long property. property", wxVar.b);
            return bool;
        } else if (wxVar.e != null) {
            if (wiVar.b != null) {
                return new bm(wiVar.b).a(wxVar.e.floatValue());
            }
            s().c().a("No number filter for float property. property", wxVar.b);
            return bool;
        } else if (wxVar.c == null) {
            s().c().a("User property has no value, property", wxVar.b);
            return bool;
        } else if (wiVar.a != null) {
            return new ab(wiVar.a).a(wxVar.c);
        } else {
            if (wiVar.b == null) {
                s().c().a("No string or number filter defined. property", wxVar.b);
                return bool;
            }
            bm bmVar = new bm(wiVar.b);
            if (wiVar.b.b.booleanValue()) {
                if (b(wxVar.c)) {
                    try {
                        float parseFloat = Float.parseFloat(wxVar.c);
                        if (!Float.isInfinite(parseFloat)) {
                            return bmVar.a(parseFloat);
                        }
                        s().c().a("User property value exceeded Float value range. property, value", wxVar.b, wxVar.c);
                        return bool;
                    } catch (NumberFormatException e) {
                        s().c().a("User property value exceeded Float value range. property, value", wxVar.b, wxVar.c);
                        return bool;
                    }
                }
                s().c().a("Invalid user property value for Float number filter. property, value", wxVar.b, wxVar.c);
                return bool;
            } else if (a(wxVar.c)) {
                try {
                    return bmVar.a(Long.parseLong(wxVar.c));
                } catch (NumberFormatException e2) {
                    s().c().a("User property value exceeded Long value range. property, value", wxVar.b, wxVar.c);
                    return bool;
                }
            } else {
                s().c().a("Invalid user property value for Long number filter. property, value", wxVar.b, wxVar.c);
                return bool;
            }
        }
    }

    protected void a() {
    }

    void a(String str, wg[] wgVarArr) {
        n().a(str, wgVarArr);
    }

    boolean a(String str) {
        return Pattern.matches("[+-]?[0-9]+", str);
    }

    wr[] a(String str, ws[] wsVarArr, wx[] wxVarArr) {
        int intValue;
        Map map;
        Map map2;
        wr wrVar;
        wr wrVar2;
        BitSet bitSet;
        BitSet bitSet2;
        int i;
        bm.a(str);
        Set hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (wsVarArr != null) {
            ArrayMap arrayMap4 = new ArrayMap();
            for (ws wsVar : wsVarArr) {
                as asVar;
                as a = n().a(str, wsVar.b);
                if (a == null) {
                    s().c().a("Event aggregate wasn't created during raw event logging. event", wsVar.b);
                    asVar = new as(str, wsVar.b, 1, 1, wsVar.c.longValue());
                } else {
                    asVar = a.a();
                }
                n().a(asVar);
                long j = asVar.c;
                map = (Map) arrayMap4.get(wsVar.b);
                if (map == null) {
                    map = n().d(str, wsVar.b);
                    if (map == null) {
                        map = new ArrayMap();
                    }
                    arrayMap4.put(wsVar.b, map);
                    map2 = map;
                } else {
                    map2 = map;
                }
                s().z().a("Found audiences. event, audience count", wsVar.b, Integer.valueOf(map2.size()));
                for (Integer intValue2 : map2.keySet()) {
                    int intValue3 = intValue2.intValue();
                    if (hashSet.contains(Integer.valueOf(intValue3))) {
                        s().z().a("Skipping failed audience ID", Integer.valueOf(intValue3));
                    } else {
                        wrVar = (wr) arrayMap.get(Integer.valueOf(intValue3));
                        if (wrVar == null) {
                            wrVar = new wr();
                            arrayMap.put(Integer.valueOf(intValue3), wrVar);
                            wrVar.d = Boolean.valueOf(false);
                            wrVar2 = wrVar;
                        } else {
                            wrVar2 = wrVar;
                        }
                        List<wh> list = (List) map2.get(Integer.valueOf(intValue3));
                        bitSet = (BitSet) arrayMap2.get(Integer.valueOf(intValue3));
                        bitSet2 = (BitSet) arrayMap3.get(Integer.valueOf(intValue3));
                        if (bitSet == null) {
                            bitSet = new BitSet();
                            arrayMap2.put(Integer.valueOf(intValue3), bitSet);
                            bitSet2 = new BitSet();
                            arrayMap3.put(Integer.valueOf(intValue3), bitSet2);
                        }
                        if (wrVar2.c == null && !wrVar2.d.booleanValue()) {
                            ww c = n().c(str, intValue3);
                            if (c != null) {
                                wrVar2.c = c;
                                i = 0;
                                while (true) {
                                    if (i >= c.b.length * 64) {
                                        break;
                                    }
                                    if (ag.a(c.b, i)) {
                                        s().z().a("Event filter already evaluated true. audience ID, filter ID", Integer.valueOf(intValue3), Integer.valueOf(i));
                                        bitSet.set(i);
                                        bitSet2.set(i);
                                    }
                                    i++;
                                }
                            } else {
                                wrVar2.d = Boolean.valueOf(true);
                            }
                        }
                        for (wh whVar : list) {
                            if (s().a(2)) {
                                s().z().a("Evaluating filter. audience, filter, event", Integer.valueOf(intValue3), whVar.a, whVar.b);
                                s().z().a("Filter definition", whVar);
                            }
                            if (whVar.a.intValue() > 256) {
                                s().c().a("Invalid event filter ID > 256. id", whVar.a);
                            } else if (!bitSet2.get(whVar.a.intValue())) {
                                Boolean a2 = a(whVar, wsVar, j);
                                s().z().a("Event filter result", a2);
                                if (a2 == null) {
                                    hashSet.add(Integer.valueOf(intValue3));
                                } else {
                                    bitSet2.set(whVar.a.intValue());
                                    if (a2.booleanValue()) {
                                        bitSet.set(whVar.a.intValue());
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (wxVarArr != null) {
            ArrayMap arrayMap5 = new ArrayMap();
            for (wx wxVar : wxVarArr) {
                map = (Map) arrayMap5.get(wxVar.b);
                if (map == null) {
                    map = n().e(str, wxVar.b);
                    if (map == null) {
                        map = new ArrayMap();
                    }
                    arrayMap5.put(wxVar.b, map);
                    map2 = map;
                } else {
                    map2 = map;
                }
                s().z().a("Found audiences. property, audience count", wxVar.b, Integer.valueOf(map2.size()));
                for (Integer intValue22 : map2.keySet()) {
                    intValue = intValue22.intValue();
                    if (!hashSet.contains(Integer.valueOf(intValue))) {
                        wrVar = (wr) arrayMap.get(Integer.valueOf(intValue));
                        if (wrVar == null) {
                            wrVar = new wr();
                            arrayMap.put(Integer.valueOf(intValue), wrVar);
                            wrVar.d = Boolean.valueOf(false);
                            wrVar2 = wrVar;
                        } else {
                            wrVar2 = wrVar;
                        }
                        List<wk> list2 = (List) map2.get(Integer.valueOf(intValue));
                        bitSet = (BitSet) arrayMap2.get(Integer.valueOf(intValue));
                        bitSet2 = (BitSet) arrayMap3.get(Integer.valueOf(intValue));
                        if (bitSet == null) {
                            bitSet = new BitSet();
                            arrayMap2.put(Integer.valueOf(intValue), bitSet);
                            bitSet2 = new BitSet();
                            arrayMap3.put(Integer.valueOf(intValue), bitSet2);
                        }
                        if (wrVar2.c == null) {
                            if (!wrVar2.d.booleanValue()) {
                                ww c2 = n().c(str, intValue);
                                if (c2 != null) {
                                    wrVar2.c = c2;
                                    i = 0;
                                    while (true) {
                                        if (i >= c2.b.length * 64) {
                                            break;
                                        }
                                        if (ag.a(c2.b, i)) {
                                            bitSet.set(i);
                                            bitSet2.set(i);
                                        }
                                        i++;
                                    }
                                } else {
                                    wrVar2.d = Boolean.valueOf(true);
                                }
                            }
                        }
                        for (wk wkVar : list2) {
                            if (s().a(2)) {
                                s().z().a("Evaluating filter. audience, filter, property", Integer.valueOf(intValue), wkVar.a, wkVar.b);
                                s().z().a("Filter definition", wkVar);
                            }
                            if (wkVar.a != null) {
                                if (wkVar.a.intValue() <= 256) {
                                    if (bitSet2.get(wkVar.a.intValue())) {
                                        s().z().a("Property filter already evaluated true. audience ID, filter ID", Integer.valueOf(intValue), wkVar.a);
                                    } else {
                                        Boolean a3 = a(wkVar, wxVar);
                                        s().z().a("Property filter result", a3);
                                        if (a3 == null) {
                                            hashSet.add(Integer.valueOf(intValue));
                                        } else {
                                            bitSet2.set(wkVar.a.intValue());
                                            if (a3.booleanValue()) {
                                                bitSet.set(wkVar.a.intValue());
                                            }
                                        }
                                    }
                                }
                            }
                            s().c().a("Invalid property filter ID. id", String.valueOf(wkVar.a));
                            hashSet.add(Integer.valueOf(intValue));
                            break;
                        }
                    }
                    s().z().a("Skipping failed audience ID", Integer.valueOf(intValue));
                }
            }
        }
        wr[] wrVarArr = new wr[arrayMap2.size()];
        int i2 = 0;
        for (Integer intValue222 : arrayMap2.keySet()) {
            int intValue4 = intValue222.intValue();
            if (!hashSet.contains(Integer.valueOf(intValue4))) {
                wrVar = (wr) arrayMap.get(Integer.valueOf(intValue4));
                wr wrVar3 = wrVar == null ? new wr() : wrVar;
                int i3 = i2 + 1;
                wrVarArr[i2] = wrVar3;
                wrVar3.a = Integer.valueOf(intValue4);
                wrVar3.b = new ww();
                wrVar3.b.b = ag.a((BitSet) arrayMap2.get(Integer.valueOf(intValue4)));
                wrVar3.b.a = ag.a((BitSet) arrayMap3.get(Integer.valueOf(intValue4)));
                n().a(str, intValue4, wrVar3.b);
                i2 = i3;
            }
        }
        return (wr[]) Arrays.copyOf(wrVarArr, i2);
    }

    boolean b(String str) {
        return Pattern.matches("[+-]?(([0-9]+\\.?)|([0-9]*\\.[0-9]+))", str);
    }
}
