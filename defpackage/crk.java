package defpackage;

/* compiled from: Twttr */
/* renamed from: crk */
public class crk {
    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final float f;
    private float g;
    private float h;
    private final float i;
    private final float j;
    private float k;
    private float l;
    private float m;

    public crk() {
        this(1.5f);
    }

    public crk(float f) {
        this((f * 4.0f) + 4.0f, 4.0f, 1.0f);
    }

    public crk(float f, float f2, float f3) {
        this.k = 0.0f;
        this.l = 1.0f;
        this.m = 0.0f;
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = a();
        this.f = c();
        this.e = b();
        this.i = d(this.f, this.d);
        this.j = c(this.f, this.d);
        a(0.0f, 1.0f, 0.0f);
    }

    public void a(float f, float f2, float f3) {
        this.k = f;
        this.l = f2 - f;
        this.m = f3;
        this.g = a(this.l, this.m);
        this.h = b(this.l, this.m);
    }

    private float a() {
        return (float) Math.sqrt((double) (this.a / this.c));
    }

    private float b() {
        return (float) (((double) this.d) * Math.sqrt(1.0d - Math.pow((double) this.f, 2.0d)));
    }

    private float c() {
        return (float) (((double) this.b) / (2.0d * Math.sqrt((double) (this.c * this.a))));
    }

    private float a(float f, float f2) {
        if ((this.f >= 0.0f && this.f < 1.0f) || this.f == 1.0f) {
            return f;
        }
        if (this.f > 1.0f) {
            return f + (((this.i * f) - f2) / (this.j - this.i));
        }
        throw new IllegalArgumentException();
    }

    private float b(float f, float f2) {
        if (this.f >= 0.0f && this.f < 1.0f) {
            return (1.0f / this.e) * (((this.f * this.d) * f) + f2);
        }
        if (this.f == 1.0f) {
            return (this.d * f) + f2;
        }
        if (this.f > 1.0f) {
            return (-((this.i * f) - f2)) / (this.j - this.i);
        }
        throw new IllegalArgumentException();
    }

    private float c(float f, float f2) {
        float f3 = (2.0f * f) * f2;
        return ((-f3) - ((float) Math.sqrt((double) ((f3 * f3) - ((f2 * f2) * 4.0f))))) / 2.0f;
    }

    private float d(float f, float f2) {
        float f3 = (2.0f * f) * f2;
        return (((float) Math.sqrt((double) ((f3 * f3) - ((f2 * f2) * 4.0f)))) + (-f3)) / 2.0f;
    }

    public float a(float f) {
        float f2 = 0.0062831854f * f;
        if (this.f >= 0.0f && this.f < 1.0f) {
            float cos = (float) (((double) this.g) * Math.cos((double) (this.e * f2)));
            return ((((float) (((double) this.h) * Math.sin((double) (f2 * this.e)))) + cos) * ((float) Math.pow(2.718281828459045d, (double) (((-this.f) * this.d) * f2)))) + this.k;
        } else if (this.f == 1.0f) {
            r1 = (float) Math.pow(2.718281828459045d, (double) ((-this.d) * f2));
            return (((f2 * this.h) + this.g) * r1) + this.k;
        } else if (this.f > 1.0f) {
            r1 = (float) (((double) this.g) * Math.pow(2.718281828459045d, (double) (this.i * f2)));
            return (((float) (((double) this.h) * Math.pow(2.718281828459045d, (double) (f2 * this.j)))) + r1) + this.k;
        } else {
            throw new IllegalArgumentException();
        }
    }

    public float b(float f) {
        double cos;
        float f2 = 0.0062831854f * f;
        if (this.f >= 0.0f && this.f < 1.0f) {
            cos = (((Math.cos((double) (f2 * this.e)) * ((double) (this.h * this.e))) + (((double) (this.g * (-this.e))) * Math.sin((double) (this.e * f2)))) * Math.pow(2.718281828459045d, (double) (((-this.f) * this.d) * f2))) + ((((double) ((-this.f) * this.d)) * Math.pow(2.718281828459045d, (double) (((-this.f) * this.d) * f2))) * ((((double) this.g) * Math.cos((double) (this.e * f2))) + (((double) this.h) * Math.sin((double) (this.e * f2)))));
        } else if (this.f == 1.0f) {
            cos = ((Math.pow(2.718281828459045d, (double) (f2 * (-this.d))) * ((double) (-this.d))) * ((double) (this.h * f2))) + ((((double) this.g) * (((double) (-this.d)) * Math.pow(2.718281828459045d, (double) ((-this.d) * f2)))) + (((double) this.h) * Math.pow(2.718281828459045d, (double) ((-this.d) * f2))));
        } else if (this.f > 1.0f) {
            cos = (Math.pow(2.718281828459045d, (double) (f2 * this.j)) * ((double) (this.h * this.j))) + (((double) (this.g * this.i)) * Math.pow(2.718281828459045d, (double) (this.i * f2)));
        } else {
            throw new IllegalArgumentException();
        }
        return (float) cos;
    }
}
