package com.twitter.library.provider;

import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.DataSetObserver;

/* compiled from: Twttr */
public class ce extends CursorWrapper {
    private final Cursor a;
    private final int b;
    private final int c;

    public ce(Cursor cursor, int i, int i2) {
        super(cursor);
        if (i2 < i) {
            throw new IllegalArgumentException(String.format("End position must be greater than or equal start.%nstart: %d, end: %d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        } else if (i < 0) {
            throw new IllegalArgumentException(String.format("Start position must be greater than or equal 0.%nstart: " + i, new Object[0]));
        } else if (i2 >= cursor.getCount()) {
            throw new IllegalArgumentException(String.format("End position must be less than size.%nend: %d, size: %d", new Object[]{Integer.valueOf(i2), Integer.valueOf(cursor.getCount())}));
        } else {
            this.a = cursor;
            this.b = i;
            this.c = i2;
        }
    }

    public int getCount() {
        return (this.c - this.b) + 1;
    }

    public int getPosition() {
        return this.a.getPosition() - this.b;
    }

    public boolean moveToPosition(int i) {
        return this.a.moveToPosition(this.b + i);
    }

    public boolean moveToFirst() {
        return this.a.moveToPosition(this.b);
    }

    public boolean moveToLast() {
        return this.a.moveToPosition(this.c);
    }

    public boolean moveToPrevious() {
        return this.a.moveToPrevious() && !isBeforeFirst();
    }

    public boolean moveToNext() {
        return this.a.moveToNext() && !isAfterLast();
    }

    public boolean isFirst() {
        return this.a.getPosition() == this.b;
    }

    public boolean isLast() {
        return this.a.getPosition() == this.c;
    }

    public boolean isBeforeFirst() {
        return this.a.getPosition() < this.b;
    }

    public boolean isAfterLast() {
        return this.a.getPosition() > this.c;
    }

    public void deactivate() {
    }

    public boolean requery() {
        return true;
    }

    public void close() {
    }

    public void registerContentObserver(ContentObserver contentObserver) {
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
    }

    public void unregisterContentObserver(ContentObserver contentObserver) {
    }

    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
    }

    public boolean isClosed() {
        return this.a.isClosed();
    }

    public int a() {
        return this.c;
    }

    public int b() {
        return this.b;
    }
}
