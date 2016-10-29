.class abstract Lcom/twitter/library/util/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/util/l;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field protected final a:Landroid/content/Context;

.field private c:Lcai;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-string/jumbo v0, "mimetype"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "lookup"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "data3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "is_primary"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "data2"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "data3"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "is_primary"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "data1"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "data2"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "data3"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "data4"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/twitter/library/util/a;->b:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    mul-int/lit8 v0, p1, 0x32

    .line 355
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 356
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 219
    :try_start_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private f()Lcai;
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/library/util/a;->c:Lcai;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    .line 211
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcai;->a(Landroid/content/Context;J)Lcai;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/util/a;->c:Lcai;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/util/a;->c:Lcai;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/twitter/library/util/a;->b:[Ljava/lang/String;

    const-string/jumbo v3, "(mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\' OR mimetype=\'vnd.android.cursor.item/name\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :goto_1
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 92
    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/util/Map;)Lcaj;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcaj;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/twitter/library/util/a;->f()Lcai;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcai;->a()Ljava/util/Map;

    move-result-object v2

    .line 191
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 192
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v4

    .line 194
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 196
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Lcaj;

    invoke-virtual {v4}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, v3}, Lcaj;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v1
.end method

.method a(Lbmu;Lcom/twitter/library/util/p;)Lcom/twitter/library/service/aa;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, Lbmu;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 348
    invoke-interface {p2, p1, v0}, Lcom/twitter/library/util/p;->a(Lbmu;Lcom/twitter/library/service/aa;)V

    .line 349
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 102
    const-string/jumbo v0, "mimetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 103
    const-string/jumbo v0, "lookup"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 104
    const-string/jumbo v0, "data4"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 105
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 106
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 108
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 110
    const-string/jumbo v0, "mimetype"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    const-string/jumbo v0, "data2"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "data3"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "is_primary"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const-string/jumbo v0, "data1"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :sswitch_0
    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    .line 120
    :cond_2
    const-string/jumbo v0, "data1"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :pswitch_1
    const-string/jumbo v0, "data1"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "data2"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "data3"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "is_primary"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :pswitch_2
    const-string/jumbo v0, "data1"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "data2"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, "data3"

    invoke-static {p1, v8, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_2

    .line 151
    :cond_3
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v5

    .line 153
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 157
    new-instance v8, Lb;

    const v1, -0x3fffffff    # -2.0000002f

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v8, v1, v3}, Lb;-><init>(ILjava/lang/String;)V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 160
    const-string/jumbo v3, "mimetype"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    move v3, v4

    .line 164
    :goto_5
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 165
    if-nez v1, :cond_6

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 170
    goto :goto_4

    .line 171
    :cond_7
    if-eqz v1, :cond_4

    .line 175
    const-string/jumbo v0, "vnd.android.cursor.item/name"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v8, v0}, Lb;->a(Ljava/util/List;)Lb;

    move-result-object v1

    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    .line 176
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lb;->a(Ljava/util/List;Ld;)Lb;

    move-result-object v1

    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    .line 177
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lb;->b(Ljava/util/List;)Lb;

    .line 179
    invoke-virtual {v8}, Lb;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/twitter/library/util/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto/16 :goto_3

    .line 182
    :cond_8
    invoke-virtual {v5}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_9
    move v3, v1

    goto :goto_5

    .line 111
    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_1
        -0x4053a7f0 -> :sswitch_2
        0x28c7a9f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/util/Map;Lcom/twitter/library/util/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/twitter/library/util/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/twitter/library/util/a;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    return-void

    .line 284
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 285
    if-lez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 287
    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/twitter/library/network/at;->a(II)I

    move-result v3

    .line 288
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 289
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 290
    new-instance v0, Lbnf;

    iget-object v5, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    invoke-direct {v0, v5, v2}, Lbnf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v5, 0x1

    .line 292
    invoke-virtual {v0, v5}, Lbnf;->a(Z)Lbnf;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1}, Lbnf;->a(Ljava/util/Map;)Lbmv;

    move-result-object v0

    .line 294
    invoke-static {v4, v1}, Lcom/twitter/library/util/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbmv;->a(Ljava/util/List;)Lbmv;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v1}, Lbmv;->a(I)Lbmv;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v3}, Lbmv;->b(I)Lbmv;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lbmv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmu;

    .line 298
    invoke-virtual {p0, v0, p2}, Lcom/twitter/library/util/a;->a(Lbmu;Lcom/twitter/library/util/p;)Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v5, 0x1ad

    if-eq v0, v5, :cond_0

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/util/Map;Lcom/twitter/library/util/p;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/twitter/library/util/p;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 236
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/twitter/library/util/a;->d()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    :cond_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/util/a;->b()Z

    move-result v0

    goto :goto_0

    .line 242
    :cond_2
    if-eqz p3, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/twitter/library/util/a;->e()Z

    move-result v0

    .line 246
    if-eqz v0, :cond_0

    .line 252
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 253
    if-lez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 255
    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/twitter/library/network/at;->a(II)I

    move-result v3

    .line 256
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 257
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 258
    new-instance v0, Lbnd;

    iget-object v5, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    invoke-direct {v0, v5, v2}, Lbnd;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 260
    invoke-virtual {v0, p1}, Lbnd;->a(Ljava/util/Map;)Lbmv;

    move-result-object v0

    .line 261
    invoke-static {v4, v1}, Lcom/twitter/library/util/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbmv;->a(Ljava/util/List;)Lbmv;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v1}, Lbmv;->a(I)Lbmv;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Lbmv;->b(I)Lbmv;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lbmv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmu;

    .line 265
    invoke-virtual {p0, v0, p2}, Lcom/twitter/library/util/a;->a(Lbmu;Lcom/twitter/library/util/p;)Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v5, 0x1ad

    if-eq v0, v5, :cond_0

    .line 257
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Ljava/util/Set;Lcom/twitter/library/util/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/library/util/p;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x64

    .line 322
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 323
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 324
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {v6}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 326
    :goto_1
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->i()I

    move-result v3

    if-ge v3, v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 329
    :cond_0
    new-instance v3, Lbmy;

    iget-object v4, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    .line 330
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v0, v5}, Lbmy;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/List;Z)V

    .line 331
    invoke-virtual {v3}, Lbmy;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 332
    invoke-interface {p2, v3, v0}, Lcom/twitter/library/util/p;->a(Lbmy;Lcom/twitter/library/service/aa;)V

    goto :goto_0

    .line 334
    :cond_1
    return-void
.end method

.method public abstract b()Z
.end method

.method public c()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method d()Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcak;->c(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lbna;

    iget-object v1, p0, Lcom/twitter/library/util/a;->a:Landroid/content/Context;

    .line 339
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbna;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 340
    invoke-virtual {v0}, Lbna;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    return v0
.end method
