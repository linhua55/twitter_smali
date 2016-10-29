.class Lcom/twitter/library/provider/au;
.super Lbam;
.source "Twttr"


# instance fields
.field private final b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/app/common/account/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I


# direct methods
.method constructor <init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;Landroid/util/LongSparseArray;Ljava/util/Map;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/n;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/app/common/account/a;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lbam;-><init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    iput-object p3, p0, Lcom/twitter/library/provider/au;->b:Landroid/util/LongSparseArray;

    .line 77
    iput-object p4, p0, Lcom/twitter/library/provider/au;->c:Ljava/util/Map;

    .line 78
    iput-object p5, p0, Lcom/twitter/library/provider/au;->d:Landroid/content/Context;

    .line 79
    invoke-static {p5}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/provider/au;->e:Z

    .line 80
    iput-boolean v1, p0, Lcom/twitter/library/provider/au;->f:Z

    .line 81
    iput-boolean v1, p0, Lcom/twitter/library/provider/au;->g:Z

    .line 82
    iput-boolean v1, p0, Lcom/twitter/library/provider/au;->h:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/provider/au;->i:Z

    .line 84
    iput-boolean v1, p0, Lcom/twitter/library/provider/au;->l:Z

    .line 85
    iput-boolean v1, p0, Lcom/twitter/library/provider/au;->m:Z

    .line 86
    iput v1, p0, Lcom/twitter/library/provider/au;->n:I

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/provider/au;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/twitter/library/provider/au;->n:I

    return p1
.end method

