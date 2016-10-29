.class public Lccf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lccc;
.implements Lcdc;


# static fields
.field private static b:Lccf;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lccc;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private volatile f:Landroid/location/Location;

.field private final g:Landroid/location/LocationManager;

.field private final h:Lcdb;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "GeoModule must be initialized for construction of LocationProducer"

    invoke-static {v0, v3}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccf;->c:Landroid/content/Context;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccf;->d:Ljava/util/Set;

    .line 144
    new-instance v0, Lccj;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lccj;-><init>(Lccf;Landroid/os/Looper;)V

    iput-object v0, p0, Lccf;->e:Landroid/os/Handler;

    .line 145
    iget-object v0, p0, Lccf;->c:Landroid/content/Context;

    const-string/jumbo v3, "location"

    .line 146
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lccf;->g:Landroid/location/LocationManager;

    .line 148
    iput-boolean v2, p0, Lccf;->i:Z

    .line 150
    iput-boolean v2, p0, Lccf;->j:Z

    .line 151
    iput-boolean v2, p0, Lccf;->k:Z

    .line 152
    iput-boolean v2, p0, Lccf;->l:Z

    .line 153
    const-wide/16 v4, 0x2710

    iput-wide v4, p0, Lccf;->m:J

    .line 154
    const-wide/32 v4, 0x493e0

    iput-wide v4, p0, Lccf;->n:J

    .line 155
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lccf;->q:J

    .line 157
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "geo_location_producer_file"

    .line 158
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v3, "geo_location_producer_mock_enabled"

    .line 159
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lccf;->r:Z

    .line 161
    invoke-static {}, Lcom/twitter/library/geo/provider/param/a;->a()Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    .line 162
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/geo/provider/param/c;->a(J)Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 163
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/geo/provider/param/c;->b(J)Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/geo/provider/param/LocationPriority;->a:Lcom/twitter/library/geo/provider/param/LocationPriority;

    .line 164
    invoke-virtual {v0, v1}, Lcom/twitter/library/geo/provider/param/c;->a(Lcom/twitter/library/geo/provider/param/LocationPriority;)Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    const/16 v1, 0xa

    .line 165
    invoke-virtual {v0, v1}, Lcom/twitter/library/geo/provider/param/c;->a(I)Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/twitter/library/geo/provider/param/c;->a()Lcom/twitter/library/geo/provider/param/a;

    move-result-object v0

    .line 167
    new-instance v1, Lcdb;

    iget-object v2, p0, Lccf;->c:Landroid/content/Context;

    iget-boolean v3, p0, Lccf;->r:Z

    invoke-direct {v1, v2, v0, p0, v3}, Lcdb;-><init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Lccd;Z)V

    iput-object v1, p0, Lccf;->h:Lcdb;

    .line 168
    iget-object v0, p0, Lccf;->h:Lcdb;

    invoke-virtual {v0, p0}, Lcdb;->a(Lcdc;)V

    .line 171
    new-instance v0, Lccg;

    invoke-direct {v0, p0}, Lccg;-><init>(Lccf;)V

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 208
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 210
    return-void

    :cond_0
    move v0, v2

    .line 138
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 159
    goto :goto_1
.end method

.method static synthetic a(Lccf;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lccf;
    .locals 2

    .prologue
    .line 226
    const-class v1, Lccf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lccf;->b:Lccf;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lccf;

    invoke-direct {v0, p0}, Lccf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccf;->b:Lccf;

    .line 229
    :cond_0
    sget-object v0, Lccf;->b:Lccf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ZII)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, 0x3e8

    .line 698
    if-eq p2, v6, :cond_0

    .line 699
    int-to-long v0, p2

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lccf;->m:J

    .line 700
    int-to-long v0, p2

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 703
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lccf;->m:J

    .line 707
    :cond_0
    if-eq p3, v6, :cond_1

    .line 708
    int-to-long v0, p3

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lccf;->n:J

    .line 709
    int-to-long v0, p3

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 710
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lccf;->n:J

    .line 714
    :cond_1
    iget-boolean v0, p0, Lccf;->i:Z

    if-eq v0, p1, :cond_2

    .line 715
    iput-boolean p1, p0, Lccf;->i:Z

    .line 716
    invoke-direct {p0}, Lccf;->l()V

    .line 718
    :cond_2
    return-void
.end method

