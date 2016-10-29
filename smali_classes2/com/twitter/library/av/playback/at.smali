.class public Lcom/twitter/library/av/playback/at;
.super Lcom/twitter/util/i;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/i",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/twitter/model/av/AVMediaPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/library/av/playback/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/twitter/library/av/playback/as;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/as;)V
    .locals 1

    .prologue
    .line 1575
    invoke-direct {p0}, Lcom/twitter/util/i;-><init>()V

    .line 1576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/at;->a:Ljava/lang/ref/WeakReference;

    .line 1577
    iput-object p2, p0, Lcom/twitter/library/av/playback/at;->b:Lcom/twitter/library/av/playback/as;

    .line 1578
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/twitter/library/av/playback/at;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVPlayer;

    .line 1619
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twitter/library/av/playback/AVPlayer;->b(Lcom/twitter/library/av/playback/AVPlayer;)Lcom/twitter/library/av/playback/at;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1620
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/at;)Lcom/twitter/library/av/playback/at;

    .line 1622
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/twitter/library/av/playback/at;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVPlayer;

    .line 1583
    if-eqz v0, :cond_0

    .line 1584
    invoke-static {v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Landroid/content/Context;)Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 1586
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/av/playback/at;->b:Lcom/twitter/library/av/playback/as;

    .line 1629
    return-void
.end method

.method protected a(Lcom/twitter/model/av/AVMediaPlaylist;)V
    .locals 3

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/twitter/library/av/playback/at;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVPlayer;

    .line 1592
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 1593
    :goto_0
    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/AVPlayer;->b(Lcom/twitter/model/av/AVMediaPlaylist;)V

    .line 1595
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->T()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/model/av/AVMediaPlaylist;Landroid/content/res/Resources;)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/at;->b:Lcom/twitter/library/av/playback/as;

    if-eqz v0, :cond_1

    .line 1599
    if-eqz v1, :cond_3

    .line 1600
    iget-object v0, p0, Lcom/twitter/library/av/playback/at;->b:Lcom/twitter/library/av/playback/as;

    invoke-interface {v0}, Lcom/twitter/library/av/playback/as;->l()V

    .line 1606
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/twitter/library/av/playback/at;->b()V

    .line 1607
    return-void

    .line 1592
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1602
    :cond_3
    iget-object v1, p0, Lcom/twitter/library/av/playback/at;->b:Lcom/twitter/library/av/playback/as;

    if-eqz p1, :cond_4

    .line 1603
    invoke-virtual {p1}, Lcom/twitter/model/av/AVMediaPlaylist;->f()Lcom/twitter/model/av/c;

    move-result-object v0

    .line 1602
    :goto_2
    invoke-interface {v1, v0}, Lcom/twitter/library/av/playback/as;->a(Lcom/twitter/model/av/c;)V

    goto :goto_1

    .line 1603
    :cond_4
    sget-object v0, Lcom/twitter/model/av/c;->a:Lcom/twitter/model/av/c;

    goto :goto_2
.end method

.method protected b(Lcom/twitter/model/av/AVMediaPlaylist;)V
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/twitter/library/av/playback/at;->b:Lcom/twitter/library/av/playback/as;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/twitter/library/av/playback/at;->b:Lcom/twitter/library/av/playback/as;

    invoke-interface {v0}, Lcom/twitter/library/av/playback/as;->m()V

    .line 1614
    :cond_0
    invoke-direct {p0}, Lcom/twitter/library/av/playback/at;->b()V

    .line 1615
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1566
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/at;->a([Ljava/lang/Void;)Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1566
    check-cast p1, Lcom/twitter/model/av/AVMediaPlaylist;

    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/at;->b(Lcom/twitter/model/av/AVMediaPlaylist;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1566
    check-cast p1, Lcom/twitter/model/av/AVMediaPlaylist;

    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/at;->a(Lcom/twitter/model/av/AVMediaPlaylist;)V

    return-void
.end method
