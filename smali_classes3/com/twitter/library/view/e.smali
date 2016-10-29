.class final Lcom/twitter/library/view/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "hashflags_settings_enabled"

    .line 71
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 70
    invoke-static {v0}, Lcom/twitter/library/view/d;->a(Z)Z

    .line 72
    const-string/jumbo v0, "hashflags_settings_location_prefix"

    .line 73
    invoke-static {v0}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/twitter/library/view/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "hashflags_settings_version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/library/view/d;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Lcom/twitter/library/view/d;->d()V

    .line 78
    invoke-static {}, Lcom/twitter/library/view/d;->e()V

    .line 79
    invoke-static {v0}, Lcom/twitter/library/view/d;->a(I)I

    .line 81
    :cond_1
    return-void
.end method
