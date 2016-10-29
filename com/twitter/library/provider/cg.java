package com.twitter.library.provider;

import android.database.Cursor;
import android.os.Bundle;
import android.util.SparseIntArray;
import com.twitter.model.timeline.bc;
import defpackage.cdc;
import java.util.BitSet;

/* compiled from: Twttr */
public class cg extends bm<Integer> {
    private final BitSet i;
    private final BitSet j;
    private final BitSet k;
    private final BitSet l;
    private final SparseIntArray m;
    private final SparseIntArray n;
    private int o;
    private int p;

    public cg(Cursor cursor) {
        super(cursor);
        this.i = new BitSet();
        this.j = new BitSet();
        this.k = new BitSet();
        this.l = new BitSet();
        this.m = new SparseIntArray();
        this.n = new SparseIntArray();
        this.o = 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
        r25 = this;
        r0 = r25;
        r2 = r0.i;
        r2.clear();
        r0 = r25;
        r2 = r0.j;
        r2.clear();
        r0 = r25;
        r2 = r0.k;
        r2.clear();
        r0 = r25;
        r2 = r0.l;
        r2.clear();
        r0 = r25;
        r2 = r0.m;
        r2.clear();
        r0 = r25;
        r2 = r0.n;
        r2.clear();
        r2 = 0;
        r0 = r25;
        r0.p = r2;
        r0 = r25;
        r0 = r0.e;
        r16 = r0;
        if (r16 != 0) goto L_0x003d;
    L_0x0037:
        r2 = 0;
        r0 = r25;
        r0.c = r2;
    L_0x003c:
        return;
    L_0x003d:
        r17 = new java.util.ArrayList;
        r17.<init>();
        r2 = r16.moveToFirst();
        if (r2 == 0) goto L_0x0155;
    L_0x0048:
        r0 = r25;
        r0 = r0.i;
        r18 = r0;
        r0 = r25;
        r0 = r0.j;
        r19 = r0;
        r0 = r25;
        r0 = r0.k;
        r20 = r0;
        r0 = r25;
        r0 = r0.l;
        r21 = r0;
        r0 = r25;
        r0 = r0.m;
        r22 = r0;
        r0 = r25;
        r0 = r0.n;
        r23 = r0;
        r10 = 0;
        r9 = 0;
        r8 = 0;
        r7 = 0;
        r6 = 0;
        r5 = 0;
        r4 = -1;
        r3 = r17.size();
        r2 = r3 + -1;
        r11 = r5;
        r12 = r6;
        r13 = r8;
        r8 = r2;
        r5 = r9;
        r6 = r10;
        r9 = r3;
        r10 = r4;
    L_0x0081:
        r2 = defpackage.cdc.c;
        r0 = r16;
        r2 = r0.getString(r2);
        r3 = defpackage.cdc.d;
        r0 = r16;
        r3 = r0.getInt(r3);
        r4 = defpackage.cdc.e;
        r0 = r16;
        r14 = r0.getInt(r4);
        r4 = defpackage.cdc.g;
        r0 = r16;
        r4 = r0.getInt(r4);
        r15 = 11;
        if (r14 != r15) goto L_0x00af;
    L_0x00a5:
        r0 = r25;
        r15 = r0.p;
        r15 = r15 + 1;
        r0 = r25;
        r0.p = r15;
    L_0x00af:
        r15 = 1;
        r24 = a(r2, r3, r4, r5, r6, r7);
        if (r24 != 0) goto L_0x00c4;
    L_0x00b6:
        if (r8 < 0) goto L_0x00bf;
    L_0x00b8:
        if (r6 == 0) goto L_0x00bf;
    L_0x00ba:
        r0 = r19;
        r0.set(r8);
    L_0x00bf:
        r0 = r18;
        r0.set(r9);
    L_0x00c4:
        r6 = r2.equals(r5);
        if (r6 != 0) goto L_0x015d;
    L_0x00ca:
        r6 = 1;
    L_0x00cb:
        if (r6 == 0) goto L_0x00e5;
    L_0x00cd:
        if (r8 < 0) goto L_0x00da;
    L_0x00cf:
        r5 = a(r5, r7);
        if (r5 == 0) goto L_0x00da;
    L_0x00d5:
        r0 = r21;
        r0.set(r8);
    L_0x00da:
        r5 = a(r2, r4);
        if (r5 == 0) goto L_0x00e5;
    L_0x00e0:
        r0 = r20;
        r0.set(r9);
    L_0x00e5:
        if (r6 != 0) goto L_0x00e9;
    L_0x00e7:
        if (r13 == r14) goto L_0x0175;
    L_0x00e9:
        r5 = b(r13, r7);
        if (r5 == 0) goto L_0x00f4;
    L_0x00ef:
        r0 = r23;
        r0.put(r12, r10);
    L_0x00f4:
        r5 = b(r14, r4);
        if (r5 == 0) goto L_0x0175;
    L_0x00fa:
        r0 = r22;
        r0.put(r9, r11);
        r10 = r9;
    L_0x0100:
        r5 = b(r14, r4);
        if (r5 == 0) goto L_0x0173;
    L_0x0106:
        r5 = r16.isFirst();
        if (r5 != 0) goto L_0x0173;
    L_0x010c:
        r0 = r22;
        r5 = r0.get(r9);
        if (r5 == 0) goto L_0x0160;
    L_0x0114:
        r5 = 1;
    L_0x0115:
        if (r5 == 0) goto L_0x0120;
    L_0x0117:
        r5 = java.lang.Integer.valueOf(r11);
        r0 = r17;
        r0.add(r5);
    L_0x0120:
        r8 = r11 + 1;
        r7 = r8 + -1;
        r6 = r17.size();
        r5 = r6 + -1;
        r0 = r25;
        r9 = r0.o;
        if (r9 <= 0) goto L_0x0162;
    L_0x0130:
        r9 = r17.size();
        r0 = r25;
        r11 = r0.o;
        if (r9 < r11) goto L_0x0162;
    L_0x013a:
        r0 = r19;
        r0.set(r5);
        r2 = a(r2, r4);
        if (r2 == 0) goto L_0x014a;
    L_0x0145:
        r0 = r21;
        r0.set(r5);
    L_0x014a:
        r2 = b(r14, r4);
        if (r2 == 0) goto L_0x0155;
    L_0x0150:
        r0 = r23;
        r0.put(r10, r7);
    L_0x0155:
        r0 = r17;
        r1 = r25;
        r1.c = r0;
        goto L_0x003c;
    L_0x015d:
        r6 = 0;
        goto L_0x00cb;
    L_0x0160:
        r5 = 0;
        goto L_0x0115;
    L_0x0162:
        r9 = r16.moveToNext();
        if (r9 == 0) goto L_0x013a;
    L_0x0168:
        r9 = r6;
        r11 = r8;
        r12 = r10;
        r13 = r14;
        r10 = r7;
        r8 = r5;
        r6 = r3;
        r5 = r2;
        r7 = r4;
        goto L_0x0081;
    L_0x0173:
        r5 = r15;
        goto L_0x0115;
    L_0x0175:
        r10 = r12;
        goto L_0x0100;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.cg.a():void");
    }