.method static synthetic a(Lcom/twitter/library/provider/au;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/library/provider/au;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 531
    const-string/jumbo v1, "user_values"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v5

    const-string/jumbo v0, "value"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 532
    if-eqz v4, :cond_3

    move-wide v0, v10

    move-object v2, v3

    .line 536
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 537
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 538
    const-string/jumbo v5, "current_account"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 540
    :cond_1
    const-string/jumbo v5, "current_user_id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 545
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 547
    const-string/jumbo v3, "DROP TABLE IF EXISTS user_values;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 549
    if-eqz v2, :cond_3

    cmp-long v3, v0, v10

    if-eqz v3, :cond_3

    .line 550
    iget-object v3, p0, Lcom/twitter/library/provider/au;->d:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Lcom/twitter/library/provider/fm;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 553
    :cond_3
    return-void

    .line 545
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic a(Lcom/twitter/library/provider/au;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/twitter/library/provider/au;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/library/provider/au;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/twitter/library/provider/au;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/twitter/library/provider/au;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/library/provider/au;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->g:Z

    return p1
.end method

.method static synthetic e(Lcom/twitter/library/provider/au;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/twitter/library/provider/au;->n:I

    return v0
.end method

.method static synthetic e(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->h:Z

    return p1
.end method

.method static synthetic f(Lcom/twitter/library/provider/au;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->m:Z

    return p1
.end method

.method static synthetic g(Lcom/twitter/library/provider/au;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->i:Z

    return p1
.end method

.method static synthetic h(Lcom/twitter/library/provider/au;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/twitter/library/provider/au;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/twitter/library/provider/au;->l:Z

    return p1
.end method

.method static synthetic i(Lcom/twitter/library/provider/au;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->l:Z

    return v0
.end method

.method static synthetic j(Lcom/twitter/library/provider/au;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->f:Z

    return v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x22

    return v0
.end method

.method protected a(Lcom/twitter/database/model/n;)Lcom/twitter/database/model/l;
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lbam;->a(Lcom/twitter/database/model/n;)Lcom/twitter/database/model/l;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/database/model/l;)V

    .line 98
    iget-boolean v1, p0, Lcom/twitter/library/provider/au;->j:Z

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/twitter/library/provider/au;->d:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/provider/au;->a(Landroid/content/Context;Lcom/twitter/database/model/l;)V

    .line 101
    :cond_0
    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/twitter/database/model/l;)V
    .locals 6

    .prologue
    .line 616
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 617
    const-class v0, Lbdn;

    invoke-interface {p2, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbdn;

    invoke-interface {v0}, Lbdn;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 618
    invoke-interface {v0}, Lcom/twitter/database/model/q;->c()Lcom/twitter/database/model/j;

    move-result-object v2

    .line 620
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v3, p0, Lcom/twitter/library/provider/au;->b:Landroid/util/LongSparseArray;

    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 623
    if-eqz v0, :cond_0

    .line 624
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    throw v0

    :cond_1
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    .line 630
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 632
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 633
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 634
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/platform/notifications/x;->a(J)V

    goto :goto_1

    .line 638
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;Z)V

    .line 640
    :cond_3
    return-void
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 607
    invoke-virtual {p0}, Lcom/twitter/library/provider/au;->c()Ljava/util/Collection;

    move-result-object v0

    .line 608
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 609
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 610
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    const-string/jumbo v3, "account_name=?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/database/model/l;)V
    .locals 8

    .prologue
    .line 556
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 559
    const-class v0, Lbdp;

    .line 560
    invoke-interface {p1, v0}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v2

    .line 561
    const-class v0, Lbdn;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbdn;

    .line 562
    invoke-interface {v0}, Lbdn;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Lcom/twitter/database/model/q;->c()Lcom/twitter/database/model/j;

    move-result-object v3

    .line 565
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->b()J

    move-result-wide v4

    .line 567
    iget-object v0, p0, Lcom/twitter/library/provider/au;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 568
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 569
    const-string/jumbo v0, "account_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 570
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    .line 569
    invoke-interface {v2, v0, v6}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    throw v0

    :cond_1
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    .line 577
    const-class v0, Lbbx;

    .line 578
    invoke-interface {p1, v0}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v2

    .line 579
    const-class v0, Lbbt;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbbt;

    .line 580
    invoke-interface {v0}, Lbbt;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 581
    invoke-interface {v0}, Lcom/twitter/database/model/q;->c()Lcom/twitter/database/model/j;

    move-result-object v3

    .line 583
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbbu;

    invoke-interface {v0}, Lbbu;->b()J

    move-result-wide v4

    .line 585
    iget-object v0, p0, Lcom/twitter/library/provider/au;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 586
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 587
    const-string/jumbo v0, "account_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 588
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    .line 587
    invoke-interface {v2, v0, v6}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 592
    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    throw v0

    :cond_3
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    .line 598
    iget-boolean v0, p0, Lcom/twitter/library/provider/au;->m:Z

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 599
    new-instance v0, Lbiv;

    invoke-direct {v0}, Lbiv;-><init>()V

    const-string/jumbo v2, "Num accounts missing: "

    .line 600
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "GlobalDatabaseHelper had missing accounts."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 599
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 603
    :cond_4
    return-void
.end method

.method protected b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lbao;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    new-instance v0, Lcom/twitter/library/provider/av;

    invoke-direct {v0, p0, v6}, Lcom/twitter/library/provider/av;-><init>(Lcom/twitter/library/provider/au;I)V

    const/16 v1, 0x20

    new-array v1, v1, [Lbao;

    new-instance v2, Lcom/twitter/library/provider/bf;

    invoke-direct {v2, p0, v9}, Lcom/twitter/library/provider/bf;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/twitter/library/provider/bg;

    invoke-direct {v2, p0, v4}, Lcom/twitter/library/provider/bg;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v2, v1, v8

    sget-object v2, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v2, v1, v6

    new-instance v2, Lcom/twitter/library/provider/bh;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/provider/bh;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v2, v1, v9

    sget-object v2, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v2, v1, v4

    const/4 v2, 0x5

    new-instance v3, Lcom/twitter/library/provider/bn;

    const/16 v4, 0x8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/twitter/library/provider/bi;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/bi;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/twitter/library/provider/bn;

    const/16 v4, 0xb

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/twitter/library/provider/bn;

    const/16 v4, 0xc

    new-array v5, v8, [I

    const/16 v6, 0x2000

    aput v6, v5, v7

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/twitter/library/provider/bj;

    const/16 v4, 0xd

    new-array v5, v9, [I

    fill-array-data v5, :array_2

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bj;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/twitter/library/provider/bk;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/bk;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/twitter/library/provider/bn;

    const/16 v4, 0x12

    new-array v5, v8, [I

    const/high16 v6, 0x40000

    aput v6, v5, v7

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/twitter/library/provider/bl;

    const/16 v4, 0x13

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/bl;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/twitter/library/provider/bn;

    const/16 v4, 0x14

    new-array v5, v8, [I

    const/high16 v6, 0x100000

    aput v6, v5, v7

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/twitter/library/provider/bn;

    const/16 v4, 0x15

    new-array v5, v8, [I

    const/high16 v6, 0x200000

    aput v6, v5, v7

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/twitter/library/provider/bn;

    const/16 v4, 0x16

    new-array v5, v8, [I

    const/high16 v6, 0x400000

    aput v6, v5, v7

    invoke-direct {v3, p0, v4, v5}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/twitter/library/provider/bm;

    const/16 v4, 0x17

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/bm;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/twitter/library/provider/aw;

    const/16 v4, 0x18

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/aw;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/twitter/library/provider/ax;

    const/16 v4, 0x19

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ax;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/twitter/library/provider/au;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/twitter/library/provider/ay;

    const/16 v4, 0x1c

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ay;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/twitter/library/provider/az;

    const/16 v4, 0x1d

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/az;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lcom/twitter/library/provider/ba;

    const/16 v4, 0x1e

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ba;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lcom/twitter/library/provider/bb;

    const/16 v4, 0x1f

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/bb;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/twitter/library/provider/bc;

    const/16 v4, 0x20

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/bc;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/twitter/library/provider/bd;

    const/16 v4, 0x21

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/bd;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/twitter/library/provider/be;

    const/16 v4, 0x22

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/be;-><init>(Lcom/twitter/library/provider/au;I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x20
        0x8000
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x1000
        0x800
    .end array-data

    :array_2
    .array-data 4
        0x4000
        0x8000
        0x10000
    .end array-data
.end method

.method protected c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/twitter/library/provider/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
