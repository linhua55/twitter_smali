package com.twitter.library.provider;

import android.database.AbstractCursor;
import android.database.CursorIndexOutOfBoundsException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ParcelableMatrixCursor extends AbstractCursor implements Parcelable {
    public static final Creator<ParcelableMatrixCursor> CREATOR;
    private final String[] a;
    private Object[] b;
    private int c;
    private final int d;

    static {
        CREATOR = new ca();
    }

    public ParcelableMatrixCursor(String[] strArr, int i) {
        this.c = 0;
        this.a = strArr;
        this.d = strArr.length;
        if (i < 1) {
            i = 1;
        }
        this.b = new Object[(this.d * i)];
    }

    public ParcelableMatrixCursor(String[] strArr) {
        this(strArr, 16);
    }

    public ParcelableMatrixCursor(Parcel parcel) {
        this.c = 0;
        this.d = parcel.readInt();
        this.a = new String[this.d];
        parcel.readStringArray(this.a);
        this.c = parcel.readInt();
        this.b = parcel.readArray(getClass().getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.d);
        parcel.writeStringArray(this.a);
        parcel.writeInt(this.c);
        parcel.writeArray(this.b);
    }

    private Object a(int i) {
        if (i < 0 || i >= this.d) {
            throw new CursorIndexOutOfBoundsException("Requested column: " + i + ", # of columns: " + this.d);
        } else if (this.mPos < 0) {
            throw new CursorIndexOutOfBoundsException("Before first row.");
        } else if (this.mPos < this.c) {
            return this.b[(this.mPos * this.d) + i];
        } else {
            throw new CursorIndexOutOfBoundsException("After last row.");
        }
    }

    public cb a() {
        this.c++;
        int i = this.c * this.d;
        b(i);
        return new cb(this, i - this.d, i);
    }

    private void b(int i) {
        if (i > this.b.length) {
            Object obj = this.b;
            int length = this.b.length * 2;
            if (length >= i) {
                i = length;
            }
            this.b = new Object[i];
            System.arraycopy(obj, 0, this.b, 0, obj.length);
        }
    }

    public int getCount() {
        return this.c;
    }

    public String[] getColumnNames() {
        return this.a;
    }

    public String getString(int i) {
        Object a = a(i);
        if (a == null) {
            return null;
        }
        return a.toString();
    }

    public short getShort(int i) {
        Object a = a(i);
        if (a == null) {
            return (short) 0;
        }
        if (a instanceof Number) {
            return ((Number) a).shortValue();
        }
        return Short.parseShort(a.toString());
    }

    public int getInt(int i) {
        Object a = a(i);
        if (a == null) {
            return 0;
        }
        if (a instanceof Number) {
            return ((Number) a).intValue();
        }
        return Integer.parseInt(a.toString());
    }

    public long getLong(int i) {
        Object a = a(i);
        if (a == null) {
            return 0;
        }
        if (a instanceof Number) {
            return ((Number) a).longValue();
        }
        return Long.parseLong(a.toString());
    }

    public float getFloat(int i) {
        Object a = a(i);
        if (a == null) {
            return 0.0f;
        }
        if (a instanceof Number) {
            return ((Number) a).floatValue();
        }
        return Float.parseFloat(a.toString());
    }

    public double getDouble(int i) {
        Object a = a(i);
        if (a == null) {
            return 0.0d;
        }
        if (a instanceof Number) {
            return ((Number) a).doubleValue();
        }
        return Double.parseDouble(a.toString());
    }

    public byte[] getBlob(int i) {
        return (byte[]) a(i);
    }

    public int getType(int i) {
        return 0;
    }

    public boolean isNull(int i) {
        return a(i) == null;
    }
}
