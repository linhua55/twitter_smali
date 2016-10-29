.class public final Ldgg;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 232
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 238
    :cond_0
    return p1

    .line 232
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 219
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 224
    :cond_0
    return p1

    .line 219
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 50
    if-nez p0, :cond_0

    .line 54
    :goto_0
    return-wide v0

    .line 52
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Lokhttp3/ah;)J
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldgg;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lokhttp3/ax;)J
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v0

    invoke-static {v0}, Ldgg;->a(Lokhttp3/ah;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lokhttp3/ah;Lokhttp3/ah;)Lokhttp3/ah;
    .locals 6

    .prologue
    .line 125
    invoke-static {p1}, Ldgg;->c(Lokhttp3/ah;)Ljava/util/Set;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/aj;

    invoke-direct {v0}, Lokhttp3/aj;-><init>()V

    invoke-virtual {v0}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v2, Lokhttp3/aj;

    invoke-direct {v2}, Lokhttp3/aj;-><init>()V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/ah;->a()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    .line 130
    invoke-virtual {p0, v0}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    invoke-virtual {p0, v0}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lokhttp3/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aj;

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v2}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lokhttp3/ab;Lokhttp3/HttpUrl;Lokhttp3/ah;)V
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lokhttp3/ab;->a:Lokhttp3/ab;

    if-ne p0, v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {p1, p2}, Lokhttp3/aa;->a(Lokhttp3/HttpUrl;Lokhttp3/ah;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-interface {p0, p1, v0}, Lokhttp3/ab;->a(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Lokhttp3/ax;Lokhttp3/ah;Lokhttp3/at;)Z
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Ldgg;->e(Lokhttp3/ax;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v0}, Lokhttp3/ah;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lokhttp3/at;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Ldey;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 247
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 248
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 249
    const p1, 0x7fffffff

    .line 256
    :goto_0
    return p1

    .line 250
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 251
    const/4 p1, 0x0

    goto :goto_0

    .line 253
    :cond_1
    long-to-int p1, v0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Lokhttp3/ah;)Z
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Ldgg;->c(Lokhttp3/ah;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lokhttp3/ax;)Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v0

    invoke-static {v0}, Ldgg;->b(Lokhttp3/ah;)Z

    move-result v0

    return v0
.end method

.method public static c(Lokhttp3/ah;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ah;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lokhttp3/ah;->a()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    .line 94
    const-string/jumbo v3, "Vary"

    invoke-virtual {p0, v1}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0, v1}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 100
    :cond_2
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    :cond_3
    return-object v0
.end method

.method public static c(Lokhttp3/ax;)Lokhttp3/ah;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lokhttp3/ax;->i()Lokhttp3/ax;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/at;->c()Lokhttp3/ah;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Ldgg;->a(Lokhttp3/ah;Lokhttp3/ah;)Lokhttp3/ah;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lokhttp3/ax;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lokhttp3/ax;->c()I

    move-result v2

    .line 198
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 201
    goto :goto_0

    .line 206
    :cond_3
    invoke-static {p0}, Ldgg;->a(Lokhttp3/ax;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string/jumbo v2, "chunked"

    const-string/jumbo v3, "Transfer-Encoding"

    .line 207
    invoke-virtual {p0, v3}, Lokhttp3/ax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method private static e(Lokhttp3/ax;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ax;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v0

    invoke-static {v0}, Ldgg;->c(Lokhttp3/ah;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
