package defpackage;

import android.database.AbstractCursor;
import android.database.Cursor;
import bbn;

/* compiled from: Twttr */
/* renamed from: aua */
public class aua extends AbstractCursor {
    private final String[] a;

    public static Cursor a() {
        return new aua(new String[]{"_id"});
    }

    public aua(String[] strArr) {
        this.a = strArr;
    }

    public int getCount() {
        return 0;
    }

    public String[] getColumnNames() {
        return this.a;
    }

    public byte[] getBlob(int i) {
        throw aua.b();
    }

    public String getString(int i) {
        throw aua.b();
    }

    public short getShort(int i) {
        throw aua.b();
    }

    public int getInt(int i) {
        throw aua.b();
    }

    public long getLong(int i) {
        throw aua.b();
    }

    public float getFloat(int i) {
        throw aua.b();
    }

    public double getDouble(int i) {
        throw aua.b();
    }

    public int getType(int i) {
        throw aua.b();
    }

    public boolean isNull(int i) {
        throw aua.b();
    }

    public boolean requery() {
        bbn.a(new UnsupportedOperationException("Requery is not allowed on the empty cursor."));
        return false;
    }

    private static UnsupportedOperationException b() {
        return new UnsupportedOperationException("This is an empty cursor. The query returned no results.");
    }
}
