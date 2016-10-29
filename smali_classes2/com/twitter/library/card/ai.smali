.class public Lcom/twitter/library/card/ai;
.super Lcom/twitter/library/card/al;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/card/al",
        "<",
        "Lcom/twitter/library/card/ak;",
        "Lclj;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/library/card/ai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/library/card/ai;->c:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/library/card/al;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/library/card/ai;->d:Landroid/content/Context;

    .line 29
    iput-wide p2, p0, Lcom/twitter/library/card/ai;->e:J

    .line 30
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;J)Lcom/twitter/library/card/ai;
    .locals 5

    .prologue
    .line 40
    const-class v1, Lcom/twitter/library/card/ai;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/card/ai;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/ai;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/twitter/library/card/ai;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/card/ai;-><init>(Landroid/content/Context;J)V

    .line 43
    sget-object v2, Lcom/twitter/library/card/ai;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(JJLclj;Lcom/twitter/library/card/ak;)V
    .locals 9

    .prologue
    .line 61
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/card/ai;->a(JLjava/lang/Object;Ljava/lang/Object;Z)V

    .line 63
    const-string/jumbo v0, "cards_kernel_persist_card_state"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/twitter/library/card/ai;->d:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/library/card/ai;->e:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v3

    .line 66
    new-instance v0, Lcom/twitter/util/concurrent/c;

    invoke-direct {v0}, Lcom/twitter/util/concurrent/c;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 67
    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/c;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/c;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/card/aj;

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/twitter/library/card/aj;-><init>(Lcom/twitter/library/card/ai;Lcom/twitter/library/provider/dm;JJLclj;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/c;->a(Ljava/util/concurrent/Callable;)Lcom/twitter/util/concurrent/c;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/twitter/util/concurrent/c;->a()Lcom/twitter/util/concurrent/j;

    .line 76
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/library/card/ak;JLclj;)V
    .locals 0

    .prologue
    .line 80
    invoke-interface {p1, p2, p3, p4}, Lcom/twitter/library/card/ak;->a(JLclj;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/twitter/library/card/ak;

    check-cast p4, Lclj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/library/card/ai;->a(Lcom/twitter/library/card/ak;JLclj;)V

    return-void
.end method
