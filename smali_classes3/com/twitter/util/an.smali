.class Lcom/twitter/util/an;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Locale;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/twitter/util/an;->a:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/util/am;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/twitter/util/an;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/res/Resources;I)Ljava/text/DateFormat;
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/util/an;->b:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/util/an;->b:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v0, v1, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/twitter/util/an;->b:Ljava/util/Locale;

    .line 305
    iget-object v0, p0, Lcom/twitter/util/an;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/twitter/util/an;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 309
    if-nez v0, :cond_2

    .line 311
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 313
    iget-object v1, p0, Lcom/twitter/util/an;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_2
    monitor-exit p0

    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/util/ah;->time_of_day_format:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/util/an;->a(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/util/ah;->date_format_long:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/util/an;->a(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/util/ah;->date_format_short:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/util/an;->a(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/util/ah;->date_format_long_accessible:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/util/an;->a(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/util/ah;->date_format_short_accessible:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/util/an;->a(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
