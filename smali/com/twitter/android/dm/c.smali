.class public abstract Lcom/twitter/android/dm/c;
.super Lcom/twitter/app/common/list/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lcom/twitter/android/dm/c",
        "<TU;>;>",
        "Lcom/twitter/app/common/list/x",
        "<TU;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/twitter/app/common/list/x;-><init>()V

    .line 78
    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;I)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/dm/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/dm/b;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/twitter/android/dm/b;

    iget-object v1, p0, Lcom/twitter/android/dm/c;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/android/dm/b;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/dm/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/dm/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "initial_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/c;

    return-object v0
.end method

.method public a(Z)Lcom/twitter/android/dm/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/dm/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "is_keyboard_open"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/c;

    return-object v0
.end method

.method public b(Z)Lcom/twitter/android/dm/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/dm/c;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "is_from_external_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/c;

    return-object v0
.end method

.method public synthetic b()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/twitter/android/dm/c;->a()Lcom/twitter/android/dm/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/twitter/android/dm/c;->a()Lcom/twitter/android/dm/b;

    move-result-object v0

    return-object v0
.end method
