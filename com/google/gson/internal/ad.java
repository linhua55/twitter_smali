package com.google.gson.internal;

/* compiled from: Twttr */
class ad implements CharSequence {
    char[] a;

    ad() {
    }

    public int length() {
        return this.a.length;
    }

    public char charAt(int i) {
        return this.a[i];
    }

    public CharSequence subSequence(int i, int i2) {
        return new String(this.a, i, i2 - i);
    }
}
