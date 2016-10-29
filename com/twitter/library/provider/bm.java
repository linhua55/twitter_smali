package com.twitter.library.provider;

import android.database.ContentObservable;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.DataSetObserver;
import com.twitter.library.provider.bm$com.twitter.library.provider.bo;
import java.util.List;

/* compiled from: Twttr */
public abstract class bm<T> extends CursorWrapper {
    protected final bo a;
    protected final int b;
    protected List<T> c;
    protected int d;
    protected Cursor e;
    volatile boolean f;
    volatile boolean g;
    volatile boolean h;
    private final ContentObservable i;

    public abstract void a();

    public bm(Cursor cursor) {
        this(cursor, 400);
    }

    public bm(Cursor cursor, int i) {
        super(cursor);
        this.d = -1;
        if (i <= 0) {
            throw new IllegalArgumentException("Limit must be greater than 0");
        }
        this.a = new bo(this);
        this.i = new ContentObservable();
        this.e = cursor;
        this.b = i;
        if (cursor != null && !cursor.isClosed()) {
            cursor.registerDataSetObserver(new bp(this));
            cursor.registerContentObserver(new bn(this));
        }
    }

    public final void b() {
        this.f = true;
        a();
        this.f = false;
        if (this.g) {
            this.g = false;
            this.i.dispatchChange(this.h);
        }
    }

    public int getCount() {
        if (this.c != null) {
            return this.c.size();
        }
        return 0;
    }

    public int getPosition() {
        return this.d;
    }

    public boolean moveToFirst() {
        return moveToPosition(0);
    }

    public boolean moveToLast() {
        return moveToPosition(this.c.size() - 1);
    }

    public boolean moveToNext() {
        return moveToPosition(this.d + 1);
    }

    public boolean moveToPrevious() {
        return moveToPosition(this.d - 1);
    }

    public boolean moveToPosition(int i) {
        int count = getCount();
        if (i <= -1) {
            this.d = -1;
            return false;
        } else if (i >= count) {
            this.d = count;
            return false;
        } else {
            this.d = i;
            return true;
        }
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.a.registerObserver(dataSetObserver);
    }

    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.a.unregisterObserver(dataSetObserver);
    }

    public void registerContentObserver(ContentObserver contentObserver) {
        this.i.registerObserver(contentObserver);
    }

    public void unregisterContentObserver(ContentObserver contentObserver) {
        this.i.unregisterObserver(contentObserver);
    }

    public T c() {
        if (this.c == null) {
            return null;
        }
        return this.c.get(this.d);
    }

    public boolean requery() {
        boolean z = false;
        bo boVar = this.a;
        boVar.a(false);
        if (!this.e.isClosed() && this.e.requery()) {
            z = true;
        }
        b();
        boVar.a(true);
        boVar.notifyChanged();
        return z;
    }

    public static Cursor a(Cursor cursor) {
        Cursor cursor2 = cursor;
        while (cursor2 instanceof CursorWrapper) {
            cursor2 = ((CursorWrapper) cursor2).getWrappedCursor();
        }
        return cursor2;
    }
}
