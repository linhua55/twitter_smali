package com.caverock.androidsvg;

import defpackage.bdd;

/* compiled from: Twttr */
public class h {
    static long e;
    private static final float[] f;
    private static final float[] g;
    int a;
    boolean b;
    long c;
    int d;

    static {
        e = 922337203685477580L;
        f = new float[]{1.0f, 10.0f, 100.0f, 1000.0f, 10000.0f, 100000.0f, 1000000.0f, 1.0E7f, 1.0E8f, 1.0E9f, 1.0E10f, 9.9999998E10f, 1.0E12f, 9.9999998E12f, 1.0E14f, 9.9999999E14f, 1.00000003E16f, 9.9999998E16f, 9.9999998E17f, 1.0E19f, 1.0E20f, 1.0E21f, 1.0E22f, 1.0E23f, 1.0E24f, 1.0E25f, 1.0E26f, 1.0E27f, 1.0E28f, 1.0E29f, 1.0E30f, 1.0E31f, 1.0E32f, 1.0E33f, 1.0E34f, 1.0E35f, 1.0E36f, 1.0E37f, 1.0E38f};
        g = new float[]{1.0f, 0.1f, 0.01f, 0.001f, 1.0E-4f, 1.0E-5f, 1.0E-6f, 1.0E-7f, 1.0E-8f, 1.0E-9f, 1.0E-10f, 1.0E-11f, 1.0E-12f, 1.0E-13f, 1.0E-14f, 1.0E-15f, 1.0E-16f, 1.0E-17f, 1.0E-18f, 1.0E-19f, 1.0E-20f, 1.0E-21f, 1.0E-22f, 1.0E-23f, 1.0E-24f, 1.0E-25f, 1.0E-26f, 1.0E-27f, 1.0E-28f, 1.0E-29f, 1.0E-30f, 1.0E-31f, 1.0E-32f, 1.0E-33f, 1.0E-34f, 1.0E-35f, 1.0E-36f, 1.0E-37f, 1.0E-38f};
    }

    public h(boolean z, long j, int i, int i2) {
        this.b = z;
        this.c = j;
        this.d = i;
        this.a = i2;
    }

    public int a() {
        return this.a;
    }

