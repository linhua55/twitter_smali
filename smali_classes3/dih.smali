.class public abstract Ldih;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/crypto/e;


# instance fields
.field private final a:[B

.field private b:I

.field private c:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ldih;->a:[B

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Ldih;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Ldih;->a:[B

    iget v1, p0, Ldih;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldih;->b:I

    aput-byte p1, v0, v1

    .line 59
    iget v0, p0, Ldih;->b:I

    iget-object v1, p0, Ldih;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Ldih;->a:[B

    invoke-virtual {p0, v0, v3}, Ldih;->b([BI)V

    .line 62
    iput v3, p0, Ldih;->b:I

    .line 65
    :cond_0
    iget-wide v0, p0, Ldih;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldih;->c:J

    .line 66
    return-void
.end method

.method protected abstract a(J)V
.end method

.method public a([BII)V
    .locals 4

    .prologue
    .line 76
    :goto_0
    iget v0, p0, Ldih;->b:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 78
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ldih;->a(B)V

    .line 80
    add-int/lit8 p2, p2, 0x1

    .line 81
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 87
    :cond_0
    :goto_1
    iget-object v0, p0, Ldih;->a:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 89
    invoke-virtual {p0, p1, p2}, Ldih;->b([BI)V

    .line 91
    iget-object v0, p0, Ldih;->a:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 92
    iget-object v0, p0, Ldih;->a:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 93
    iget-wide v0, p0, Ldih;->c:J

    iget-object v2, p0, Ldih;->a:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldih;->c:J

    goto :goto_1

    .line 99
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 101
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ldih;->a(B)V

    .line 103
    add-int/lit8 p2, p2, 0x1

    .line 104
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 106
    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ldih;->c:J

    .line 131
    iput v1, p0, Ldih;->b:I

    move v0, v1

    .line 132
    :goto_0
    iget-object v2, p0, Ldih;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v2, p0, Ldih;->a:[B

    aput-byte v1, v2, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method protected abstract b([BI)V
.end method

.method public c()V
    .locals 3

    .prologue
    .line 110
    iget-wide v0, p0, Ldih;->c:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 115
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Ldih;->a(B)V

    .line 117
    :goto_0
    iget v2, p0, Ldih;->b:I

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ldih;->a(B)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, v0, v1}, Ldih;->a(J)V

    .line 124
    invoke-virtual {p0}, Ldih;->d()V

    .line 125
    return-void
.end method

.method protected abstract d()V
.end method
