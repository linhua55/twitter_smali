.class public Lcom/twitter/android/card/CardActionHelper;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/card/d;

.field private final c:Lcom/twitter/android/card/i;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/card/d;Lcom/twitter/android/card/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/android/card/CardActionHelper;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    .line 30
    iput-object p3, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    .line 31
    iput-object p4, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/android/card/CardActionHelper$AppStatus;
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/twitter/android/card/CardActionHelper$AppStatus;->a:Lcom/twitter/android/card/CardActionHelper$AppStatus;

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    invoke-interface {v0, p1}, Lcom/twitter/android/card/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/twitter/android/card/CardActionHelper$AppStatus;->b:Lcom/twitter/android/card/CardActionHelper$AppStatus;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/twitter/android/card/CardActionHelper$AppStatus;->c:Lcom/twitter/android/card/CardActionHelper$AppStatus;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    invoke-interface {v0, p2, v1, v2}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 133
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    invoke-interface {v0, p1}, Lcom/twitter/android/card/d;->a(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "show"

    iget-object v2, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 120
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->g:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1, p2}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 121
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    invoke-interface {v1}, Lcom/twitter/android/card/i;->a()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 122
    return-void
.end method

.method public a(Lcom/twitter/library/card/e;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/twitter/library/card/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/card/e;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 54
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/library/card/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 3

    .prologue
    .line 97
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_link"

    iget-object v2, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 101
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1, p2}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 103
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    invoke-interface {v0}, Lcom/twitter/android/card/i;->b()Lcom/twitter/library/card/CardContext;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    invoke-interface {v2, p1}, Lcom/twitter/android/card/i;->b(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    invoke-interface {v2, v1, v0, p1}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/card/CardContext;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    invoke-interface {v1, p1, v0}, Lcom/twitter/android/card/d;->a(Ljava/lang/String;Lcom/twitter/library/card/CardContext;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0, p2}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;)Lcom/twitter/android/card/CardActionHelper$AppStatus;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/twitter/android/card/h;->a:[I

    invoke-virtual {v0}, Lcom/twitter/android/card/CardActionHelper$AppStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-virtual {p0, p3, p4}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_app"

    iget-object v2, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p4}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->q:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1, p4}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 64
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    invoke-interface {v0, p1, p2}, Lcom/twitter/android/card/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "install_app"

    iget-object v2, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p4}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 71
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->r:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1, p4}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 73
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->b:Lcom/twitter/android/card/d;

    invoke-interface {v0, p2}, Lcom/twitter/android/card/d;->b(Ljava/lang/String;)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_link"

    iget-object v2, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p4}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 79
    :cond_1
    const-string/jumbo v0, "post_installed_logging_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/twitter/android/card/CardActionHelper;->c:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/card/CardActionHelper;->d:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lcom/twitter/android/card/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 94
    return-void
.end method
