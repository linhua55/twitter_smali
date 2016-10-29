.class public Lorg/spongycastle/asn1/b;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# static fields
.field public static final a:Lorg/spongycastle/asn1/b;

.field public static final b:Lorg/spongycastle/asn1/b;

.field private static final c:[B

.field private static final d:[B


# instance fields
.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lorg/spongycastle/asn1/b;->c:[B

    .line 24
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lorg/spongycastle/asn1/b;->d:[B

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/b;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/b;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/b;->a:Lorg/spongycastle/asn1/b;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/b;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/b;-><init>(Z)V

    sput-object v0, Lorg/spongycastle/asn1/b;->b:Lorg/spongycastle/asn1/b;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 137
    if-eqz p1, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/b;->c:[B

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/asn1/b;->e:[B

    .line 138
    return-void

    .line 137
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/b;->d:[B

    goto :goto_0
.end method

.method constructor <init>([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 111
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    aget-byte v0, p1, v2

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lorg/spongycastle/asn1/b;->d:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/b;->e:[B

    .line 128
    :goto_0
    return-void

    .line 120
    :cond_1
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 122
    sget-object v0, Lorg/spongycastle/asn1/b;->c:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/b;->e:[B

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {p1}, Lorg/spongycastle/util/a;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/b;->e:[B

    goto :goto_0
.end method

.method static a([B)Lorg/spongycastle/asn1/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    .line 193
    sget-object v0, Lorg/spongycastle/asn1/b;->a:Lorg/spongycastle/asn1/b;

    .line 201
    :goto_0
    return-object v0

    .line 195
    :cond_1
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 197
    sget-object v0, Lorg/spongycastle/asn1/b;->b:Lorg/spongycastle/asn1/b;

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/b;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/b;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method a(Lorg/spongycastle/asn1/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/b;->e:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/o;->a(I[B)V

    .line 160
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lorg/spongycastle/asn1/q;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    instance-of v1, p1, Lorg/spongycastle/asn1/b;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/spongycastle/asn1/b;->e:[B

    aget-byte v1, v1, v0

    check-cast p1, Lorg/spongycastle/asn1/b;

    iget-object v2, p1, Lorg/spongycastle/asn1/b;->e:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 170
    :cond_0
    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/spongycastle/asn1/b;->e:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/b;->e:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "FALSE"

    goto :goto_0
.end method
