.class public final Lcom/fasterxml/jackson/core/util/b;
.super Ljava/io/OutputStream;
.source "Twttr"


# static fields
.field public static final a:[B


# instance fields
.field private final b:Lcom/fasterxml/jackson/core/util/a;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/fasterxml/jackson/core/util/b;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/b;-><init>(Lcom/fasterxml/jackson/core/util/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/a;)V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/b;-><init>(Lcom/fasterxml/jackson/core/util/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/a;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/util/LinkedList;

    .line 51
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/b;->b:Lcom/fasterxml/jackson/core/util/a;

    .line 52
    if-nez p1, :cond_0

    new-array v0, p2, [B

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/a;->a(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/high16 v0, 0x40000

    .line 225
    iget v1, p0, Lcom/fasterxml/jackson/core/util/b;->d:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/util/b;->d:I

    .line 233
    iget v1, p0, Lcom/fasterxml/jackson/core/util/b;->d:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 235
    if-le v1, v0, :cond_0

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 239
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    .line 241
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/fasterxml/jackson/core/util/b;->d:I

    .line 57
    iput v0, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    .line 59
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 62
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 78
    iget v0, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/b;->g()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 82
    return-void
.end method

.method public b()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 112
    iget v0, p0, Lcom/fasterxml/jackson/core/util/b;->d:I

    iget v1, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    add-int v4, v0, v1

    .line 114
    if-nez v4, :cond_0

    .line 115
    sget-object v0, Lcom/fasterxml/jackson/core/util/b;->a:[B

    .line 135
    :goto_0
    return-object v0

    .line 118
    :cond_0
    new-array v3, v4, [B

    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 122
    array-length v6, v0

    .line 123
    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    add-int v0, v1, v6

    move v1, v0

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v0, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    add-int/2addr v0, v1

    .line 128
    if-eq v0, v4, :cond_2

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Internal error: total len assumed to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", copied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/b;->a()V

    :cond_3
    move-object v0, v3

    .line 135
    goto :goto_0
.end method

.method public b(I)[B
    .locals 1

    .prologue
    .line 173
    iput p1, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    .line 174
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/b;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    return-void
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/b;->a()V

    .line 150
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/b;->g()V

    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    return-object v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    return v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public write(I)V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/b;->a(I)V

    .line 212
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/util/b;->write([BII)V

    .line 190
    return-void
.end method

.method public write([BII)V
    .locals 3

    .prologue
    .line 196
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    sub-int/2addr v0, v1

    .line 197
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 198
    if-lez v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/b;->e:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    add-int/2addr p2, v0

    .line 201
    iget v1, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/util/b;->f:I

    .line 202
    sub-int/2addr p3, v0

    .line 204
    :cond_0
    if-gtz p3, :cond_1

    .line 207
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/b;->g()V

    goto :goto_0
.end method
