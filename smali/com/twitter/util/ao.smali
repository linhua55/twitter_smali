.class public Lcom/twitter/util/ao;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/util/ao;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
    .end array-data
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/twitter/util/m;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twitter/util/ao;->b(J)I

    move-result v0

    return v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 175
    const-wide/16 v2, 0x1e

    div-long/2addr v0, v2

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/twitter/util/ao;->b(Ljava/lang/String;)[B

    .line 60
    invoke-static {}, Lcom/twitter/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Lcom/twitter/util/ao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x6

    const-string/jumbo v1, "HmacSHA1"

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/util/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/twitter/util/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 109
    invoke-static {p0}, Lcom/twitter/util/ao;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    invoke-static {p3, v1, v0}, Lcom/twitter/util/ao;->a(Ljava/lang/String;[B[B)[B

    move-result-object v0

    .line 113
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    .line 115
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    .line 121
    sget-object v1, Lcom/twitter/util/ao;->a:[I

    aget v1, v1, p2

    rem-int/2addr v0, v1

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;[B[B)[B
    .locals 3

    .prologue
    .line 148
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 149
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "RAW"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 152
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(J)I
    .locals 4

    .prologue
    .line 188
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    const-wide/16 v2, 0x1e

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 189
    rsub-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/twitter/util/m;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twitter/util/ao;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Lcom/twitter/util/k;->d(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