.method private c(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.twitter.library.geo.LOCATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.twitter.library.geo.LOCATION_EXTRA"

    .line 313
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lccf;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method private d(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 683
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    invoke-interface {v0}, Lcca;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccf;->f:Landroid/location/Location;

    .line 684
    invoke-virtual {p0, p1, v0}, Lccf;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iput-object p1, p0, Lccf;->f:Landroid/location/Location;

    .line 687
    :cond_0
    return-void
.end method

.method private declared-synchronized j()V
    .locals 4

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    iget-object v0, p0, Lccf;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc;

    .line 640
    iget-object v2, p0, Lccf;->f:Landroid/location/Location;

    invoke-interface {v0, v2}, Lccc;->b(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 642
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccf;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 643
    invoke-virtual {p0}, Lccf;->f()V

    .line 644
    iget-boolean v0, p0, Lccf;->j:Z

    if-eqz v0, :cond_1

    .line 645
    invoke-direct {p0}, Lccf;->k()J

    move-result-wide v0

    .line 646
    iget-object v2, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private k()J
    .locals 8

    .prologue
    .line 656
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 657
    iget-wide v2, p0, Lccf;->p:J

    sub-long v2, v0, v2

    .line 659
    iget-wide v4, p0, Lccf;->n:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 660
    const-wide/16 v0, 0x0

    .line 672
    :goto_0
    return-wide v0

    .line 662
    :cond_0
    iget-wide v4, p0, Lccf;->q:J

    .line 663
    iget-wide v6, p0, Lccf;->o:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    iget-wide v6, p0, Lccf;->p:J

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 667
    iget-wide v0, p0, Lccf;->n:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 671
    :cond_1
    sub-long/2addr v0, v4

    .line 672
    iget-wide v2, p0, Lccf;->n:J

    iget-wide v4, p0, Lccf;->n:J

    rem-long/2addr v0, v4

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 726
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    invoke-interface {v0}, Lcca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccf;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 728
    :goto_0
    iget-boolean v1, p0, Lccf;->j:Z

    if-eq v0, v1, :cond_0

    .line 729
    iput-boolean v0, p0, Lccf;->j:Z

    .line 730
    if-nez v0, :cond_2

    .line 731
    invoke-direct {p0}, Lccf;->m()V

    .line 732
    invoke-virtual {p0}, Lccf;->g()V

    .line 737
    :cond_0
    :goto_1
    return-void

    .line 726
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 733
    :cond_2
    iget-boolean v0, p0, Lccf;->l:Z

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lccf;->e()V

    goto :goto_1
.end method

.method private m()V
    .locals 2

    .prologue
    .line 745
    invoke-direct {p0}, Lccf;->j()V

    .line 746
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    invoke-interface {v0}, Lcca;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccf;->h:Lcdb;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lccf;->h:Lcdb;

    invoke-virtual {v0}, Lcdb;->f()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lccf;->d(Landroid/location/Location;)V

    .line 250
    iget-object v0, p0, Lccf;->f:Landroid/location/Location;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized a(JLccc;)V
    .locals 3

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lccf;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccf;->h:Lcdb;

    if-eqz v0, :cond_0

    .line 555
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lccf;->o:J

    .line 556
    iget-object v0, p0, Lccf;->h:Lcdb;

    invoke-virtual {v0}, Lcdb;->g()V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccf;->k:Z

    .line 560
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 561
    if-nez p3, :cond_2

    .line 562
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 564
    :cond_2
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 565
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 566
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Lccf;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lccf;->d(Landroid/location/Location;)V

    .line 289
    iget-object v0, p0, Lccf;->f:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccf;->f:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lccf;->q:J

    .line 296
    iget-object v0, p0, Lccf;->d:Ljava/util/Set;

    iget-object v1, p0, Lccf;->d:Ljava/util/Set;

    .line 297
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lccc;

    .line 296
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccc;

    .line 298
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 299
    if-eqz v3, :cond_1

    iget-object v4, p0, Lccf;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    invoke-interface {v3, p1}, Lccc;->a(Landroid/location/Location;)V

    .line 298
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    :cond_2
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1, v0}, Lccf;->a(Landroid/location/Location;F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    invoke-direct {p0}, Lccf;->j()V

    .line 308
    :cond_3
    invoke-direct {p0, p1}, Lccf;->c(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 578
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 597
    :goto_0
    return-void

    .line 580
    :pswitch_0
    iget-wide v0, p0, Lccf;->m:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccf;->a(JLccc;)V

    goto :goto_0

    .line 584
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc;

    invoke-virtual {p0, v0}, Lccf;->b(Lccc;)V

    goto :goto_0

    .line 590
    :pswitch_2
    invoke-direct {p0}, Lccf;->m()V

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lccc;)V
    .locals 2

    .prologue
    .line 367
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lccf;->a(Lccc;J)V

    .line 368
    return-void
.end method

.method public declared-synchronized a(Lccc;J)V
    .locals 6

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lccf;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 388
    :cond_1
    :try_start_1
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    invoke-interface {v0}, Lcca;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lccf;->a()Landroid/location/Location;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_2

    .line 392
    iget-object v1, p0, Lccf;->e:Landroid/os/Handler;

    new-instance v2, Lcci;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v3, v4}, Lcci;-><init>(Lccc;Landroid/location/Location;ILccg;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    :cond_2
    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lccf;->a(Landroid/location/Location;J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 397
    iget-object v0, p0, Lccf;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    invoke-virtual {p0, p2, p3, p1}, Lccf;->a(JLccc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :cond_3
    :try_start_2
    iget-object v1, p0, Lccf;->e:Landroid/os/Handler;

    new-instance v2, Lcci;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v3, v4}, Lcci;-><init>(Lccc;Landroid/location/Location;ILccg;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized a(Z)V
    .locals 3

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lccf;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 468
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lccf;->r:Z

    .line 461
    iget-object v0, p0, Lccf;->c:Landroid/content/Context;

    const-string/jumbo v1, "geo_location_producer_file"

    const/4 v2, 0x0

    .line 462
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "geo_location_producer_mock_enabled"

    .line 464
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 466
    invoke-virtual {p0}, Lccf;->g()V

    .line 467
    iget-object v0, p0, Lccf;->h:Lcdb;

    iget-boolean v1, p0, Lccf;->r:Z

    invoke-virtual {v0, v1}, Lcdb;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ZZII)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lccf;->h:Lcdb;

    invoke-virtual {v0, p2}, Lcdb;->b(Z)V

    .line 443
    invoke-direct {p0, p1, p3, p4}, Lccf;->a(ZII)V

    .line 445
    return-void
.end method

.method protected a(Landroid/location/Location;F)Z
    .locals 1

    .prologue
    .line 532
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    .line 533
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/location/Location;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 516
    if-nez p1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 520
    :cond_1
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 521
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    cmp-long v1, v2, p2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 479
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 505
    :cond_1
    :goto_0
    return v0

    .line 481
    :cond_2
    if-eqz p2, :cond_1

    .line 486
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 487
    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    move v3, v0

    .line 488
    :goto_1
    const-wide/16 v6, -0x7530

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    move v2, v0

    .line 491
    :goto_2
    if-nez v3, :cond_1

    .line 493
    if-eqz v2, :cond_5

    move v0, v1

    .line 494
    goto :goto_0

    :cond_3
    move v3, v1

    .line 487
    goto :goto_1

    :cond_4
    move v2, v1

    .line 488
    goto :goto_2

    .line 499
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_6

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1, v2}, Lccf;->a(Landroid/location/Location;F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lccf;->a()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcce;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public declared-synchronized b(Lccc;)V
    .locals 5

    .prologue
    .line 414
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 415
    :try_start_0
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    new-instance v1, Lcci;

    iget-object v2, p0, Lccf;->f:Landroid/location/Location;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcci;-><init>(Lccc;Landroid/location/Location;ILccg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lccf;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lccf;->f()V

    .line 423
    iget-boolean v0, p0, Lccf;->j:Z

    if-eqz v0, :cond_1

    .line 424
    invoke-direct {p0}, Lccf;->k()J

    move-result-wide v0

    .line 425
    iget-object v2, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_1
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lccf;->g:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccf;->l:Z

    .line 330
    iget-boolean v0, p0, Lccf;->j:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 334
    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccf;->l:Z

    .line 345
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lccf;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    :cond_0
    iget-boolean v0, p0, Lccf;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccf;->k:Z

    if-nez v0, :cond_1

    .line 350
    invoke-direct {p0}, Lccf;->k()J

    move-result-wide v0

    .line 351
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 353
    iget-wide v0, p0, Lccf;->m:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccf;->a(JLccc;)V

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v2, p0, Lccf;->e:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    iget-object v2, p0, Lccf;->e:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected declared-synchronized f()V
    .locals 2

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lccf;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccf;->h:Lcdb;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lccf;->h:Lcdb;

    invoke-virtual {v0}, Lcdb;->h()V

    .line 542
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lccf;->p:J

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccf;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_0
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()V
    .locals 2

    .prologue
    .line 605
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lccf;->f:Landroid/location/Location;

    .line 606
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lccf;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Lccf;->m()V

    .line 623
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lccf;->l:Z

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lccf;->e()V

    .line 630
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    const-string/jumbo v0, "location"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lccf;->l()V

    .line 217
    :cond_0
    return-void
.end method
