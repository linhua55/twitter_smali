.class Lbsc;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbsb;


# direct methods
.method constructor <init>(Lbsb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lbsc;->b:Lbsb;

    iput-object p2, p0, Lbsc;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 340
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lbsc;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 3

    .prologue
    .line 343
    sget-object v1, Lbsb;->a:Ljava/util/Map;

    monitor-enter v1

    .line 344
    :try_start_0
    sget-object v0, Lbsb;->a:Ljava/util/Map;

    iget-object v2, p0, Lbsc;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/b;

    .line 348
    iget-object v2, p0, Lbsc;->b:Lbsb;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
