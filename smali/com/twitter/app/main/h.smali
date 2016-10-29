.class final Lcom/twitter/app/main/h;
.super Landroid/os/Handler;
.source "Twttr"


# static fields
.field public static final a:[I


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1833
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/app/main/h;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1837
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1838
    iput-object p1, p0, Lcom/twitter/app/main/h;->b:Landroid/content/Context;

    .line 1839
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/app/main/q;IIJ)V
    .locals 8

    .prologue
    .line 1909
    new-instance v1, Lcom/twitter/library/api/search/q;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/api/search/q;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;IIJ)V

    .line 1911
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 1912
    return-void
.end method


# virtual methods
.method public varargs a(JILcom/twitter/app/main/q;[I)V
    .locals 5

    .prologue
    .line 1898
    array-length v1, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p5, v0

    .line 1899
    invoke-virtual {p0, v2}, Lcom/twitter/app/main/h;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1900
    invoke-virtual {p0, v2}, Lcom/twitter/app/main/h;->removeMessages(I)V

    .line 1902
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2, p3, v3, p4}, Lcom/twitter/app/main/h;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/twitter/app/main/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1905
    :cond_1
    return-void
.end method

.method public varargs a(JLcom/twitter/app/main/q;[I)V
    .locals 7

    .prologue
    .line 1893
    const/4 v4, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/app/main/h;->a(JILcom/twitter/app/main/q;[I)V

    .line 1894
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1843
    iget-object v1, p0, Lcom/twitter/app/main/h;->b:Landroid/content/Context;

    .line 1844
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 1846
    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 1847
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1889
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1849
    :pswitch_1
    const-string/jumbo v3, "home_timeline_prefetch_bulkusers"

    invoke-static {v3, v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1850
    new-instance v3, Lbtw;

    invoke-direct {v3, v1, v2, v5}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    const/16 v4, 0x190

    .line 1852
    invoke-virtual {v3, v4}, Lbtw;->a(I)Lbtw;

    move-result-object v3

    .line 1850
    invoke-virtual {v0, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1853
    new-instance v0, Lcom/twitter/library/client/l;

    .line 1854
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v4, "hometab"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 1855
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "ft"

    .line 1856
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 1857
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0

    .line 1862
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/twitter/app/main/q;

    .line 1863
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1864
    const/4 v5, -0x1

    if-le v0, v5, :cond_1

    int-to-long v6, v0

    .line 1866
    :goto_1
    invoke-static {}, Lcom/twitter/android/client/bu;->a()I

    move-result v5

    move-object v0, p0

    .line 1867
    invoke-direct/range {v0 .. v7}, Lcom/twitter/app/main/h;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/app/main/q;IIJ)V

    goto :goto_0

    .line 1865
    :cond_1
    invoke-static {}, Lcom/twitter/android/client/bu;->b()J

    move-result-wide v6

    goto :goto_1

    .line 1872
    :pswitch_3
    const-string/jumbo v3, "saved_searches_ttl_hours"

    invoke-static {v3, v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    .line 1874
    new-instance v3, Lcom/twitter/library/api/search/c;

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/twitter/library/api/search/c;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    goto :goto_0

    .line 1878
    :pswitch_4
    invoke-static {v1, v2, v5}, Lbrg;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)Lbrb;

    move-result-object v1

    .line 1880
    if-eqz v1, :cond_0

    .line 1881
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    goto :goto_0

    .line 1847
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
