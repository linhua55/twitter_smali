.class public final Ldgc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldgi;


# static fields
.field private static final a:Lokio/ByteString;

.field private static final b:Lokio/ByteString;

.field private static final c:Lokio/ByteString;

.field private static final d:Lokio/ByteString;

.field private static final e:Lokio/ByteString;

.field private static final f:Lokio/ByteString;

.field private static final g:Lokio/ByteString;

.field private static final h:Lokio/ByteString;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Lokhttp3/ao;

.field private final n:Lokhttp3/internal/connection/f;

.field private final o:Lokhttp3/internal/framed/d;

.field private p:Lokhttp3/internal/framed/t;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string/jumbo v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->a:Lokio/ByteString;

    .line 56
    const-string/jumbo v0, "host"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->b:Lokio/ByteString;

    .line 57
    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->c:Lokio/ByteString;

    .line 58
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->d:Lokio/ByteString;

    .line 59
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->e:Lokio/ByteString;

    .line 60
    const-string/jumbo v0, "te"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->f:Lokio/ByteString;

    .line 61
    const-string/jumbo v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->g:Lokio/ByteString;

    .line 62
    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Ldgc;->h:Lokio/ByteString;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Ldgc;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Ldgc;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Ldgc;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Ldgc;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Ldgc;->e:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/framed/y;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/framed/y;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/framed/y;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/y;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/y;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/y;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Ldey;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldgc;->i:Ljava/util/List;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Ldgc;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Ldgc;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Ldgc;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Ldgc;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Ldgc;->e:Lokio/ByteString;

    aput-object v1, v0, v7

    invoke-static {v0}, Ldey;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldgc;->j:Ljava/util/List;

    .line 85
    const/16 v0, 0xe

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Ldgc;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Ldgc;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Ldgc;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Ldgc;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Ldgc;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ldgc;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldgc;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldgc;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/y;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/y;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/y;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/framed/y;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/internal/framed/y;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lokhttp3/internal/framed/y;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Ldey;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldgc;->k:Ljava/util/List;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Ldgc;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Ldgc;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Ldgc;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Ldgc;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Ldgc;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ldgc;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldgc;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldgc;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Ldey;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldgc;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ao;Lokhttp3/internal/connection/f;Lokhttp3/internal/framed/d;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Ldgc;->m:Lokhttp3/ao;

    .line 118
    iput-object p2, p0, Ldgc;->n:Lokhttp3/internal/connection/f;

    .line 119
    iput-object p3, p0, Ldgc;->o:Lokhttp3/internal/framed/d;

    .line 120
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lokhttp3/az;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/y;",
            ">;)",
            "Lokhttp3/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    const-string/jumbo v1, "HTTP/1.1"

    .line 216
    new-instance v6, Lokhttp3/aj;

    invoke-direct {v6}, Lokhttp3/aj;-><init>()V

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_5

    .line 218
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/y;

    iget-object v8, v0, Lokhttp3/internal/framed/y;->h:Lokio/ByteString;

    .line 220
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/y;

    iget-object v0, v0, Lokhttp3/internal/framed/y;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    .line 221
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 222
    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 223
    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 224
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 226
    :cond_0
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v10, Lokhttp3/internal/framed/y;->a:Lokio/ByteString;

    invoke-virtual {v8, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 234
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 235
    goto :goto_1

    .line 229
    :cond_1
    sget-object v10, Lokhttp3/internal/framed/y;->g:Lokio/ByteString;

    invoke-virtual {v8, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    .line 230
    goto :goto_2

    .line 231
    :cond_2
    sget-object v10, Ldgc;->j:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 232
    sget-object v10, Ldew;->a:Ldew;

    invoke-virtual {v8}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11, v1}, Ldew;->a(Lokhttp3/aj;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v2

    goto :goto_2

    .line 217
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    .line 237
    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldgn;->a(Ljava/lang/String;)Ldgn;

    move-result-object v0

    .line 240
    new-instance v1, Lokhttp3/az;

    invoke-direct {v1}, Lokhttp3/az;-><init>()V

    sget-object v2, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    .line 241
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(Lokhttp3/Protocol;)Lokhttp3/az;

    move-result-object v1

    iget v2, v0, Ldgn;->b:I

    .line 242
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(I)Lokhttp3/az;

    move-result-object v1

    iget-object v0, v0, Ldgn;->c:Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v0}, Lokhttp3/az;->a(Ljava/lang/String;)Lokhttp3/az;

    move-result-object v0

    .line 244
    invoke-virtual {v6}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/ah;)Lokhttp3/az;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method static synthetic a(Ldgc;)Lokhttp3/internal/connection/f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ldgc;->n:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public static b(Lokhttp3/at;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/at;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/y;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Lokhttp3/at;->c()Lokhttp3/ah;

    move-result-object v4

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lokhttp3/ah;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    new-instance v0, Lokhttp3/internal/framed/y;

    sget-object v1, Lokhttp3/internal/framed/y;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lokhttp3/internal/framed/y;

    sget-object v1, Lokhttp3/internal/framed/y;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3}, Ldgl;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lokhttp3/internal/framed/y;

    sget-object v1, Lokhttp3/internal/framed/y;->g:Lokio/ByteString;

    const-string/jumbo v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lokhttp3/internal/framed/y;

    sget-object v1, Lokhttp3/internal/framed/y;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3, v2}, Ldey;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lokhttp3/internal/framed/y;

    sget-object v1, Lokhttp3/internal/framed/y;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 164
    invoke-virtual {v4}, Lokhttp3/ah;->a()I

    move-result v7

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_4

    .line 166
    invoke-virtual {v4, v3}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v8

    .line 169
    sget-object v0, Ldgc;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v4, v3}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lokhttp3/internal/framed/y;

    invoke-direct {v0, v8, v9}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 179
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 180
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/y;

    iget-object v0, v0, Lokhttp3/internal/framed/y;->h:Lokio/ByteString;

    invoke-virtual {v0, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/y;

    iget-object v0, v0, Lokhttp3/internal/framed/y;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ldgc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v9, Lokhttp3/internal/framed/y;

    invoke-direct {v9, v8, v0}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 187
    :cond_4
    return-object v5
.end method

.method public static b(Ljava/util/List;)Lokhttp3/az;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/y;",
            ">;)",
            "Lokhttp3/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 251
    new-instance v3, Lokhttp3/aj;

    invoke-direct {v3}, Lokhttp3/aj;-><init>()V

    .line 252
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 253
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/y;

    iget-object v5, v0, Lokhttp3/internal/framed/y;->h:Lokio/ByteString;

    .line 255
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/y;

    iget-object v0, v0, Lokhttp3/internal/framed/y;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    .line 256
    sget-object v6, Lokhttp3/internal/framed/y;->a:Lokio/ByteString;

    invoke-virtual {v5, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 258
    :cond_0
    sget-object v6, Ldgc;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 259
    sget-object v6, Ldew;->a:Ldew;

    invoke-virtual {v5}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5, v0}, Ldew;->a(Lokhttp3/aj;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 262
    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HTTP/1.1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldgn;->a(Ljava/lang/String;)Ldgn;

    move-result-object v0

    .line 265
    new-instance v1, Lokhttp3/az;

    invoke-direct {v1}, Lokhttp3/az;-><init>()V

    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 266
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(Lokhttp3/Protocol;)Lokhttp3/az;

    move-result-object v1

    iget v2, v0, Ldgn;->b:I

    .line 267
    invoke-virtual {v1, v2}, Lokhttp3/az;->a(I)Lokhttp3/az;

    move-result-object v1

    iget-object v0, v0, Ldgn;->c:Ljava/lang/String;

    .line 268
    invoke-virtual {v1, v0}, Lokhttp3/az;->a(Ljava/lang/String;)Lokhttp3/az;

    move-result-object v0

    .line 269
    invoke-virtual {v3}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/ah;)Lokhttp3/az;

    move-result-object v0

    .line 265
    return-object v0
.end method

.method public static c(Lokhttp3/at;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/at;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/y;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lokhttp3/at;->c()Lokhttp3/ah;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lokhttp3/ah;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    new-instance v3, Lokhttp3/internal/framed/y;

    sget-object v4, Lokhttp3/internal/framed/y;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v3, Lokhttp3/internal/framed/y;

    sget-object v4, Lokhttp3/internal/framed/y;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-static {v5}, Ldgl;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v3, Lokhttp3/internal/framed/y;

    sget-object v4, Lokhttp3/internal/framed/y;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-static {v5, v0}, Ldey;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Lokhttp3/internal/framed/y;

    sget-object v4, Lokhttp3/internal/framed/y;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v1}, Lokhttp3/ah;->a()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    .line 204
    invoke-virtual {v1, v0}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    .line 205
    sget-object v5, Ldgc;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    new-instance v5, Lokhttp3/internal/framed/y;

    invoke-virtual {v1, v0}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lokhttp3/internal/framed/y;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lokhttp3/ax;)Lokhttp3/ba;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ldgd;

    iget-object v1, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    invoke-virtual {v1}, Lokhttp3/internal/framed/t;->g()Lokio/ab;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldgd;-><init>(Ldgc;Lokio/ab;)V

    .line 274
    new-instance v1, Ldgk;

    invoke-virtual {p1}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v2

    invoke-static {v0}, Lokio/q;->a(Lokio/ab;)Lokio/j;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ldgk;-><init>(Lokhttp3/ah;Lokio/j;)V

    return-object v1
