package com.google.android.gms.ads.internal.formats;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qw;
import com.google.android.gms.internal.su;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@oi
public class r extends dn implements OnClickListener, OnTouchListener, OnGlobalLayoutListener, OnScrollChangedListener {
    boolean a;
    int b;
    int c;
    private final Object d;
    private final FrameLayout e;
    private FrameLayout f;
    private Map<String, WeakReference<View>> g;
    private b h;
    private h i;

    public r(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.d = new Object();
        this.g = new HashMap();
        this.a = false;
        this.e = frameLayout;
        this.f = frameLayout2;
        su.a(this.e, (OnGlobalLayoutListener) this);
        su.a(this.e, (OnScrollChangedListener) this);
        this.e.setOnTouchListener(this);
    }

    int a(int i) {
        return aa.a().b(this.i.f(), i);
    }

    Point a(MotionEvent motionEvent) {
        int[] iArr = new int[2];
        this.e.getLocationOnScreen(iArr);
        return new Point((int) (motionEvent.getRawX() - ((float) iArr[0])), (int) (motionEvent.getRawY() - ((float) iArr[1])));
    }

    b a(j jVar) {
        return jVar.a((OnClickListener) this);
    }

    public j a(String str) {
        j a;
        synchronized (this.d) {
            Object obj;
            WeakReference weakReference = (WeakReference) this.g.get(str);
            if (weakReference == null) {
                obj = null;
            } else {
                View view = (View) weakReference.get();
            }
            a = m.a(obj);
        }
        return a;
    }

    public void a() {
        this.f.removeAllViews();
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
    }

    void a(View view) {
        if (this.i != null) {
            h c = this.i instanceof g ? ((g) this.i).c() : this.i;
            if (c != null) {
                c.c(view);
            }
        }
    }

    public void a(j jVar) {
        synchronized (this.d) {
            this.a = true;
            a(null);
            Object a = m.a(jVar);
            if (a instanceof j) {
                j jVar2 = (j) a;
                if ((this.i instanceof g) && ((g) this.i).b()) {
                    ((g) this.i).a((h) jVar2);
                } else {
                    this.i = jVar2;
                    if (this.i instanceof g) {
                        ((g) this.i).a(null);
                    }
                }
                this.f.removeAllViews();
                this.h = a(jVar2);
                if (this.h != null) {
                    this.g.put("1007", new WeakReference(this.h.a()));
                    this.f.addView(this.h);
                }
                qw.a.post(new s(this, jVar2));
                jVar2.a(this.e);
                a(this.e);
                return;
            }
            b.d("Not an instance of native engine. This is most likely a transient error");
        }
    }

    public void a(String str, j jVar) {
        View view = (View) m.a(jVar);
        synchronized (this.d) {
            if (view == null) {
                this.g.remove(str);
            } else {
                this.g.put(str, new WeakReference(view));
                view.setOnTouchListener(this);
                view.setOnClickListener(this);
            }
        }
    }

    int b() {
        return this.e.getMeasuredWidth();
    }

    Point b(View view) {
        if (this.h == null || !this.h.a().equals(view)) {
            Point point = new Point();
            view.getGlobalVisibleRect(new Rect(), point);
            return point;
        }
        Point point2 = new Point();
        this.e.getGlobalVisibleRect(new Rect(), point2);
        Point point3 = new Point();
        view.getGlobalVisibleRect(new Rect(), point3);
        return new Point(point3.x - point2.x, point3.y - point2.y);
    }

