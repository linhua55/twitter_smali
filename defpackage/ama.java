package defpackage;

import android.content.Context;
import android.database.Cursor;
import com.twitter.android.mx;
import com.twitter.android.pk;
import com.twitter.android.widget.TopicView$TopicData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;

/* compiled from: Twttr */
/* renamed from: ama */
public class ama {
    private final Context a;
    private final String b;
    private final String c;
    private final int d;
    private final boolean e;
    private final boolean f;
    private boolean g;
    private long h;

    public ama(Context context, String str, String str2, int i, long j, boolean z, boolean z2, boolean z3) {
        this.a = context;
        this.d = i;
        this.c = str2;
        this.b = str;
        this.h = j;
        this.g = z;
        this.f = z2;
        this.e = z3;
    }

    public List<pk> a(Cursor cursor) {
        pk pkVar = null;
        if (cursor == null || !cursor.moveToFirst()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(cursor.getCount());
        int i = 0;
        int i2 = 0;
        List arrayList2 = new ArrayList();
        int i3 = -1;
        int i4 = -1;
        while (true) {
            pk pkVar2;
            int i5 = cursor.getInt(ccu.c);
            int i6 = cursor.getInt(ccu.d);
            if (i4 != i6) {
                pkVar = a(arrayList, cursor, arrayList2, pkVar, i4, !ama.a(i5, i3), i2, i - 1, i3);
                arrayList2.clear();
                i2 = i;
                pkVar2 = pkVar;
            } else {
                pkVar2 = pkVar;
            }
            arrayList2.add(new amb(cursor.getBlob(ccu.e), cursor.getLong(0), cursor.getLong(1)));
            i++;
            if (cursor.moveToNext()) {
                i4 = i6;
                pkVar = pkVar2;
                i3 = i5;
            } else {
                ama.a(a(arrayList, cursor, arrayList2, pkVar2, i6, false, i2, i - 1, i5));
                return arrayList;
            }
        }
    }

    private static void a(pk pkVar) {
        if (pkVar == null) {
            return;
        }
        if (pkVar.f == 1) {
            pkVar.f = 4;
        } else {
            pkVar.f = 3;
        }
    }

    private static int a(int i) {
        switch (i) {
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 0;
            case mx.TwitterButton_labelMargin /*14*/:
                return 6;
            case mx.TwitterButton_strokeWidth /*15*/:
                return 9;
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                return 3;
            case mx.TwitterButton_bounded /*17*/:
                return 7;
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
            case mx.TweetView_mediaTopMargin /*21*/:
                return 12;
            case mx.TweetView_mediaBottomMargin /*22*/:
            case mx.TweetView_mediaDivider /*23*/:
                return 10;
            default:
                return i;
        }
    }

    private static void a(pk pkVar, pk pkVar2, int i) {
        int i2;
        int i3 = pkVar.b;
        if (pkVar2 != null) {
            i2 = pkVar2.b;
        } else {
            i2 = -1;
        }
        if (i3 == 7) {
            pkVar.f = 5;
            ama.a(pkVar2);
        } else if (i3 == 20) {
            pkVar.f = 3;
        } else if (i2 == 18) {
            pkVar.f = 2;
        } else if (i2 != -1 && !ama.a(i3, i2)) {
            pkVar.f = 1;
            ama.a(pkVar2);
        } else if (i != 8 || pkVar2 == null) {
            pkVar.f = 2;
        } else {
            pkVar.f = 1;
        }
    }

    private static boolean a(int i, int i2) {
        return ama.a(i2) == ama.a(i);
    }

    private pk a(List<pk> list, pk pkVar, long j, int i, int i2, int i3, int i4) {
        pk pkVar2 = new pk(j, i, i2, i3, i4);
        ama.a(pkVar2, pkVar, this.d);
        list.add(pkVar2);
        return pkVar2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.twitter.android.pk a(java.util.List<com.twitter.android.pk> r15, android.database.Cursor r16, java.util.List<defpackage.amb> r17, com.twitter.android.pk r18, int r19, boolean r20, int r21, int r22, int r23) {
        /*
        r14 = this;
        r0 = r22;
        r1 = r21;
        if (r0 < r1) goto L_0x000c;
    L_0x0006:
        r2 = r17.isEmpty();
        if (r2 == 0) goto L_0x000f;
    L_0x000c:
        r5 = r18;
    L_0x000e:
        return r5;
    L_0x000f:
        if (r23 != 0) goto L_0x038d;
    L_0x0011:
        r2 = r14.b;
        r2 = com.twitter.util.aj.b(r2);
        if (r2 == 0) goto L_0x038d;
    L_0x0019:
        r2 = "recommendations_opt_out_enabled";
        r2 = com.twitter.config.d.a(r2);
        if (r2 == 0) goto L_0x038d;
    L_0x0022:
        r2 = "recommendations_opt_out_supported_types";
        r2 = com.twitter.config.d.c(r2);
        r3 = r14.b;
        r2 = r2.contains(r3);
        if (r2 == 0) goto L_0x038d;
    L_0x0031:
        r2 = r14.a;
        r2 = android.preference.PreferenceManager.getDefaultSharedPreferences(r2);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = r14.b;
        r3 = r3.append(r4);
        r4 = "_opt_out_count";
        r3 = r3.append(r4);
        r3 = r3.toString();
        r4 = 0;
        r2 = r2.getInt(r3, r4);
        r3 = "recommendations_opt_out_max_views";
        r4 = 0;
        r3 = com.twitter.config.d.a(r3, r4);
        if (r2 >= r3) goto L_0x038d;
    L_0x005c:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r2 = r2.c;
        r4 = r14.h;
        r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r4 == 0) goto L_0x0075;
    L_0x006d:
        r4 = r14.h;
        r6 = -1;
        r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r4 != 0) goto L_0x038d;
    L_0x0075:
        r14.h = r2;
        r6 = -1;
        r8 = 18;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r5 = r18;
        r9 = r19;
        r18 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r5 = r18;
    L_0x0089:
        switch(r23) {
            case 2: goto L_0x0190;
            case 3: goto L_0x0151;
            case 4: goto L_0x008c;
            case 5: goto L_0x008c;
            case 6: goto L_0x00df;
            case 7: goto L_0x029c;
            case 8: goto L_0x0138;
            case 9: goto L_0x0226;
            case 10: goto L_0x0263;
            case 11: goto L_0x02da;
            case 12: goto L_0x01be;
            case 13: goto L_0x00b3;
            default: goto L_0x008c;
        };
    L_0x008c:
        r2 = r14.d;
        r3 = 8;
        if (r2 != r3) goto L_0x009a;
    L_0x0092:
        r2 = r14.c;
        r2 = com.twitter.android.events.b.c(r2);
        if (r2 != 0) goto L_0x00b3;
    L_0x009a:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r3 = r14;
        r4 = r15;
        r8 = r23;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
    L_0x00b3:
        if (r20 == 0) goto L_0x000e;
    L_0x00b5:
        switch(r23) {
            case 10: goto L_0x00ba;
            default: goto L_0x00b8;
        };
    L_0x00b8:
        goto L_0x000e;
    L_0x00ba:
        r6 = -1;
        r8 = 22;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r2 = r2.a;
        r3 = com.twitter.model.search.d.a;
        r2 = com.twitter.util.serialization.m.a(r2, r3);
        r2 = (com.twitter.model.search.d) r2;
        r5.j = r2;
        goto L_0x000e;
    L_0x00df:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r8 = 6;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r2 = 0;
        r4 = r17.iterator();
        r3 = r2;
    L_0x00fd:
        r2 = r4.hasNext();
        if (r2 == 0) goto L_0x0120;
    L_0x0103:
        r2 = r4.next();
        r2 = (defpackage.amb) r2;
        r2 = r2.a;
        r6 = com.twitter.util.serialization.s.b;
        r2 = com.twitter.util.serialization.m.a(r2, r6);
        r2 = (java.lang.Boolean) r2;
        if (r2 == 0) goto L_0x038a;
    L_0x0115:
        r2 = r2.booleanValue();
        if (r2 == 0) goto L_0x038a;
    L_0x011b:
        r3 = r3 + 1;
        r2 = r3;
    L_0x011e:
        r3 = r2;
        goto L_0x00fd;
    L_0x0120:
        if (r3 == 0) goto L_0x00b3;
    L_0x0122:
        r2 = r22 - r21;
        r2 = r2 + 1;
        if (r3 != r2) goto L_0x00b3;
    L_0x0128:
        r6 = -1;
        r8 = 14;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        goto L_0x00b3;
    L_0x0138:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r8 = 8;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        goto L_0x00b3;
    L_0x0151:
        r6 = -1;
        r8 = 16;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r13 = r17.iterator();
    L_0x0163:
        r2 = r13.hasNext();
        if (r2 == 0) goto L_0x00b3;
    L_0x0169:
        r2 = r13.next();
        r2 = (defpackage.amb) r2;
        r3 = r2.a;
        if (r3 == 0) goto L_0x0163;
    L_0x0173:
        r3 = r2.a;
        r4 = com.twitter.util.serialization.s.i;
        r3 = com.twitter.util.serialization.m.a(r3, r4);
        r12 = r3;
        r12 = (java.lang.String) r12;
        if (r12 == 0) goto L_0x0163;
    L_0x0180:
        r6 = r2.b;
        r8 = 3;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r5.h = r12;
        goto L_0x0163;
    L_0x0190:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r3 = r2.a;
        if (r3 == 0) goto L_0x00b3;
    L_0x019d:
        r3 = r2.a;
        r4 = com.twitter.model.search.j.a;
        r3 = com.twitter.util.serialization.m.a(r3, r4);
        r12 = r3;
        r12 = (com.twitter.model.search.j) r12;
        if (r12 == 0) goto L_0x00b3;
    L_0x01aa:
        r6 = r2.b;
        r3 = r14;
        r4 = r15;
        r8 = r23;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r5.g = r12;
        goto L_0x00b3;
    L_0x01be:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r3 = r2.a;
        if (r3 == 0) goto L_0x00b3;
    L_0x01cb:
        r3 = r2.a;
        r4 = com.twitter.model.search.m.a;
        r3 = com.twitter.util.serialization.m.a(r3, r4);
        r12 = r3;
        r12 = (com.twitter.model.search.m) r12;
        if (r12 == 0) goto L_0x00b3;
    L_0x01d8:
        r3 = r12.b();
        if (r3 == 0) goto L_0x0212;
    L_0x01de:
        r6 = -1;
        r8 = 20;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r5.k = r12;
        r13 = r21;
    L_0x01f0:
        r0 = r22;
        if (r13 > r0) goto L_0x00b3;
    L_0x01f4:
        r2 = r13 - r21;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r8 = 21;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r5.k = r12;
        r2 = r13 + 1;
        r13 = r2;
        goto L_0x01f0;
    L_0x0212:
        r6 = r2.b;
        r3 = r14;
        r4 = r15;
        r8 = r23;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r5.k = r12;
        goto L_0x00b3;
    L_0x0226:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r3 = r14;
        r4 = r15;
        r8 = r23;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r3 = r2.a;
        if (r3 == 0) goto L_0x00b3;
    L_0x0243:
        r2 = r2.a;
        r3 = com.twitter.model.search.g.a;
        r2 = com.twitter.util.serialization.m.a(r2, r3);
        r2 = (com.twitter.model.search.g) r2;
        if (r2 == 0) goto L_0x00b3;
    L_0x024f:
        r6 = -1;
        r8 = 15;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r5.i = r2;
        goto L_0x00b3;
    L_0x0263:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r8 = 23;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r10 = r21;
        r11 = r21;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r10 = r21 + 1;
    L_0x027e:
        r0 = r22;
        if (r10 > r0) goto L_0x00b3;
    L_0x0282:
        r2 = r10 - r21;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r8 = 23;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r11 = r10;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r10 = r10 + 1;
        goto L_0x027e;
    L_0x029c:
        r2 = r14.a;
        r2 = defpackage.bdj.a(r2);
        r2 = r2.b();
        if (r2 == 0) goto L_0x02b1;
    L_0x02a8:
        r2 = "twitter_access_android_media_forward_enabled";
        r2 = com.twitter.config.d.a(r2);
        if (r2 == 0) goto L_0x00b3;
    L_0x02b1:
        r2 = 0;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r3 = r14;
        r4 = r15;
        r8 = r23;
        r9 = r19;
        r10 = r21;
        r11 = r22;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r6 = -1;
        r8 = 17;
        r10 = 0;
        r11 = 0;
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        goto L_0x00b3;
    L_0x02da:
        r2 = r14.g;
        if (r2 != 0) goto L_0x02e2;
    L_0x02de:
        r2 = r14.f;
        if (r2 == 0) goto L_0x031e;
    L_0x02e2:
        r2 = r16.getPosition();
        r0 = r16;
        r1 = r21;
        r0.moveToPosition(r1);
        r0 = r16;
        r3 = r14.b(r0);
        r0 = r16;
        r0.moveToPosition(r2);
        r2 = r14.g;
        if (r2 != 0) goto L_0x030a;
    L_0x02fc:
        r2 = r14.c;
        if (r2 == 0) goto L_0x031e;
    L_0x0300:
        r2 = r14.c;
        r4 = r3.a;
        r2 = r2.equals(r4);
        if (r2 == 0) goto L_0x031e;
    L_0x030a:
        r2 = r14.a;
        r2 = r2 instanceof com.twitter.android.fl;
        if (r2 == 0) goto L_0x031a;
    L_0x0310:
        r2 = r14.a;
        r2 = (com.twitter.android.fl) r2;
        r2.a(r3);
        r2 = 0;
        r14.g = r2;
    L_0x031a:
        r2 = r14.e;
        if (r2 != 0) goto L_0x00b3;
    L_0x031e:
        r10 = r21;
    L_0x0320:
        r0 = r22;
        if (r10 > r0) goto L_0x0381;
    L_0x0324:
        r0 = r16;
        r2 = r0.moveToPosition(r10);
        if (r2 == 0) goto L_0x037e;
    L_0x032c:
        r2 = defpackage.ccu.r;
        r0 = r16;
        r2 = r0.getString(r2);
        r3 = r14.d;
        r4 = 8;
        if (r3 == r4) goto L_0x0340;
    L_0x033a:
        r2 = com.twitter.android.events.b.f(r2);
        if (r2 != 0) goto L_0x037e;
    L_0x0340:
        r2 = r10 - r21;
        r0 = r17;
        r2 = r0.get(r2);
        r2 = (defpackage.amb) r2;
        r6 = r2.b;
        r2 = defpackage.ccu.s;
        r0 = r16;
        r2 = r0.getInt(r2);
        r8 = com.twitter.android.pk.a(r2);
        r3 = r14;
        r4 = r15;
        r9 = r19;
        r11 = r10;
        r5 = r3.a(r4, r5, r6, r8, r9, r10, r11);
        r2 = defpackage.ccu.y;
        r0 = r16;
        r2 = r0.getString(r2);
        r3 = "IN_PROGRESS";
        r3 = r3.equals(r2);
        if (r3 != 0) goto L_0x037b;
    L_0x0372:
        r3 = "SCHEDULED";
        r2 = r3.equals(r2);
        if (r2 == 0) goto L_0x037e;
    L_0x037b:
        r2 = 1;
        r5.l = r2;
    L_0x037e:
        r10 = r10 + 1;
        goto L_0x0320;
    L_0x0381:
        r2 = r22 + 1;
        r0 = r16;
        r0.moveToPosition(r2);
        goto L_0x00b3;
    L_0x038a:
        r2 = r3;
        goto L_0x011e;
    L_0x038d:
        r5 = r18;
        goto L_0x0089;
        */
        throw new UnsupportedOperationException("Method not decompiled: ama.a(java.util.List, android.database.Cursor, java.util.List, com.twitter.android.pk, int, boolean, int, int, int):com.twitter.android.pk");
    }

    private TopicView$TopicData b(Cursor cursor) {
        String string = cursor.getString(ccu.r);
        int i = cursor.getInt(ccu.s);
        String string2 = cursor.getString(ccu.u);
        String string3 = cursor.getString(ccu.v);
        String string4 = cursor.getString(ccu.z);
        String string5 = cursor.getString(ccu.w);
        String string6 = cursor.getString(ccu.A);
        String string7 = cursor.getString(ccu.t);
        String string8 = cursor.getString(ccu.x);
        String string9 = cursor.getString(ccu.y);
        byte[] blob = cursor.getBlob(ccu.D);
        return new TopicView$TopicData(string, i, string2, string3, string4, string6, string7, string8, string5, cursor.getInt(ccu.B), cursor.getLong(ccu.C), blob, string9);
    }
}
