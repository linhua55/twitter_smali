.class public abstract Ldiu;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:[I

.field private static final b:[B

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldiu;->a:[I

    .line 11
    new-array v0, v1, [B

    sput-object v0, Ldiu;->b:[B

    .line 12
    new-array v0, v1, [I

    sput-object v0, Ldiu;->c:[I

    return-void

    .line 9
    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public static a(Ljava/math/BigInteger;)I
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 293
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitCount()I

    move-result v0

    goto :goto_0
.end method
