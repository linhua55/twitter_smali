.class public Lcom/twitter/android/periscope/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# instance fields
.field private final a:Lcom/twitter/library/client/bk;

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Ltv/periscope/android/api/ApiManager;

.field private final d:Lde/greenrobot/event/c;

.field private final e:Z

.field private f:Lcom/twitter/android/periscope/r;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Z)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p3, p0, Lcom/twitter/android/periscope/p;->c:Ltv/periscope/android/api/ApiManager;

    .line 52
    iput-object p4, p0, Lcom/twitter/android/periscope/p;->d:Lde/greenrobot/event/c;

    .line 53
    iput-object p2, p0, Lcom/twitter/android/periscope/p;->a:Lcom/twitter/library/client/bk;

    .line 54
    iput-object p1, p0, Lcom/twitter/android/periscope/p;->b:Lcom/twitter/library/client/bd;

    .line 55
    iput-boolean p5, p0, Lcom/twitter/android/periscope/p;->e:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/client/bd;Ltv/periscope/android/library/d;)V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-interface {p2}, Ltv/periscope/android/library/d;->f()Ltv/periscope/android/api/ApiManager;

    move-result-object v3

    invoke-interface {p2}, Ltv/periscope/android/library/d;->e()Lde/greenrobot/event/c;

    move-result-object v4

    .line 45
    invoke-static {}, Lcom/twitter/android/periscope/p;->a()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/periscope/p;-><init>(Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Z)V

    .line 46
    return-void
.end method

.method private a(Lcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/twitter/android/periscope/p;->c()V

    .line 117
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->f:Lcom/twitter/android/periscope/r;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->f:Lcom/twitter/android/periscope/r;

    invoke-interface {v0, p1}, Lcom/twitter/android/periscope/r;->a(Lcom/twitter/library/service/x;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "android_periscope_authentication_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->d:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->d:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->d:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->d:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/android/periscope/r;)V
    .locals 4

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/twitter/android/periscope/p;->e:Z

    if-nez v0, :cond_0

    .line 84
    invoke-interface {p2}, Lcom/twitter/android/periscope/r;->aZ_()V

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/periscope/p;->b()V

    .line 88
    iput-object p2, p0, Lcom/twitter/android/periscope/p;->f:Lcom/twitter/android/periscope/r;

    .line 89
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->b:Lcom/twitter/library/client/bd;

    new-instance v1, Lcom/twitter/library/api/periscope/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/periscope/p;->a:Lcom/twitter/library/client/bk;

    .line 90
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/twitter/library/api/periscope/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    goto :goto_0
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 104
    check-cast v0, Lcom/twitter/library/api/periscope/a;

    invoke-virtual {v0}, Lcom/twitter/library/api/periscope/a;->b()Lcsw;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcsw;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/twitter/android/periscope/p;->c:Ltv/periscope/android/api/ApiManager;

    iget-object v0, v0, Lcsw;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ltv/periscope/android/api/ApiManager;->loginTwitterToken(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p2}, Lcom/twitter/android/periscope/p;->a(Lcom/twitter/library/service/x;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0, p2}, Lcom/twitter/android/periscope/p;->a(Lcom/twitter/library/service/x;)V

    goto :goto_0
.end method

.method public onEventMainThread(Ltv/periscope/android/event/ApiEvent;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/twitter/android/periscope/p;->c()V

    .line 125
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->f:Lcom/twitter/android/periscope/r;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/twitter/android/periscope/q;->a:[I

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->a:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-virtual {v1}, Ltv/periscope/android/event/ApiEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/android/api/TwitterTokenLoginResponse;

    .line 132
    iget-object v1, p0, Lcom/twitter/android/periscope/p;->f:Lcom/twitter/android/periscope/r;

    iget-object v0, v0, Ltv/periscope/android/api/TwitterTokenLoginResponse;->user:Ltv/periscope/android/api/PsUser;

    invoke-interface {v1, v0}, Lcom/twitter/android/periscope/r;->a(Ltv/periscope/android/api/PsUser;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/periscope/p;->f:Lcom/twitter/android/periscope/r;

    invoke-interface {v0}, Lcom/twitter/android/periscope/r;->aZ_()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
