.class public Lcom/twitter/android/dm/av;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Lcom/twitter/model/dms/cu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Lcom/twitter/model/dms/cu;)V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/twitter/android/dm/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/dm/av;->a:Ljava/lang/ref/WeakReference;

    .line 26
    iput-object p3, p0, Lcom/twitter/android/dm/av;->b:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/twitter/android/dm/av;->c:Lcom/twitter/model/dms/cu;

    .line 28
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/dm/av;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/twitter/android/dm/av;->h()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dm/av;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/dm/av;->c:Lcom/twitter/model/dms/cu;

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Lcom/twitter/model/dms/cu;)V

    .line 38
    :cond_0
    return-void
.end method
