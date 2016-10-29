.class Laww;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lawv;


# direct methods
.method constructor <init>(Lawv;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Laww;->a:Lawv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 205
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Laww;->a:Lawv;

    invoke-static {v0}, Lawv;->a(Lawv;)Lcom/twitter/android/widget/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Laww;->a:Lawv;

    invoke-static {v0}, Lawv;->a(Lawv;)Lcom/twitter/android/widget/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->c()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Laww;->a:Lawv;

    invoke-static {v0}, Lawv;->b(Lawv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Laww;->a:Lawv;

    invoke-static {v0}, Lawv;->a(Lawv;)Lcom/twitter/android/widget/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/widget/ar;->b()V

    .line 211
    iget-object v0, p0, Laww;->a:Lawv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lawv;->a(Lawv;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Laww;->a(Ljava/lang/Boolean;)V

    return-void
.end method