    public static h a(String str, int i, int i2) {
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        Object obj = null;
        if (i >= i2) {
            return null;
        }
        boolean z2;
        int i6;
        Object obj2;
        switch (str.charAt(i)) {
            case bdd.AppCompatTheme_dialogPreferredPadding /*43*/:
                break;
            case bdd.AppCompatTheme_actionDropDownStyle /*45*/:
                z = true;
                break;
            default:
                z2 = false;
                break;
        }
        i++;
        z2 = z;
        int i7 = 0;
        int i8 = i;
        long j = 0;
        while (i8 < i2) {
            Object obj3;
            long j2;
            int i9;
            Object obj4;
            int i10;
            char charAt;
            char charAt2 = str.charAt(i8);
            int i11;
            if (charAt2 == '0') {
                if (i3 == 0) {
                    obj3 = obj;
                    i6 = i4 + 1;
                    i11 = i5;
                    i5 = i3;
                    j2 = j;
                    i9 = i11;
                    obj4 = obj3;
                } else {
                    obj3 = obj;
                    i6 = i4;
                    i11 = i5 + 1;
                    i5 = i3;
                    j2 = j;
                    i9 = i11;
                    obj4 = obj3;
                }
            } else if (charAt2 < '1' || charAt2 > '9') {
                if (charAt2 == '.' && obj == null) {
                    i7 = i8 - i;
                    i6 = i4;
                    i11 = i5;
                    i5 = i3;
                    j2 = j;
                    i9 = i11;
                    r4 = 1;
                }
                if (obj == null && i8 == i7 + 1) {
                    return null;
                }
                if (i3 == 0) {
                    i10 = i3;
                } else if (i4 == 0) {
                    return null;
                } else {
                    i10 = 1;
                }
                if (obj != null) {
                    i5 = (i7 - i4) - i10;
                }
                if (i8 < i2) {
                    char charAt3 = str.charAt(i8);
                    if (charAt3 == 'E' || charAt3 == 'e') {
                        obj2 = null;
                        i6 = i8 + 1;
                        if (i6 == i2) {
                            return null;
                        }
                        switch (str.charAt(i6)) {
                            case bdd.AppCompatTheme_dialogPreferredPadding /*43*/:
                                break;
                            case bdd.AppCompatTheme_actionDropDownStyle /*45*/:
                                obj2 = 1;
                                break;
                        }
                        i6++;
                        i3 = 0;
                        i4 = i6;
                        while (i4 < i2) {
                            charAt = str.charAt(i4);
                            if (charAt >= '0' && charAt <= '9') {
                                if (((long) i3) > e) {
                                    return null;
                                }
                                i3 = (i3 * 10) + (charAt - 48);
                                i4++;
                            }
                            if (i4 != i6) {
                                return null;
                            }
                            if (obj2 != null) {
                                i6 = i5 - i3;
                                i5 = i4;
                            } else {
                                i6 = i5 + i3;
                                i5 = i4;
                            }
                            if (i6 + i10 <= 39 || i6 + i10 < -44) {
                                return null;
                            }
                            if (j == 0) {
                                return new h(z2, 0, 0, i5);
                            }
                            return new h(z2, j, i6, i5);
                        }
                        if (i4 != i6) {
                            return null;
                        }
                        if (obj2 != null) {
                            i6 = i5 + i3;
                            i5 = i4;
                        } else {
                            i6 = i5 - i3;
                            i5 = i4;
                        }
                        if (i6 + i10 <= 39) {
                        }
                        return null;
                    }
                }
                i6 = i5;
                i5 = i8;
                if (i6 + i10 <= 39) {
                }
                return null;
            } else {
                i3 += i5;
                long j3 = j;
                r4 = i5;
                while (r4 > 0) {
                    if (j3 > e) {
                        return null;
                    }
                    j3 *= 10;
                    r4--;
                }
                if (j3 > e) {
                    return null;
                }
                j3 = (j3 * 10) + ((long) (charAt2 - 48));
                i9 = i3 + 1;
                if (j3 < 0) {
                    return null;
                }
                i5 = i9;
                i9 = r4;
                obj4 = obj;
                i6 = i4;
                j2 = j3;
            }
            i8++;
            obj3 = obj4;
            j = j2;
            i4 = i6;
            i3 = i5;
            obj = obj3;
            i5 = i9;
        }
        if (obj == null) {
        }
        if (i3 == 0) {
            i10 = i3;
        } else if (i4 == 0) {
            return null;
        } else {
            i10 = 1;
        }
        if (obj != null) {
            i5 = (i7 - i4) - i10;
        }
        if (i8 < i2) {
            char charAt32 = str.charAt(i8);
            obj2 = null;
            i6 = i8 + 1;
            if (i6 == i2) {
                return null;
            }
            switch (str.charAt(i6)) {
                case bdd.AppCompatTheme_dialogPreferredPadding /*43*/:
                    break;
                case bdd.AppCompatTheme_actionDropDownStyle /*45*/:
                    obj2 = 1;
                    break;
            }
            i6++;
            i3 = 0;
            i4 = i6;
            while (i4 < i2) {
                charAt = str.charAt(i4);
                if (((long) i3) > e) {
                    return null;
                }
                i3 = (i3 * 10) + (charAt - 48);
                i4++;
            }
            if (i4 != i6) {
                return null;
            }
            if (obj2 != null) {
                i6 = i5 - i3;
                i5 = i4;
            } else {
                i6 = i5 + i3;
                i5 = i4;
            }
            if (i6 + i10 <= 39) {
            }
            return null;
        }
        i6 = i5;
        i5 = i8;
        if (i6 + i10 <= 39) {
        }
        return null;
    }

    public float b() {
        float f = (float) this.c;
        if (this.d > 0) {
            f *= f[this.d];
        } else if (this.d < 0) {
            if (this.d < -38) {
                f = (float) (((double) f) * 1.0E-20d);
                this.d += 20;
            }
            f *= g[-this.d];
        }
        return this.b ? -f : f;
    }
}
