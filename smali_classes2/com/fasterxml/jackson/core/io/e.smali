.class public final Lcom/fasterxml/jackson/core/io/e;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/e;->a:Ljava/lang/String;

    .line 19
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 282
    const-string/jumbo v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-wide/16 v0, 0x1

    .line 285
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;D)D
    .locals 3

    .prologue
    .line 265
    if-nez p0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-wide p1

    .line 266
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 268
    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/e;->a(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    if-nez p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return p1

    .line 192
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 194
    if-eqz v2, :cond_0

    .line 199
    if-ge v0, v2, :cond_6

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 201
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    .line 202
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 208
    :goto_1
    if-ge v0, v1, :cond_5

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 211
    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    const/16 v4, 0x30

    if-ge v3, v4, :cond_4

    .line 213
    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/fasterxml/jackson/core/io/e;->a(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    .line 204
    :cond_3
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_6

    move v0, v1

    move v1, v2

    move-object v2, v3

    .line 205
    goto :goto_1

    .line 208
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_5
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static a([CII)I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 30
    aget-char v0, p0, p1

    add-int/lit8 v0, v0, -0x30

    .line 32
    if-le p2, v3, :cond_1

    .line 33
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 35
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 36
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p1, v1, 0x1

    aget-char v1, p0, p1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 37
    add-int/lit8 p2, p2, -0x4

    .line 38
    if-le p2, v3, :cond_1

    .line 39
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 40
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 41
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 42
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 47
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 48
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    .line 49
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    aget-char v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 50
    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    .line 51
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    aget-char v1, p0, v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 227
    if-nez p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-wide p1

    .line 230
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 232
    if-eqz v2, :cond_0

    .line 237
    if-ge v0, v2, :cond_6

    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 239
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    .line 240
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 246
    :goto_1
    if-ge v0, v1, :cond_5

    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 249
    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    const/16 v4, 0x30

    if-ge v3, v4, :cond_4

    .line 251
    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/fasterxml/jackson/core/io/e;->a(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    double-to-long p1, v0

    goto :goto_0

    .line 242
    :cond_3
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_6

    move v0, v1

    move v1, v2

    move-object v2, v3

    .line 243
    goto :goto_1

    .line 246
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_5
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide p1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static a([C)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/core/io/e;->c([CII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static a([CIIZ)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    if-eqz p3, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/io/e;->a:Ljava/lang/String;

    .line 149
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 150
    if-ge p2, v4, :cond_2

    .line 159
    :cond_0
    :goto_1
    return v1

    .line 148
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/io/e;->b:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_2
    if-le p2, v4, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v3, v2

    .line 153
    :goto_2
    if-ge v3, v4, :cond_0

    .line 154
    add-int v5, p1, v3

    aget-char v5, p0, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    .line 155
    if-eqz v5, :cond_5

    .line 156
    if-gez v5, :cond_4

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    .line 153
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static b([CII)J
    .locals 6

    .prologue
    .line 118
    add-int/lit8 v0, p2, -0x9

    .line 119
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/e;->a([CII)I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    .line 120
    add-int/2addr v0, p1

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/core/io/e;->a([CII)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 290
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/e;->c(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    .prologue
    .line 305
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" can not be represented as BigDecimal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c([CII)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 300
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/e;->c(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method
