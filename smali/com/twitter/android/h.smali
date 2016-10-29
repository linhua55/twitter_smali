.class public Lcom/twitter/android/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/database/Cursor;


# static fields
.field private static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/database/Cursor;

.field private final f:J

.field private final g:Lcbv;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/database/Cursor;

.field private k:Landroid/database/Cursor;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 68
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/h;->a:Lcom/twitter/util/serialization/ah;

    .line 71
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Integer;

    const/16 v2, 0xe

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 71
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/h;->b:Ljava/util/List;

    .line 73
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Integer;

    const/16 v2, 0xd

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 73
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/h;->c:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/database/Cursor;JLandroid/content/Context;Lcbv;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/h;->h:Ljava/util/Map;

    .line 93
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/h;->i:Ljava/util/Map;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/h;->m:I

    .line 122
    iput-object p1, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    .line 123
    iput-wide p2, p0, Lcom/twitter/android/h;->f:J

    .line 124
    iput-object p4, p0, Lcom/twitter/android/h;->d:Landroid/content/Context;

    .line 125
    iput-object p5, p0, Lcom/twitter/android/h;->g:Lcbv;

    .line 126
    invoke-virtual {p0}, Lcom/twitter/android/h;->a()V

    .line 127
    return-void
.end method

.method private static a(JLandroid/database/Cursor;Ljava/util/Map;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-object p2

    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Set;J)Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lcom/twitter/library/provider/dg;->c:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status_groups_owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "status_groups_g_status_id"

    .line 251
    invoke-static {v2, p1}, Lcom/twitter/android/h;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lcom/twitter/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    sget-object v2, Lcho;->b:[Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/twitter/android/h;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/twitter/model/core/TwitterUser;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    const/4 v1, 0x2

    .line 143
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    const/4 v1, 0x4

    .line 144
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    const/4 v1, 0x3

    .line 145
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    const/4 v1, 0x5

    .line 146
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    const/16 v1, 0x8

    .line 147
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->e(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v1

    const/16 v0, 0x9

    .line 149
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v2, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    move-result-object v0

    const/4 v1, 0x7

    .line 151
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 142
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;II)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "II)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/twitter/android/h;->a([BI)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private static a([BI)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p0}, Lcom/twitter/android/h;->c([B)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lczz;->a(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    const-string/jumbo v0, "notifications_tab_mentions_cleanup_4976"

    invoke-static {v0}, Lcom/twitter/config/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delete_mentions"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status_groups_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    sget-object v2, Lcom/twitter/android/h;->b:Ljava/util/List;

    .line 241
    invoke-static {v1, v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/h;->c([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    .line 273
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 274
    invoke-virtual {v0, p0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :try_start_0
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 261
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :cond_1
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 265
    throw v0
.end method

.method private static a(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method private static a(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    const/16 v0, 0x19

    invoke-static {p0, v0}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    invoke-static {p1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 344
    :cond_0
    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_1

    .line 346
    invoke-static {p1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 348
    :cond_1
    const/16 v0, 0x1a

    invoke-static {p0, v0}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_2

    .line 350
    invoke-static {p2, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 352
    :cond_2
    return-void
.end method

.method static a(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Lcbv;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcbv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p0}, Lcom/twitter/android/s;->b(Landroid/database/Cursor;)I

    move-result v0

    .line 329
    iget-boolean v1, p3, Lcbv;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 330
    invoke-static {p0, p1, p2}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;)V

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-boolean v1, p3, Lcbv;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 332
    invoke-static {p0, p2}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;Ljava/util/Set;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/android/h;->c(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Lcbv;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Set;J)Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Lcom/twitter/library/provider/dk;->a:Landroid/net/Uri;

    .line 284
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 283
    invoke-static {v0, p2, p3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user_groups_owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "users_user_id"

    .line 286
    invoke-static {v2, p1}, Lcom/twitter/android/h;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "user_groups_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    sget-object v3, Lcom/twitter/android/h;->c:Ljava/util/List;

    .line 287
    invoke-static {v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    sget-object v2, Lchs;->c:[Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/twitter/android/h;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Lcbv;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcbv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 300
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v1

    .line 301
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v2

    .line 302
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 305
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 306
    invoke-static {p0, v1, v2, p3}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Lcbv;)V

    .line 307
    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 308
    invoke-interface {v2, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 309
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 312
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    :cond_3
    new-instance v1, Lbiv;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Failed to find activity users or statuses"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "missingUserIds"

    .line 316
    invoke-virtual {v1, v2, p1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v1

    const-string/jumbo v2, "missingStatusIds"

    .line 317
    invoke-virtual {v1, v2, p2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lbix;->a(Lbiv;)V

    .line 319
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 321
    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/twitter/android/h;->k:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/twitter/android/h;->k:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_0
    iput-object v1, p0, Lcom/twitter/android/h;->k:Landroid/database/Cursor;

    .line 428
    iget-object v0, p0, Lcom/twitter/android/h;->j:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/twitter/android/h;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_1
    iput-object v1, p0, Lcom/twitter/android/h;->j:Landroid/database/Cursor;

    .line 432
    iget-object v0, p0, Lcom/twitter/android/h;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 433
    iget-object v0, p0, Lcom/twitter/android/h;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 434
    return-void
.end method

.method private static c([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    sget-object v0, Lcom/twitter/android/h;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static c(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Lcbv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcbv;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 361
    iget v0, p3, Lcbv;->c:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 362
    packed-switch v0, :pswitch_data_0

    .line 397
    :goto_0
    :pswitch_0
    return-void

    .line 365
    :pswitch_1
    iget v0, p3, Lcbv;->g:I

    invoke-static {p0, v0, v1}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 366
    iget v0, p3, Lcbv;->m:I

    .line 367
    invoke-static {p0, v0, v1}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;II)Ljava/lang/Iterable;

    move-result-object v0

    .line 366
    invoke-static {p2, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 373
    :pswitch_2
    iget v0, p3, Lcbv;->g:I

    invoke-static {p0, v0, v2}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 374
    iget v0, p3, Lcbv;->j:I

    invoke-static {p0, v0, v2}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 387
    :pswitch_3
    iget v0, p3, Lcbv;->g:I

    invoke-static {p0, v0, v2}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 388
    iget v0, p3, Lcbv;->j:I

    invoke-static {p0, v0, v1}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 168
    iget-object v0, p0, Lcom/twitter/android/h;->k:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 170
    iget-object v0, p0, Lcom/twitter/android/h;->k:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/twitter/android/h;->i:Ljava/util/Map;

    invoke-static {v4, v5, v0, v3}, Lcom/twitter/android/h;->a(JLandroid/database/Cursor;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_1

    .line 172
    invoke-static {v0}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public a([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/twitter/android/h;->a([BI)Ljava/lang/Iterable;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/twitter/android/h;->b()V

    .line 403
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    .line 404
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/twitter/android/h;->g:Lcbv;

    invoke-static {v2, v0, v1, v3}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Lcbv;)V

    .line 409
    iget-object v2, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/h;->d:Landroid/content/Context;

    iget-wide v4, p0, Lcom/twitter/android/h;->f:J

    invoke-static {v2, v0, v4, v5}, Lcom/twitter/android/h;->b(Landroid/content/Context;Ljava/util/Set;J)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/h;->k:Landroid/database/Cursor;

    .line 413
    iget-object v2, p0, Lcom/twitter/android/h;->k:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/twitter/android/h;->i:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;Ljava/util/Map;I)V

    .line 415
    iget-object v2, p0, Lcom/twitter/android/h;->d:Landroid/content/Context;

    iget-wide v4, p0, Lcom/twitter/android/h;->f:J

    invoke-static {v2, v1, v4, v5}, Lcom/twitter/android/h;->a(Landroid/content/Context;Ljava/util/Set;J)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/h;->j:Landroid/database/Cursor;

    .line 416
    iget-object v2, p0, Lcom/twitter/android/h;->j:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/twitter/android/h;->h:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;Ljava/util/Map;I)V

    .line 418
    iget-object v2, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/twitter/android/h;->i:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/twitter/android/h;->a(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/h;->h:Ljava/util/Map;

    .line 419
    invoke-static {v1, v3}, Lcom/twitter/android/h;->a(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/h;->g:Lcbv;

    .line 418
    invoke-static {v2, v0, v1, v3}, Lcom/twitter/android/h;->b(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Lcbv;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/h;->l:Ljava/util/List;

    .line 420
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->moveToPosition(I)Z

    .line 421
    return-void
.end method

.method public b(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 192
    iget-object v0, p0, Lcom/twitter/android/h;->j:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 193
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 194
    iget-object v0, p0, Lcom/twitter/android/h;->j:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/twitter/android/h;->h:Ljava/util/Map;

    invoke-static {v4, v5, v0, v3}, Lcom/twitter/android/h;->a(JLandroid/database/Cursor;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    .line 196
    sget-object v3, Lcgi;->a:Lcgi;

    invoke-virtual {v3, v0}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public b([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/twitter/android/h;->a([BI)Ljava/lang/Iterable;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/twitter/android/h;->b()V

    .line 629
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 630
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 562
    return-void
.end method

.method public deactivate()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 608
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/twitter/android/h;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/twitter/android/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 441
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/twitter/android/h;->m:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/twitter/android/h;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/h;->m:I

    invoke-virtual {p0}, Lcom/twitter/android/h;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/twitter/android/h;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/h;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/twitter/android/h;->m:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/h;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/twitter/android/h;->getCount()I

    move-result v0

    .line 510
    iget v1, p0, Lcom/twitter/android/h;->m:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/twitter/android/h;->m:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/twitter/android/h;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/twitter/android/h;->m:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/twitter/android/h;->getCount()I

    move-result v1

    .line 459
    if-lt p1, v1, :cond_1

    .line 460
    iput v1, p0, Lcom/twitter/android/h;->m:I

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    if-gez p1, :cond_2

    .line 466
    const/4 v1, -0x1

    iput v1, p0, Lcom/twitter/android/h;->m:I

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/h;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/twitter/android/h;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 475
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    iput p1, p0, Lcom/twitter/android/h;->m:I

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/twitter/android/h;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 640
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 650
    return-void
.end method

.method public requery()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/twitter/android/h;->a()V

    .line 623
    :cond_0
    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 678
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 661
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 645
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/twitter/android/h;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 655
    return-void
.end method