    private static boolean a(String str, int i, int i2, String str2, int i3, int i4) {
        if (a(i, i2) && a(i3, i4)) {
            return true;
        }
        if (i == i3) {
            return str.equals(str2);
        }
        return false;
    }

    private static boolean a(int i, int i2) {
        if (i == 2 || i == 1 || i == 9 || i == 5 || i == 13 || i == 8) {
            return true;
        }
        return i == 7 && bc.o(i2);
    }

    private static boolean a(String str, int i) {
        return str != null;
    }

    private static boolean b(int i, int i2) {
        boolean z;
        if (i == 12) {
            z = true;
        } else {
            z = false;
        }
        if (bc.f(i2) || bc.g(i2) || r0) {
            z = true;
        } else {
            z = false;
        }
        if (i == 0 || !r0) {
            return false;
        }
        return true;
    }

    public boolean isFirst() {
        if (this.c == null || this.c.isEmpty()) {
            return super.isFirst();
        }
        return ((Integer) c()).equals(this.c.get(0));
    }

    public boolean isLast() {
        if (this.c == null || this.c.isEmpty()) {
            return super.isLast();
        }
        return ((Integer) c()).equals(this.c.get(this.c.size() - 1));
    }

    public boolean moveToPosition(int i) {
        Cursor cursor = this.e;
        return cursor != null && super.moveToPosition(i) && cursor.moveToPosition(((Integer) c()).intValue());
    }

    public Bundle getExtras() {
        Cursor cursor = this.e;
        int position = getPosition();
        Bundle bundle = new Bundle();
        if (cursor != null && position >= 0) {
            bundle.putBoolean("entity_group_start", this.i.get(position));
            bundle.putBoolean("entity_group_end", this.j.get(position));
            bundle.putBoolean("entity_start", this.k.get(position));
            bundle.putBoolean("entity_end", this.l.get(position));
            Integer valueOf = Integer.valueOf(this.m.get(position));
            Integer valueOf2 = Integer.valueOf(this.n.get(position));
            if (!(valueOf == null || valueOf2 == null)) {
                bundle.putInt("data_type_source_start", valueOf.intValue());
                bundle.putInt("data_type_source_end", valueOf2.intValue());
            }
        }
        bundle.putInt("ad_slots_count", this.p);
        return bundle;
    }

    public int getInt(int i) {
        int i2 = super.getInt(i);
        if (i == cdc.l && i2 == 24 && !getExtras().getBoolean("entity_start")) {
            return -1;
        }
        return i2;
    }

    public void a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("groupedLimit must be >= 0");
        }
        this.o = i;
    }
}
