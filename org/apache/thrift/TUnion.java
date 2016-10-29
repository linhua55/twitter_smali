package org.apache.thrift;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.d;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public abstract class TUnion<T extends TUnion, F extends d> implements TBase<T, F> {
    protected F setField_;
    protected Object value_;

    protected abstract a a(F f);

    protected abstract e a();

    protected abstract void a(F f, Object obj) throws ClassCastException;

    protected abstract void b(d dVar) throws TException;

    protected TUnion() {
        this.setField_ = null;
        this.value_ = null;
    }

    public F b() {
        return this.setField_;
    }

    public Object c() {
        return this.value_;
    }

    public boolean b(F f) {
        return this.setField_ == f;
    }

    public void b(F f, Object obj) {
        a(f, obj);
        this.setField_ = f;
        this.value_ = obj;
    }

    public void a(d dVar) throws TException {
        if (b() == null || c() == null) {
            throw new TProtocolException("Cannot write a TUnion with no set value!");
        }
        dVar.a(a());
        dVar.a(a(this.setField_));
        b(dVar);
        dVar.b();
        dVar.c();
        dVar.a();
    }

    public String toString() {
        String a;
        String str = "<" + getClass().getSimpleName() + " ";
        if (b() != null) {
            Object c = c();
            if (c instanceof byte[]) {
                a = a((byte[]) c);
            } else {
                a = c.toString();
            }
            a = str + a(b()).a + ":" + a;
        } else {
            a = str;
        }
        return a + ">";
    }

    private static String a(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        int min = Math.min(bArr.length, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        for (int i = 0; i < min; i++) {
            if (i != 0) {
                stringBuilder.append(" ");
            }
            String toHexString = Integer.toHexString(bArr[i] & MotionEventCompat.ACTION_MASK);
            if (toHexString.length() <= 1) {
                toHexString = "0" + toHexString;
            }
            stringBuilder.append(toHexString);
        }
        if (bArr.length > AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            stringBuilder.append(" ...");
        }
        return stringBuilder.toString();
    }
}
