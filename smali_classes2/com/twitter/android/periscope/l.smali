.class Lcom/twitter/android/periscope/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/api/ApiEventHandler;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Ltv/periscope/android/data/b;

.field private final d:Ltv/periscope/android/session/a;

.field private final e:Lde/greenrobot/event/c;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/twitter/library/client/bd;Ltv/periscope/android/data/b;Ltv/periscope/android/session/a;Lde/greenrobot/event/c;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/android/periscope/l;->a:Landroid/os/Handler;

    .line 36
    iput-object p2, p0, Lcom/twitter/android/periscope/l;->b:Lcom/twitter/library/client/bd;

    .line 37
    iput-object p3, p0, Lcom/twitter/android/periscope/l;->c:Ltv/periscope/android/data/b;

    .line 38
    iput-object p4, p0, Lcom/twitter/android/periscope/l;->d:Ltv/periscope/android/session/a;

    .line 39
    iput-object p5, p0, Lcom/twitter/android/periscope/l;->e:Lde/greenrobot/event/c;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/periscope/l;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/periscope/l;->b:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method private a(Ltv/periscope/android/event/ApiEvent;)V
    .locals 4

    .prologue
    .line 60
    sget-object v0, Lcom/twitter/android/periscope/n;->a:[I

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->a:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-virtual {v1}, Ltv/periscope/android/event/ApiEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/periscope/l;->e:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/model/o;

    .line 68
    iget-object v2, p0, Lcom/twitter/android/periscope/l;->c:Ltv/periscope/android/data/b;

    invoke-virtual {v0}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;Ltv/periscope/model/o;)V

    goto :goto_1

    .line 75
    :pswitch_1
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/android/api/TwitterTokenLoginResponse;

    .line 77
    iget-object v1, p0, Lcom/twitter/android/periscope/l;->d:Ltv/periscope/android/session/a;

    iget-object v0, v0, Ltv/periscope/android/api/TwitterTokenLoginResponse;->cookie:Ljava/lang/String;

    sget-object v2, Ltv/periscope/android/session/Session$Type;->b:Ltv/periscope/android/session/Session$Type;

    invoke-interface {v1, v0, v2}, Ltv/periscope/android/session/a;->a(Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onEventMainThread(Ltv/periscope/android/event/ApiEvent;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/twitter/android/periscope/l;->a(Ltv/periscope/android/event/ApiEvent;)V

    .line 45
    return-void
.end method

.method public onEventMainThread(Ltv/periscope/android/event/RetryEvent;)V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/periscope/l;->a:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/android/periscope/m;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/periscope/m;-><init>(Lcom/twitter/android/periscope/l;Ltv/periscope/android/event/RetryEvent;)V

    iget-object v2, p1, Ltv/periscope/android/event/RetryEvent;->a:Ltv/periscope/android/api/ApiRunnable;

    .line 56
    invoke-virtual {v2}, Ltv/periscope/android/api/ApiRunnable;->currentBackoff()J

    move-result-wide v2

    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method
