.class public Lcom/twitter/android/loggedoutpush/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/loggedoutpush/f;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/android/loggedoutpush/g;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/loggedoutpush/d;Z)Z
    .locals 4

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/twitter/android/loggedoutpush/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/twitter/android/loggedoutpush/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/platform/OemIntentReceiver;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "opened"

    .line 31
    :goto_0
    const-string/jumbo v1, "app_install_logged_state"

    invoke-interface {p1, v1, v0}, Lcom/twitter/android/loggedoutpush/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    :cond_0
    new-instance v0, Lbur;

    iget-object v1, p0, Lcom/twitter/android/loggedoutpush/g;->a:Landroid/content/Context;

    new-instance v2, Lcom/twitter/library/service/ab;

    .line 35
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct {v0, v1, v2}, Lbur;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    const/16 v1, 0x10

    .line 36
    invoke-virtual {v0, v1}, Lbur;->a(I)Lbur;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/loggedoutpush/g;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbur;->b(Ljava/lang/String;)Lbur;

    move-result-object v0

    .line 38
    invoke-interface {p1}, Lcom/twitter/android/loggedoutpush/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbur;->d(Ljava/lang/String;)Lbur;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lcom/twitter/android/loggedoutpush/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbur;->a(Ljava/lang/String;)Lbur;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/loggedoutpush/g;->a:Landroid/content/Context;

    .line 40
    invoke-static {v1}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbur;->c(Ljava/lang/String;)Lbur;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string/jumbo v0, "delete"

    .line 41
    :goto_1
    invoke-virtual {v1, v0}, Lbur;->e(Ljava/lang/String;)Lbur;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lbur;->a()Lbup;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lbup;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/twitter/internal/network/k;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 28
    :cond_1
    const-string/jumbo v0, "oem"

    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo v0, "create"

    goto :goto_1

    .line 46
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