.end method

.method public a(Lokhttp3/at;J)Lokio/aa;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->h()Lokio/aa;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/t;->b(Lokhttp3/internal/framed/ErrorCode;)V

    .line 279
    :cond_0
    return-void
.end method

.method public a(Lokhttp3/at;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lokhttp3/at;->f()Z

    move-result v1

    .line 130
    iget-object v0, p0, Ldgc;->o:Lokhttp3/internal/framed/d;

    invoke-virtual {v0}, Lokhttp3/internal/framed/d;->a()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v2, :cond_1

    .line 131
    invoke-static {p1}, Ldgc;->c(Lokhttp3/at;)Ljava/util/List;

    move-result-object v0

    .line 133
    :goto_1
    const/4 v2, 0x1

    .line 134
    iget-object v3, p0, Ldgc;->o:Lokhttp3/internal/framed/d;

    invoke-virtual {v3, v0, v1, v2}, Lokhttp3/internal/framed/d;->a(Ljava/util/List;ZZ)Lokhttp3/internal/framed/t;

    move-result-object v0

    iput-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    .line 135
    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->e()Lokio/ac;

    move-result-object v0

    iget-object v1, p0, Ldgc;->m:Lokhttp3/ao;

    invoke-virtual {v1}, Lokhttp3/ao;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/ac;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/ac;

    .line 136
    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->f()Lokio/ac;

    move-result-object v0

    iget-object v1, p0, Ldgc;->m:Lokhttp3/ao;

    invoke-virtual {v1}, Lokhttp3/ao;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/ac;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/ac;

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p1}, Ldgc;->b(Lokhttp3/at;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public b()Lokhttp3/az;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Ldgc;->o:Lokhttp3/internal/framed/d;

    invoke-virtual {v0}, Lokhttp3/internal/framed/d;->a()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ldgc;->b(Ljava/util/List;)Lokhttp3/az;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    .line 146
    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ldgc;->a(Ljava/util/List;)Lokhttp3/az;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ldgc;->p:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->h()Lokio/aa;

    move-result-object v0

    invoke-interface {v0}, Lokio/aa;->close()V

    .line 141
    return-void
.end method