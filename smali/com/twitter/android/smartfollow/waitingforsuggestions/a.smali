.class public Lcom/twitter/android/smartfollow/waitingforsuggestions/a;
.super Lcom/twitter/android/smartfollow/waitingforsuggestions/d;
.source "Twttr"


# instance fields
.field private final q:Laov;

.field private r:Lrx/ap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/twitter/app/common/util/StateSaver;Laov;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/d;",
            ">;",
            "Laov;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;-><init>(Landroid/os/Handler;Lcom/twitter/app/common/util/StateSaver;)V

    .line 35
    iput-object p3, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->q:Laov;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/smartfollow/waitingforsuggestions/a;)Lcom/twitter/android/smartfollow/SmartFollowFlowData;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->r:Lrx/ap;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->r:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->r:Lrx/ap;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->q:Laov;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 86
    :cond_1
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->r:Lrx/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->r:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "presenter_waiting_for_people_discovery"

    return-object v0
.end method

.method protected v()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->q:Laov;

    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->g()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Laov;->a(Ljava/util/Map;)Lrx/o;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/smartfollow/waitingforsuggestions/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/smartfollow/waitingforsuggestions/b;-><init>(Lcom/twitter/android/smartfollow/waitingforsuggestions/a;)V

    .line 54
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->r:Lrx/ap;

    .line 70
    return-void
.end method

.method protected w()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/waitingforsuggestions/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c()Z

    move-result v0

    return v0
.end method