    int c() {
        return this.e.getMeasuredHeight();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onClick(android.view.View r10) {
        /*
        r9 = this;
        r6 = r9.d;
        monitor-enter(r6);
        r0 = r9.i;	 Catch:{ all -> 0x0096 }
        if (r0 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r6);	 Catch:{ all -> 0x0096 }
    L_0x0008:
        return;
    L_0x0009:
        r3 = new org.json.JSONObject;	 Catch:{ all -> 0x0096 }
        r3.<init>();	 Catch:{ all -> 0x0096 }
        r0 = r9.g;	 Catch:{ all -> 0x0096 }
        r0 = r0.entrySet();	 Catch:{ all -> 0x0096 }
        r2 = r0.iterator();	 Catch:{ all -> 0x0096 }
    L_0x0018:
        r0 = r2.hasNext();	 Catch:{ all -> 0x0096 }
        if (r0 == 0) goto L_0x0099;
    L_0x001e:
        r0 = r2.next();	 Catch:{ all -> 0x0096 }
        r0 = (java.util.Map.Entry) r0;	 Catch:{ all -> 0x0096 }
        r1 = r0.getValue();	 Catch:{ all -> 0x0096 }
        r1 = (java.lang.ref.WeakReference) r1;	 Catch:{ all -> 0x0096 }
        r1 = r1.get();	 Catch:{ all -> 0x0096 }
        r1 = (android.view.View) r1;	 Catch:{ all -> 0x0096 }
        r4 = r9.b(r1);	 Catch:{ all -> 0x0096 }
        r5 = new org.json.JSONObject;	 Catch:{ all -> 0x0096 }
        r5.<init>();	 Catch:{ all -> 0x0096 }
        r7 = "width";
        r8 = r1.getWidth();	 Catch:{ JSONException -> 0x0077 }
        r8 = r9.a(r8);	 Catch:{ JSONException -> 0x0077 }
        r5.put(r7, r8);	 Catch:{ JSONException -> 0x0077 }
        r7 = "height";
        r1 = r1.getHeight();	 Catch:{ JSONException -> 0x0077 }
        r1 = r9.a(r1);	 Catch:{ JSONException -> 0x0077 }
        r5.put(r7, r1);	 Catch:{ JSONException -> 0x0077 }
        r1 = "x";
        r7 = r4.x;	 Catch:{ JSONException -> 0x0077 }
        r7 = r9.a(r7);	 Catch:{ JSONException -> 0x0077 }
        r5.put(r1, r7);	 Catch:{ JSONException -> 0x0077 }
        r1 = "y";
        r4 = r4.y;	 Catch:{ JSONException -> 0x0077 }
        r4 = r9.a(r4);	 Catch:{ JSONException -> 0x0077 }
        r5.put(r1, r4);	 Catch:{ JSONException -> 0x0077 }
        r1 = r0.getKey();	 Catch:{ JSONException -> 0x0077 }
        r1 = (java.lang.String) r1;	 Catch:{ JSONException -> 0x0077 }
        r3.put(r1, r5);	 Catch:{ JSONException -> 0x0077 }
        goto L_0x0018;
    L_0x0077:
        r1 = move-exception;
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0096 }
        r1.<init>();	 Catch:{ all -> 0x0096 }
        r4 = "Unable to get view rectangle for view ";
        r1 = r1.append(r4);	 Catch:{ all -> 0x0096 }
        r0 = r0.getKey();	 Catch:{ all -> 0x0096 }
        r0 = (java.lang.String) r0;	 Catch:{ all -> 0x0096 }
        r0 = r1.append(r0);	 Catch:{ all -> 0x0096 }
        r0 = r0.toString();	 Catch:{ all -> 0x0096 }
        com.google.android.gms.ads.internal.util.client.b.d(r0);	 Catch:{ all -> 0x0096 }
        goto L_0x0018;
    L_0x0096:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0096 }
        throw r0;
    L_0x0099:
        r4 = new org.json.JSONObject;	 Catch:{ all -> 0x0096 }
        r4.<init>();	 Catch:{ all -> 0x0096 }
        r0 = "x";
        r1 = r9.b;	 Catch:{ JSONException -> 0x00f2 }
        r1 = r9.a(r1);	 Catch:{ JSONException -> 0x00f2 }
        r4.put(r0, r1);	 Catch:{ JSONException -> 0x00f2 }
        r0 = "y";
        r1 = r9.c;	 Catch:{ JSONException -> 0x00f2 }
        r1 = r9.a(r1);	 Catch:{ JSONException -> 0x00f2 }
        r4.put(r0, r1);	 Catch:{ JSONException -> 0x00f2 }
    L_0x00b6:
        r5 = new org.json.JSONObject;	 Catch:{ all -> 0x0096 }
        r5.<init>();	 Catch:{ all -> 0x0096 }
        r0 = "width";
        r1 = r9.b();	 Catch:{ JSONException -> 0x00fa }
        r1 = r9.a(r1);	 Catch:{ JSONException -> 0x00fa }
        r5.put(r0, r1);	 Catch:{ JSONException -> 0x00fa }
        r0 = "height";
        r1 = r9.c();	 Catch:{ JSONException -> 0x00fa }
        r1 = r9.a(r1);	 Catch:{ JSONException -> 0x00fa }
        r5.put(r0, r1);	 Catch:{ JSONException -> 0x00fa }
    L_0x00d7:
        r0 = r9.h;	 Catch:{ all -> 0x0096 }
        if (r0 == 0) goto L_0x0102;
    L_0x00db:
        r0 = r9.h;	 Catch:{ all -> 0x0096 }
        r0 = r0.a();	 Catch:{ all -> 0x0096 }
        r0 = r0.equals(r10);	 Catch:{ all -> 0x0096 }
        if (r0 == 0) goto L_0x0102;
    L_0x00e7:
        r0 = r9.i;	 Catch:{ all -> 0x0096 }
        r1 = "1007";
        r0.a(r1, r3, r4, r5);	 Catch:{ all -> 0x0096 }
    L_0x00ef:
        monitor-exit(r6);	 Catch:{ all -> 0x0096 }
        goto L_0x0008;
    L_0x00f2:
        r0 = move-exception;
        r0 = "Unable to get click location";
        com.google.android.gms.ads.internal.util.client.b.d(r0);	 Catch:{ all -> 0x0096 }
        goto L_0x00b6;
    L_0x00fa:
        r0 = move-exception;
        r0 = "Unable to get native ad view bounding box";
        com.google.android.gms.ads.internal.util.client.b.d(r0);	 Catch:{ all -> 0x0096 }
        goto L_0x00d7;
    L_0x0102:
        r0 = r9.i;	 Catch:{ all -> 0x0096 }
        r2 = r9.g;	 Catch:{ all -> 0x0096 }
        r1 = r10;
        r0.a(r1, r2, r3, r4, r5);	 Catch:{ all -> 0x0096 }
        goto L_0x00ef;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.formats.r.onClick(android.view.View):void");
    }

    public void onGlobalLayout() {
        synchronized (this.d) {
            if (this.a) {
                int b = b();
                int c = c();
                if (!(b == 0 || c == 0)) {
                    this.f.setLayoutParams(new LayoutParams(b, c));
                    this.a = false;
                }
            }
            if (this.i != null) {
                this.i.b(this.e);
            }
        }
    }

    public void onScrollChanged() {
        synchronized (this.d) {
            if (this.i != null) {
                this.i.b(this.e);
            }
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.d) {
            if (this.i == null) {
            } else {
                Point a = a(motionEvent);
                this.b = a.x;
                this.c = a.y;
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setLocation((float) a.x, (float) a.y);
                this.i.a(obtain);
                obtain.recycle();
            }
        }
        return false;
    }
}
