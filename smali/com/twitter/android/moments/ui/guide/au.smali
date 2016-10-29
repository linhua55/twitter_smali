.class public Lcom/twitter/android/moments/ui/guide/au;
.super Lcom/twitter/app/common/list/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/x",
        "<",
        "Lcom/twitter/android/moments/ui/guide/au;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/twitter/app/common/list/x;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/moments/ui/guide/at;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Lcom/twitter/app/common/list/w;)V

    .line 85
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/moments/ui/guide/at;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/twitter/android/moments/ui/guide/at;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/au;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/guide/at;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(I)Lcom/twitter/android/moments/ui/guide/au;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/au;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "guide_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    return-object p0
.end method

.method public a(J)Lcom/twitter/android/moments/ui/guide/au;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/au;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "add_to_moment_tweet_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/android/moments/ui/guide/au;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/au;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "guide_category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/au;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "guide_category_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/moments/ui/guide/au;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/au;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "show_category_pills"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    return-object p0
.end method

.method public b(J)Lcom/twitter/android/moments/ui/guide/au;
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/au;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "moments_owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    return-object p0
.end method

.method public synthetic b()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/au;->a()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/au;->a()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(J)Lcom/twitter/app/common/list/x;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/guide/au;->b(J)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v0

    return-object v0
.end method
